part of 'download_video_lesson_bloc.dart';

@freezed
class DownloadVideoLessonState with _$DownloadVideoLessonState {
  const factory DownloadVideoLessonState.load() = _Initial;
  const factory DownloadVideoLessonState.error() = _Error;
  const factory DownloadVideoLessonState.notFound() = _NotFound;
  const factory DownloadVideoLessonState.complited({
    required List<VideoSavedData> downloaders,
  }) = _Complited;
}
