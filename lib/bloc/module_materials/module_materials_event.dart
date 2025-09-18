part of 'module_materials_bloc.dart';

@freezed
abstract class ModuleMaterialsEvent with _$ModuleMaterialsEvent {
  const factory ModuleMaterialsEvent.started({required int moduleId}) =
      _Started;
}
