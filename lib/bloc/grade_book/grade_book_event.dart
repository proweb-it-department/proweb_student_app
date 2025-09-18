part of 'grade_book_bloc.dart';

@freezed
abstract class GradeBookEvent with _$GradeBookEvent {
  const factory GradeBookEvent.started({required int groupId}) = _Started;
}
