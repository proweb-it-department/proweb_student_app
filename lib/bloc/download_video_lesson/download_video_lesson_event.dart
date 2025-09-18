part of 'download_video_lesson_bloc.dart';

@freezed
abstract class DownloadVideoLessonEvent with _$DownloadVideoLessonEvent {
  const factory DownloadVideoLessonEvent.started({required int lessonId}) =
      _Started;
}
