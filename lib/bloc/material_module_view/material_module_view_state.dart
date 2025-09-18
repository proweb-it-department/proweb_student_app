part of 'material_module_view_bloc.dart';

@freezed
class MaterialModuleViewState with _$MaterialModuleViewState {
  const factory MaterialModuleViewState.initial() = _Initial;
  const factory MaterialModuleViewState.load() = _Load;
  const factory MaterialModuleViewState.error() = _Error;
  const factory MaterialModuleViewState.complited({
    required MaterialModuleItem meterial,
  }) = _Complited;
}
