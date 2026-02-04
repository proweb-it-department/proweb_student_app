part of 'scheduled_student_bloc.dart';

@freezed
abstract class ScheduledStudentEvent with _$ScheduledStudentEvent {
  const factory ScheduledStudentEvent.started({
    required List<MyGroupsItem> groups,
  }) = _Started;
}
