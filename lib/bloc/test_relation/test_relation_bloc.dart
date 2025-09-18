import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/models/test_student_relation/test_student_relation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'test_relation_event.dart';
part 'test_relation_state.dart';
part 'test_relation_bloc.freezed.dart';

class TestRelationBloc extends Bloc<TestRelationEvent, TestRelationState> {
  TestRelationBloc() : super(_Initial()) {
    on<TestRelationEvent>((event, emit) async {
      started(int relationId) async {
        emit(TestRelationState.load());
        final main = sl<GetResponsesMain>();

        TestStudentRelation? test = await main.testItem(testId: relationId);
        if (test == null) return emit(TestRelationState.error());
        List<Question>? questions = test.testing?.question;
        if (questions == null) return emit(TestRelationState.error());
        if (test.jsonAnswer == null) {
          questions = [...questions];
          questions.shuffle();
          for (int i = 0; i < questions.length; i++) {
            var element = questions[i];
            List<Answer>? amswer = element.answer;
            if (amswer == null) return emit(TestRelationState.error());
            amswer = [...amswer];
            amswer.shuffle();
            questions[i] = element.copyWith(answer: amswer);
          }
          test = test.copyWith(
            testing: test.testing?.copyWith(question: [...questions]),
          );
        }
        final comments = await sl<GetResponsesMain>().globalComment(
          objectId: relationId,
          type: GlobalCommentTypeb.studenttesting,
        );

        return emit(
          TestRelationState.complite(
            relation: test,
            comments: comments ?? [],
            isLoadComment: false,
            isLoadAnswers: false,
          ),
        );
      }

      reloadWS(int relationId) async {
        final main = sl<GetResponsesMain>();

        TestStudentRelation? test = await main.testItem(testId: relationId);
        if (test == null) return;
        List<Question>? questions = test.testing?.question;
        if (questions == null) return;
        if (test.jsonAnswer == null) {
          questions = [...questions];
          questions.shuffle();
          for (int i = 0; i < questions.length; i++) {
            var element = questions[i];
            List<Answer>? amswer = element.answer;
            if (amswer == null) return;
            amswer = [...amswer];
            amswer.shuffle();
            questions[i] = element.copyWith(answer: amswer);
          }
          test = test.copyWith(
            testing: test.testing?.copyWith(question: [...questions]),
          );
        }
        final comments = await sl<GetResponsesMain>().globalComment(
          objectId: relationId,
          type: GlobalCommentTypeb.studenttesting,
        );

        return emit(
          TestRelationState.complite(
            relation: test,
            comments: comments ?? [],
            isLoadComment: false,
            isLoadAnswers: false,
          ),
        );
      }

      sendAnswer(
        double totlaScore,
        List<Map<String, dynamic>> jsonAnswer,
        int relationId,
      ) async {
        TestStudentRelation? test = state.whenOrNull(
          complite: (relation, comments, isLoadComment, isLoadAnswers) {
            return relation;
          },
        );
        final comments = state.whenOrNull(
          complite: (relation, comments, isLoadComment, isLoadAnswers) {
            return comments;
          },
        );

        if (test == null || comments == null) return;
        emit(
          TestRelationState.complite(
            relation: test,
            comments: comments,
            isLoadComment: false,
            isLoadAnswers: true,
          ),
        );
        final mainPost = sl<PostResponsesMain>();

        final solved = await mainPost.sendTestAnswer(
          jsonEncode({
            "student_testing_id": relationId,
            "total_score": totlaScore,
            "json_answer": jsonAnswer,
          }),
        );
        if (solved == null) {
          return emit(
            TestRelationState.complite(
              relation: test,
              comments: comments,
              isLoadComment: false,
              isLoadAnswers: false,
            ),
          );
        }
        final main = sl<GetResponsesMain>();
        TestStudentRelation? testData = await main.testItem(testId: relationId);
        if (testData == null) return emit(TestRelationState.error());
        return emit(
          TestRelationState.complite(
            relation: testData,
            comments: comments,
            isLoadComment: false,
            isLoadAnswers: false,
          ),
        );
      }

      createComment(List<String> files, String comment) async {
        final TestStudentRelation? relation = state.whenOrNull(
          complite: (relation, work, comments, isLoadComment) => relation,
        );
        final List<GlobalComment>? comments = state.whenOrNull(
          complite: (relation, comments, isLoadComment, isLoadAnswer) =>
              comments,
        );
        if (relation == null) return;
        final relationId = relation.id;
        if (relationId == null) return;
        emit(
          TestRelationState.complite(
            relation: relation,
            comments: comments ?? [],
            isLoadComment: true,
            isLoadAnswers: false,
          ),
        );

        final fetch = sl<PostResponsesMain>();
        List<int> idsFiles = [];
        if (files.isNotEmpty) {
          for (var element in files) {
            final file = File(element);
            if (!await file.exists()) continue;
            final form = FormData.fromMap({
              'file': await MultipartFile.fromFile(
                file.path,
                filename: file.path.split('/').last,
              ),
            });
            final fileResponse = await fetch.uploadFileComment(form);
            final id = fileResponse?.id;
            if (id != null) {
              idsFiles.add(id);
            }
          }
        }
        final form = FormData.fromMap({
          "content_type": GlobalCommentTypeb.studenttesting.name,
          "object_id": relationId,
          "content": comment,
          "file_id_list": idsFiles,
        });
        final commentResponse = await fetch.createdFileComment(form);
        if (commentResponse == null) {
          emit(
            TestRelationState.complite(
              relation: relation,
              comments: comments ?? [],
              isLoadComment: false,
              isLoadAnswers: false,
            ),
          );
        } else {
          final newComments = await sl<GetResponsesMain>().globalComment(
            objectId: relation.id!,
            type: GlobalCommentTypeb.studenttesting,
          );
          emit(
            TestRelationState.complite(
              relation: relation,
              comments: newComments ?? [],
              isLoadComment: false,
              isLoadAnswers: false,
            ),
          );
        }
        return;
      }

      await event.when(
        started: started,
        sendAnswer: sendAnswer,
        createComment: createComment,
        reloadWS: reloadWS,
      );
    });
  }
}
