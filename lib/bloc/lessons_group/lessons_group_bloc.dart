import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/video/get/video.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'lessons_group_event.dart';
part 'lessons_group_state.dart';
part 'lessons_group_bloc.freezed.dart';

class LessonsGroupBloc extends Bloc<LessonsGroupEvent, LessonsGroupState> {
  LessonsGroupBloc() : super(_Initial()) {
    on<LessonsGroupEvent>((event, emit) async {
      started(int groupId, List<Posters>? posters, Version? version) async {
        emit(LessonsGroupState.load());
        final lessons = await sl<GetResponsesMain>().lessons(groupId: groupId);
        if (lessons == null) return emit(LessonsGroupState.error());
        if (version == null) return emit(LessonsGroupState.error());
        if (version.lessonCount == null) return emit(LessonsGroupState.error());
        final videosObjects = lessons
            .map((e) => e.groupLesson?.videos)
            .toList();
        final List<String> slugs = [];
        if (videosObjects.isNotEmpty) {
          for (final element in videosObjects) {
            if (element == null) continue;
            for (var elementVideo in element) {
              final videoKey = elementVideo.videoKey;
              if (videoKey == null) continue;
              slugs.add(videoKey);
            }
          }
        }
        List<VideoModel> videosResponse = [];
        if (slugs.isNotEmpty) {
          final videos = await sl<GetResponsesVideo>().videos(slags: slugs);

          videosResponse.addAll(videos);
        }

        List<GroupLessonInfo> data = _listLessons(lessons, videosResponse);

        data.sort((a, b) {
          final aSort = (a.groupLesson?.lessonNumber ?? 0);
          final bSort = (b.groupLesson?.lessonNumber ?? 0);
          return aSort - bSort;
        });
        int lessonCount = version.lessonCount ?? 0;

        data = _lessonGenerator(
          lessonCount: lessonCount,
          lessons: data,
          posters: posters,
        );
        GroupLessonInfo? currentLesson = data.lastWhere(
          (element) => element.statusVideo == StatusVideoLoad.complete,
          orElse: () => GroupLessonInfo(),
        );
        if (currentLesson.statusVideo == null) {
          currentLesson = null;
        }

        return emit(
          LessonsGroupState.complited(
            lessons: data,
            currentLesson: currentLesson,
          ),
        );
      }

      await event.when(started: started);
    });
  }
  GroupLessonInfo _changeLessonsList(
    GroupLessonInfo element,
    List<VideoModel> videosResponse,
  ) {
    return element.copyWith(
      groupLesson: element.groupLesson!.copyWith(
        videos: element.groupLesson!.videos!.map((e) {
          final videoKey = e.videoKey;
          if (videoKey == null) return e;
          final videoSearch = videosResponse.firstWhere(
            (element) => element.slug == videoKey,
            orElse: () => VideoModel(),
          );
          final data = e.copyWith(video: videoSearch);
          return data;
        }).toList(),
      ),
    );
  }

  List<GroupLessonInfo> _listLessons(
    List<GroupLessonInfo> lessons,
    List<VideoModel> videosResponse,
  ) {
    List<GroupLessonInfo> data = [];
    for (var element in lessons) {
      if (element.groupLesson != null) {
        if (element.groupLesson!.videos == null) continue;
        data.add(_changeLessonsList(element, videosResponse));
      }
    }
    return data;
  }

  List<GroupLessonInfo> _lessonGenerator({
    required int lessonCount,
    required List<GroupLessonInfo> lessons,
    List<Posters>? posters,
  }) {
    return List.generate(lessonCount, (index) {
      final lessonNumber = index + 1;
      final less = lessons.firstWhere(
        (element) => element.groupLesson?.lessonNumber == lessonNumber,
        orElse: () => GroupLessonInfo(),
      );
      if (less.groupLesson?.lessonNumber == null) {
        String? banner;
        if (posters != null && posters.isNotEmpty) {
          banner = posters[index % posters.length].image;
        }
        return GroupLessonInfo(
          groupLesson: GroupLesson(lessonNumber: lessonNumber),
          statusVideo: StatusVideoLoad.generate,
          banner: banner,
        );
      } else {
        String? banner;
        StatusVideoLoad? status;
        if (posters != null && posters.isNotEmpty) {
          banner = posters[index % posters.length].image;
        }
        if (less.groupLesson?.videos == null ||
            less.groupLesson!.videos!.isEmpty) {
          status = StatusVideoLoad.noVideos;
        } else {
          less.groupLesson?.videos?.forEach((element) {
            final video = element.video;
            if (video != null) {
              if (video.status == StatusVideoData.queue &&
                  (status != StatusVideoLoad.processing &&
                      status != StatusVideoLoad.complete)) {
                status = StatusVideoLoad.queue;
              } else if (video.status == StatusVideoData.processing &&
                  status != StatusVideoLoad.complete) {
                status = StatusVideoLoad.processing;
              } else if (video.status == StatusVideoData.complete ||
                  video.status == StatusVideoData.download) {
                status = StatusVideoLoad.complete;
              } else if (video.status == StatusVideoData.noAudioStream &&
                  (status != StatusVideoLoad.complete &&
                      status != StatusVideoLoad.processing &&
                      status != StatusVideoLoad.queue)) {
                status = StatusVideoLoad.noAudioStream;
              }
            }
          });
        }
        return less.copyWith(banner: banner, statusVideo: status);
      }
    });
  }
}
