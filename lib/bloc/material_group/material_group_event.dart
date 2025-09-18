part of 'material_group_bloc.dart';

@freezed
abstract class MaterialGroupEvent with _$MaterialGroupEvent {
  const factory MaterialGroupEvent.started({
    required int groupId,
    required int limit,
    required int offset,
  }) = _Started;
}
