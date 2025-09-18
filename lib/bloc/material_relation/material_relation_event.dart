part of 'material_relation_bloc.dart';

@freezed
abstract class MaterialRelationEvent with _$MaterialRelationEvent {
  const factory MaterialRelationEvent.started({required int id}) = _Started;
}
