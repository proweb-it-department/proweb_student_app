part of 'module_materials_bloc.dart';

@freezed
class ModuleMaterialsState with _$ModuleMaterialsState {
  const factory ModuleMaterialsState.initial() = _Initial;
  const factory ModuleMaterialsState.load() = _Load;
  const factory ModuleMaterialsState.error() = _Error;
  const factory ModuleMaterialsState.notFound() = _NotFound;
  const factory ModuleMaterialsState.complited({
    required List<ModuleMaterial> materials,
  }) = _Complited;
}
