part of 'home_material_bloc.dart';

@freezed
sealed class HomeMaterialState with _$HomeMaterialState {
  const factory HomeMaterialState.initial() = HomeMaterialStateInitial;
  const factory HomeMaterialState.complited({
    required DataHomeMaterial materials,
    required bool load,
  }) = HomeMaterialStateComplited;
}
