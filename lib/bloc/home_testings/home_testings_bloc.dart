import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'home_testings_event.dart';
part 'home_testings_state.dart';
part 'home_testings_bloc.freezed.dart';

class HomeTestingsBloc extends Bloc<HomeTestingsEvent, HomeTestingsState> {
  HomeTestingsBloc() : super(HomeTestingsStateInitial()) {
    on<HomeTestingsEvent>((event, emit) async {
      started(groupId, limit, offset) async {
        if (offset == 0) {
          emit(
            HomeTestingsState.complited(
              testings: DataHomeTesting(count: 0, map: MapTesting()),
              load: true,
            ),
          );
        }
        DataHomeTesting? map = state.whenOrNull(complited: (test, _) => test);
        map ??= DataHomeTesting(count: 0, map: MapTesting());
        emit(HomeTestingsState.complited(testings: map, load: true));
        final main = sl<GetResponsesMain>();
        final response = await main.testGgroups(groupId, offset, limit);
        if (response == null) return;
        map.count = response.count;
        for (var element in response.map.keys) {
          final month = map.map.getOrSet(element, () => []);
          final monthData = response.map.get(element) ?? [];
          month.addAll(monthData);
        }
        emit(HomeTestingsState.complited(testings: map, load: false));
      }

      await event.when(started: started);
    });
  }
}
