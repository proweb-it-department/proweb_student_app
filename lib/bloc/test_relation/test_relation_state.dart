part of 'test_relation_bloc.dart';

@freezed
class TestRelationState with _$TestRelationState {
  const factory TestRelationState.initial() = _Initial;
  const factory TestRelationState.load() = _TestRelationLoad;
  const factory TestRelationState.error() = _TestRelationError;
  const factory TestRelationState.complite({
    required TestStudentRelation relation,
    required List<GlobalComment> comments,
    required bool isLoadComment,
    required bool isLoadAnswers,
  }) = _TestRelationComplited;
}
