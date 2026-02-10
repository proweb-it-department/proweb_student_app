part of 'course_detail_bloc.dart';

@freezed
abstract class CourseDetailEvent with _$CourseDetailEvent {
  const factory CourseDetailEvent.started({required int id}) = _Started;
}
