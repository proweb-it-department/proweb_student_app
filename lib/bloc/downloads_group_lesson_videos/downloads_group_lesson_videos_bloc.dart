import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/repositories/video_group_repositiories/video_group_repositiories.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'downloads_group_lesson_videos_event.dart';
part 'downloads_group_lesson_videos_state.dart';
part 'downloads_group_lesson_videos_bloc.freezed.dart';

class DownloadsGroupLessonVideosBloc
    extends
        Bloc<DownloadsGroupLessonVideosEvent, DownloadsGroupLessonVideosState> {
  DownloadsGroupLessonVideosBloc() : super(_Initial()) {
    on<DownloadsGroupLessonVideosEvent>((event, emit) async {
      started(int groupId) async {
        try {
          emit(DownloadsGroupLessonVideosState.load());
          final repository = sl<VideoGroupRepositiories>();
          final lessons = await repository.selectLessonsGroup(groupId);
          if (lessons.isEmpty) {
            return emit(DownloadsGroupLessonVideosState.notFound());
          }
          emit(DownloadsGroupLessonVideosState.comlited(lessons: lessons));
        } catch (_) {
          emit(DownloadsGroupLessonVideosState.error());
        }
      }

      await event.when(started: started);
    });
  }
}
