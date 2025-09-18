part of 'course_version_bloc.dart';

@freezed
abstract class CourseVersionEvent with _$CourseVersionEvent {
  const factory CourseVersionEvent.started({required int versionId}) = _Started;
}
