import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'home_homework_event.dart';
part 'home_homework_state.dart';
part 'home_homework_bloc.freezed.dart';

class HomeHomeworkBloc extends Bloc<HomeHomeworkEvent, HomeHomeworkState> {
  HomeHomeworkBloc() : super(HomeHomeworkStateInitial()) {
    on<HomeHomeworkEvent>((event, emit) async {
      started(groupId, limit, offset) async {
        if (offset == 0) {
          emit(
            HomeHomeworkState.complited(
              homeworks: DataHomeHomework(count: 0, map: MapHomework()),
              load: true,
            ),
          );
        }
        DataHomeHomework? map = state.whenOrNull(
          complited: (homeworks, load) => homeworks,
        );
        map ??= DataHomeHomework(count: 0, map: MapHomework());
        emit(HomeHomeworkState.complited(homeworks: map, load: true));
        final main = sl<GetResponsesMain>();
        final response = await main.homeworkGgroups(groupId, offset, limit);
        if (response == null) return;
        map.count = response.count;
        for (var element in response.map.keys) {
          final month = map.map.getOrSet(element, () => []);
          final monthData = response.map.get(element) ?? [];
          month.addAll(monthData);
        }
        emit(HomeHomeworkState.complited(homeworks: map, load: false));
      }

      await event.when(started: started);
    });
  }
}
