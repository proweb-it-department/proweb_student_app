part of 'downloads_group_lesson_videos_bloc.dart';

@freezed
abstract class DownloadsGroupLessonVideosEvent
    with _$DownloadsGroupLessonVideosEvent {
  const factory DownloadsGroupLessonVideosEvent.started({
    required int groupId,
  }) = _Started;
}
