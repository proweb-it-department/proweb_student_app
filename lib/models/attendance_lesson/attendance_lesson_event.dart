part of 'attendance_lesson_bloc.dart';

@freezed
abstract class AttendanceLessonEvent with _$AttendanceLessonEvent {
  const factory AttendanceLessonEvent.started({required int groupId, Version? version}) = _Started;
}
