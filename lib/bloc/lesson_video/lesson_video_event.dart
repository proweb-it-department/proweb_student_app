part of 'lesson_video_bloc.dart';

@freezed
class LessonVideoEvent with _$LessonVideoEvent {
  const factory LessonVideoEvent.started({
    required int groupId,
    required int lessonId,
  }) = _Started;
  const factory LessonVideoEvent.evaluate({
    required PopDialogScore score,
  }) = _StartedEvaluate;
}
