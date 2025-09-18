import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/repositories/video_group_repositiories/video_group_repositiories.dart';
import 'package:proweb_student_app/api/video_repository/video_repository.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'download_video_lesson_event.dart';
part 'download_video_lesson_state.dart';
part 'download_video_lesson_bloc.freezed.dart';

class DownloadVideoLessonBloc
    extends Bloc<DownloadVideoLessonEvent, DownloadVideoLessonState> {
  DownloadVideoLessonBloc() : super(_Initial()) {
    on<DownloadVideoLessonEvent>((event, emit) async {
      started(int lessonId) async {
        try {
          emit(DownloadVideoLessonState.load());
          final repository = sl<VideoGroupRepositiories>();
          final videos = await repository.selectVideo(lessonId);
          if (videos.isEmpty) return emit(DownloadVideoLessonState.notFound());
          final List<String> slugs = videos.map((e) => e.slug).toList();
          final videoRepository = sl<VideoRepository>();
          final videosData = await videoRepository.getVideosBySlug(slugs);
          if (videosData.isEmpty) {
            return emit(DownloadVideoLessonState.notFound());
          }
          emit(DownloadVideoLessonState.complited(downloaders: videosData));
        } catch (_) {
          emit(DownloadVideoLessonState.error());
        }
      }

      await event.when(started: started);
    });
  }
}
