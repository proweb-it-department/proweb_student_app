part of 'attendance_lesson_bloc.dart';

@freezed
class AttendanceLessonState with _$AttendanceLessonState {
  const factory AttendanceLessonState.initial() = _Initial;
  const factory AttendanceLessonState.load() = _AttendanceLessonLoad;
  const factory AttendanceLessonState.error() = _AttendanceLessonError;
  const factory AttendanceLessonState.complited({
    required List<GroupLessonInfo> lessons,
    required int complitedLesson,
    required int attendedLesson,
    required Version version,
    int? score,
    int? offline,
    int? online,
  }) = _AttendanceLessonComplited;
}
