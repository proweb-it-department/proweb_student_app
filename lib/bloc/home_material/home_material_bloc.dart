import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'home_material_event.dart';
part 'home_material_state.dart';
part 'home_material_bloc.freezed.dart';

class HomeMaterialBloc extends Bloc<HomeMaterialEvent, HomeMaterialState> {
  HomeMaterialBloc() : super(HomeMaterialStateInitial()) {
    on<HomeMaterialEvent>((event, emit) async {
      started(groupId, limit, offset) async {
        if (offset == 0) {
          emit(
            HomeMaterialState.complited(
              materials: DataHomeMaterial(count: 0, map: MapMaterial()),
              load: true,
            ),
          );
        }
        DataHomeMaterial? map = state.whenOrNull(
          complited: (homeworks, load) => homeworks,
        );
        map ??= DataHomeMaterial(count: 0, map: MapMaterial());
        emit(HomeMaterialState.complited(materials: map, load: true));
        final main = sl<GetResponsesMain>();
        final response = await main.materialGgroups(groupId, offset, limit);
        if (response == null) return;
        map.count = response.count;
        for (var element in response.map.keys) {
          final month = map.map.getOrSet(element, () => []);
          final monthData = response.map.get(element) ?? [];
          month.addAll(monthData);
        }
        emit(HomeMaterialState.complited(materials: map, load: false));
      }

      await event.when(started: started);
    });
  }
}
