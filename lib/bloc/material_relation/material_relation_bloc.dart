import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/material_student_relation/material_student_relation.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'material_relation_event.dart';
part 'material_relation_state.dart';
part 'material_relation_bloc.freezed.dart';

class MaterialRelationBloc
    extends Bloc<MaterialRelationEvent, MaterialRelationState> {
  MaterialRelationBloc() : super(_Initial()) {
    on<MaterialRelationEvent>((event, emit) async {
      started(int id) async {
        final material = await sl<GetResponsesMain>().materialItem(
          materialId: id,
        );
        if (material == null) return emit(MaterialRelationState.error());

        return emit(MaterialRelationState.complite(relation: material));
      }

      await event.when(started: started);
    });
  }
}
