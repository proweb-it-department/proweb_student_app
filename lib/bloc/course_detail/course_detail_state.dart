part of 'course_detail_bloc.dart';

@freezed
sealed class CourseDetailState with _$CourseDetailState {
  const factory CourseDetailState.initial() = CourseDetailInitial;
  const factory CourseDetailState.error() = CourseDetailError;
  const factory CourseDetailState.complited({required CourseModel course}) =
      CourseDetailComplited;
}
