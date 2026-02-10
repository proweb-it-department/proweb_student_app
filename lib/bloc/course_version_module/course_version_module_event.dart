part of 'course_version_module_bloc.dart';

@freezed
sealed class CourseVersionModuleEvent with _$CourseVersionModuleEvent {
  const factory CourseVersionModuleEvent.started({required int versionId}) =
      _Started;
}
