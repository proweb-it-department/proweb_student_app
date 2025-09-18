part of 'course_version_bloc.dart';

@freezed
class CourseVersionState with _$CourseVersionState {
  const factory CourseVersionState.initial() = _Initial;
  const factory CourseVersionState.load() = _CourseVersionLoad;
  const factory CourseVersionState.error() = _CourseVersionError;
  const factory CourseVersionState.complite({
    required List<CourseVersionModel> modules,
  }) = _CourseVersionComplited;
}
