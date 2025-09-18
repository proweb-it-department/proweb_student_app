part of 'downloads_group_lesson_videos_bloc.dart';

@freezed
class DownloadsGroupLessonVideosState with _$DownloadsGroupLessonVideosState {
  const factory DownloadsGroupLessonVideosState.load() = _Initial;
  const factory DownloadsGroupLessonVideosState.error() = _Error;
  const factory DownloadsGroupLessonVideosState.notFound() = _NotFound;
  const factory DownloadsGroupLessonVideosState.comlited({
    required List<GroupLessonModelData> lessons,
  }) = _Compolited;
}
