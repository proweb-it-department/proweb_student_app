import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/api/network/video/get/video.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:talker_logger/talker_logger.dart';

part 'lesson_video_event.dart';
part 'lesson_video_state.dart';
part 'lesson_video_bloc.freezed.dart';

class LessonVideoBloc extends Bloc<LessonVideoEvent, LessonVideoState> {
  LessonVideoBloc() : super(_Initial()) {
    on<LessonVideoEvent>((event, emit) async {
      started(int groupId, int lessonId) async {
        emit(LessonVideoState.load());
        final main = sl<GetResponsesMain>();
        final video = sl<GetResponsesVideo>();
        final geoupsData = await main.myGroups();
        if (geoupsData == null) return emit(LessonVideoState.error());
        final groupUser = geoupsData.firstWhere(
          (element) => element.group?.id == groupId,
          orElse: () => MyGroupsItem(),
        );
        if (groupUser.group?.id == null) return emit(LessonVideoState.error());
        GroupLessonInfo? data = await main.currentLesson(lessonId: lessonId);
        if (data == null) return emit(LessonVideoState.error());
        var videos = data.groupLesson?.videos;
        if (data.groupLesson != null) {
          data = data.copyWith(
            groupLesson: data.groupLesson!.copyWith(id: lessonId),
          );
        }
        TalkerLogger().log(123);
        final List<String> slugs = [];
        if (videos != null) {
          for (var element in videos) {
            final videoKey = element.videoKey;
            if (videoKey != null) {
              slugs.add(videoKey);
            }
          }
        }

        final videosData = await video.videos(slags: slugs);

        final lesson = data.copyWith(
          groupLesson: data.groupLesson!.copyWith(
            videos: data.groupLesson!.videos!.map((e) {
              final videoKey = e.videoKey;
              if (videoKey == null) return e;
              final findVideo = videosData.firstWhere(
                (element) => element.slug == videoKey,
                orElse: () => VideoModel(),
              );
              if (findVideo.slug == null) return e;
              return e.copyWith(video: findVideo);
            }).toList(),
          ),
        );
        return emit(
          LessonVideoState.complite(lesson: lesson, groupUser: groupUser),
        );
      }

      evaluate(PopDialogScore score) async {
        int? relationId;
        int? groupUserId;
        GroupLessonInfo? lessonState;
        MyGroupsItem? groupUserState;
        state.whenOrNull(
          complite: (lesson, groupUser) {
            lessonState = lesson;
            groupUserState = groupUser;
            if (lesson.relationId != null) {
              relationId = lesson.relationId;
            }
            if (groupUser.groupUserId != null) {
              groupUserId = groupUser.groupUserId;
            }
          },
        );

        if (relationId == null ||
            groupUserId == null ||
            score.score == 0 ||
            lessonState == null ||
            groupUserState == null) {
          return;
        }
        if (score.score < 4 && score.msg == null) return;
        FormData form = FormData.fromMap({
          "student_id": groupUserId,
          "student_lesson_id": relationId,
          "score": score.score,
        });

        final evaluateData = await sl<PostResponsesMain>().evaluate(form);
        if (evaluateData != null &&
            lessonState != null &&
            groupUserState != null) {
          emit(
            LessonVideoState.complite(
              lesson: lessonState!.copyWith(score: score.score),
              groupUser: groupUserState!,
            ),
          );
          final msg = score.msg;
          if (msg != null) {
            String type = FeadbackType.praise.name;
            if (score.score == 4) {
              type = FeadbackType.offer.name;
            } else if (score.score <= 3) {
              type = FeadbackType.complaint.name;
            }
            final form = FormData.fromMap({
              "type": type,
              "text": msg,
              "student_lesson_relation_id": relationId,
            });
            final createFeedback = await sl<PostResponsesMain>().createFeedBack(
              form,
            );
            if (createFeedback != null) {}
          }
        }
      }

      await event.when(started: started, evaluate: evaluate);
    });
  }
}

class PopDialogScore {
  final int score;
  final String? msg;
  PopDialogScore({required this.score, this.msg});
}
