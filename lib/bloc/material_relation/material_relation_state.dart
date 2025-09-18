part of 'material_relation_bloc.dart';

@freezed
class MaterialRelationState with _$MaterialRelationState {
  const factory MaterialRelationState.initial() = _Initial;
  const factory MaterialRelationState.load() = _MaterialRelationLoad;
  const factory MaterialRelationState.error() = _MaterialRelationError;
  const factory MaterialRelationState.complite({
    required MaterialStudentRelation relation,
  }) = _MaterialRelationComplited;
}
