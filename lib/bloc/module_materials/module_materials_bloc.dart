import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/module_material/module_material.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'module_materials_event.dart';
part 'module_materials_state.dart';
part 'module_materials_bloc.freezed.dart';

class ModuleMaterialsBloc
    extends Bloc<ModuleMaterialsEvent, ModuleMaterialsState> {
  ModuleMaterialsBloc() : super(_Initial()) {
    on<ModuleMaterialsEvent>((event, emit) async {
      started(int moduleId) async {
        emit(ModuleMaterialsState.load());
        final main = sl<GetResponsesMain>();
        final materials = await main.productModuleMaterials(moduleId);
        if (materials == null) return emit(ModuleMaterialsState.error());
        if (materials.isEmpty) return emit(ModuleMaterialsState.notFound());
        final materialsSorted = List.of(materials)
          ..sort((a, b) => (a.position ?? 0) - (b.position ?? 0));

        return emit(ModuleMaterialsState.complited(materials: materialsSorted));
      }

      await event.when(started: started);
    });
  }
}
