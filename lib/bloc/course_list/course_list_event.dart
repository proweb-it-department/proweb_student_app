part of 'course_list_bloc.dart';

@freezed
abstract class CourseListEvent with _$CourseListEvent {
  const factory CourseListEvent.started({required String language}) = _Started;
}
