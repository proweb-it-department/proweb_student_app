import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/material_list_group/material_list_group.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'material_group_event.dart';
part 'material_group_state.dart';
part 'material_group_bloc.freezed.dart';

class MaterialGroupBloc extends Bloc<MaterialGroupEvent, MaterialGroupState> {
  MaterialGroupBloc() : super(_Initial()) {
    on<MaterialGroupEvent>((event, emit) async {
      started(int groupId, int limit, int offset) async {
        final loaded = state.whenOrNull(complited: (data) => data);
        if (loaded == null || offset == 0) emit(MaterialGroupState.load());
        final response = await sl<GetResponsesMain>().materialList(
          groupId: groupId,
          limit: limit,
          offset: offset,
        );
        if (response == null && (loaded == null || offset == 0)) {
          emit(MaterialGroupState.error());
          return;
        }
        if (response == null) return;

        if (loaded == null || offset == 0) {
          return emit(MaterialGroupState.complited(data: response));
        } else {
          final results = ResponseLazeList<MaterialListGroup>(
            count: response.count,
            list: [...loaded.list, ...response.list],
          );
          return emit(MaterialGroupState.complited(data: results));
        }
      }

      await event.when(started: started);
    });
  }
}
