part of 'grade_book_bloc.dart';

@freezed
class GradeBookState with _$GradeBookState {
  const factory GradeBookState.initial() = _Initial;
  const factory GradeBookState.error() = _GradeBookError;
  const factory GradeBookState.load() = _GradeBookLoad;
  const factory GradeBookState.complited({
    required List<GroupUser> groupUsers,
    required List<GradeBookModelWork> works,
    required List<GradeBookModel> studentsWork,
  }) = _GradeBookComplited;
}
