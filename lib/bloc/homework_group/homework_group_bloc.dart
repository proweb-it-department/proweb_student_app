import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/homework_list_group/homework_list_group.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'homework_group_event.dart';
part 'homework_group_state.dart';
part 'homework_group_bloc.freezed.dart';

class HomeworkGroupBloc extends Bloc<HomeworkGroupEvent, HomeworkGroupState> {
  HomeworkGroupBloc() : super(_Initial()) {
    on<HomeworkGroupEvent>((event, emit) async {
      started(int groupId, int limit, int offset) async {
        final loaded = state.whenOrNull(complited: (data) => data);
        if (loaded == null || offset == 0) emit(HomeworkGroupState.load());
        final response = await sl<GetResponsesMain>().homeworkList(
          groupId: groupId,
          limit: limit,
          offset: offset,
        );
        if (response == null && (loaded == null || offset == 0)) {
          emit(HomeworkGroupState.error());
          return;
        }
        if (response == null) return;

        if (loaded == null || offset == 0) {
          return emit(HomeworkGroupState.complited(data: response));
        } else {
          final results = ResponseLazeList<HomeworkListGroup>(
            count: response.count,
            list: [...loaded.list, ...response.list],
          );
          return emit(HomeworkGroupState.complited(data: results));
        }
      }

      await event.when(started: started);
    });
  }
}
