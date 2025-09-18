part of 'course_list_bloc.dart';

@freezed
class CourseListState with _$CourseListState {
  const factory CourseListState.initial() = _Initial;
  const factory CourseListState.loading() = _CourseListLoad;
  const factory CourseListState.complited({
    required List<CourseModel> courses,
  }) = _CourseListComplited;
  const factory CourseListState.error() = _CourseListError;
}
