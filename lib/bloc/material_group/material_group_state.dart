part of 'material_group_bloc.dart';

@freezed
class MaterialGroupState with _$MaterialGroupState {
  const factory MaterialGroupState.initial() = _Initial;
  const factory MaterialGroupState.load() = _MaterialGroupLoad;
  const factory MaterialGroupState.error() = _MaterialGroupError;
  const factory MaterialGroupState.complited({
    required ResponseLazeList<MaterialListGroup> data,
  }) = _MaterialGroupComplited;
}
