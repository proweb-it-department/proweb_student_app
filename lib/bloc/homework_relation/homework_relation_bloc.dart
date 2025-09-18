import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/models/homework_group/homework_group.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/models/pass_work/pass_work.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'homework_relation_event.dart';
part 'homework_relation_state.dart';
part 'homework_relation_bloc.freezed.dart';

class HomeworkRelationBloc
    extends Bloc<HomeworkRelationEvent, HomeworkRelationState> {
  HomeworkRelationBloc() : super(_Initial()) {
    on<HomeworkRelationEvent>((event, emit) async {
      started(int relationId) async {
        emit(HomeworkRelationState.load());
        final relation = await sl<GetResponsesMain>().studentRelationHomework(
          studentHomeworkId: relationId,
        );
        if (relation == null) return emit(HomeworkRelationState.error());
        final workId = relation.homework?.id;
        if (workId == null) return emit(HomeworkRelationState.error());
        final work = await sl<GetResponsesMain>().homeworkItem(
          homeworkId: workId,
        );
        if (work == null) return emit(HomeworkRelationState.error());
        final comments = await sl<GetResponsesMain>().globalComment(
          objectId: relation.id!,
          type: GlobalCommentTypeb.studenthomework,
        );
        return emit(
          HomeworkRelationState.complite(
            relation: relation,
            work: work,
            comments: comments ?? [],
            isLoadComment: false,
          ),
        );
      }

      reloadWS(int relationId) async {
        final relation = await sl<GetResponsesMain>().studentRelationHomework(
          studentHomeworkId: relationId,
        );
        if (relation == null) return;
        final workId = relation.homework?.id;
        if (workId == null) return;
        final work = await sl<GetResponsesMain>().homeworkItem(
          homeworkId: workId,
        );
        if (work == null) return;
        final comments = await sl<GetResponsesMain>().globalComment(
          objectId: relation.id!,
          type: GlobalCommentTypeb.studenthomework,
        );
        return emit(
          HomeworkRelationState.complite(
            relation: relation,
            work: work,
            comments: comments ?? [],
            isLoadComment: false,
          ),
        );
      }

      pass(List<ModelFile> files, List<String> links, String? note) async {
        final HomeworkStudentRelationGroup? relation = state.whenOrNull(
          complite: (relation, work, comments, isLoadComment) => relation,
        );
        final HomeworkGroup? work = state.whenOrNull(
          complite: (relation, work, comments, isLoadComment) => work,
        );
        if (relation == null) return;
        final relationId = relation.id;
        if (relationId == null) return;
        if (work == null) return;
        final List<HomeworkMaterials> solvedMaterial = [];
        if (files.isNotEmpty) {
          for (var file in files) {
            final form = FormData.fromMap({
              "student_homework_id": relationId,
              "file": await MultipartFile.fromFile(
                file.path,
                filename: file.name,
              ),
              "description": note ?? '',
            });
            final response = await sl<PostResponsesMain>().solvedMaterial(form);
            if (response != null) {
              solvedMaterial.add(response);
            }
          }
        }
        if (links.isNotEmpty) {
          for (var link in links) {
            final form = FormData.fromMap({
              "student_homework_id": relationId,
              "link": link,
              "description": note ?? '',
            });
            final response = await sl<PostResponsesMain>().solvedMaterial(form);
            if (response != null) {
              solvedMaterial.add(response);
            }
          }
        }
        if (solvedMaterial.isNotEmpty) {
          HomeworkStudentRelationGroup newRelation = relation;
          final homework = newRelation.homeworkMaterials;
          if (homework != null) {
            newRelation = newRelation.copyWith(
              homeworkMaterials: [...homework, ...solvedMaterial],
            );
          } else {
            newRelation = newRelation.copyWith(
              homeworkMaterials: List.from(solvedMaterial),
            );
          }
          final comments = await sl<GetResponsesMain>().globalComment(
            objectId: relation.id!,
            type: GlobalCommentTypeb.studenthomework,
          );
          emit(
            HomeworkRelationState.complite(
              relation: newRelation,
              work: work,
              comments: comments ?? [],
              isLoadComment: false,
            ),
          );
        }
      }

      createComment(List<String> files, String comment) async {
        final HomeworkStudentRelationGroup? relation = state.whenOrNull(
          complite: (relation, work, comments, isLoadComment) => relation,
        );
        final HomeworkGroup? work = state.whenOrNull(
          complite: (relation, work, comments, isLoadComment) => work,
        );
        final List<GlobalComment>? comments = state.whenOrNull(
          complite: (relation, work, comments, isLoadComment) => comments,
        );
        if (relation == null) return;
        final relationId = relation.id;
        if (relationId == null) return;
        if (work == null) return;
        emit(
          HomeworkRelationState.complite(
            relation: relation,
            work: work,
            comments: comments ?? [],
            isLoadComment: true,
          ),
        );

        final commentResponse = await sl<PostResponsesMain>().createComment(
          comment: comment,
          relationId: relationId,
          contentType: GlobalCommentTypeb.studenthomework,
          files: files,
        );

        if (commentResponse == null) {
          emit(
            HomeworkRelationState.complite(
              relation: relation,
              work: work,
              comments: comments ?? [],
              isLoadComment: false,
            ),
          );
        } else {
          final newComments = await sl<GetResponsesMain>().globalComment(
            objectId: relation.id!,
            type: GlobalCommentTypeb.studenthomework,
          );
          emit(
            HomeworkRelationState.complite(
              relation: relation,
              work: work,
              comments: newComments ?? [],
              isLoadComment: false,
            ),
          );
        }
        return;
      }

      await event.when(
        started: started,
        pass: pass,
        createComment: createComment,
        reloadWS: reloadWS,
      );
    });
  }
}
