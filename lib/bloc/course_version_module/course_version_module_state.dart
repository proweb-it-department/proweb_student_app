part of 'course_version_module_bloc.dart';

@freezed
sealed class CourseVersionModuleState with _$CourseVersionModuleState {
  const factory CourseVersionModuleState.initial() = CourseVersionModuleInitail;
  const factory CourseVersionModuleState.error() = CourseVersionModuleError;
  const factory CourseVersionModuleState.complited({
    required List<CourseVersionModel> modules,
  }) = CourseVersionModuleComplited;
}
