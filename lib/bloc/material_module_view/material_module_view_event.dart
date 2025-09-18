part of 'material_module_view_bloc.dart';

@freezed
abstract class MaterialModuleViewEvent with _$MaterialModuleViewEvent {
  const factory MaterialModuleViewEvent.started({required int materialId}) =
      _Started;
}
