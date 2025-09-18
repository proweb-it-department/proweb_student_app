import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/models/test_list_group/test_list_group.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'test_group_event.dart';
part 'test_group_state.dart';
part 'test_group_bloc.freezed.dart';

class TestGroupBloc extends Bloc<TestGroupEvent, TestGroupState> {
  TestGroupBloc() : super(_Initial()) {
    on<TestGroupEvent>((event, emit) async {
      started(int groupId, int limit, int offset) async {
        final loaded = state.whenOrNull(complited: (data) => data);
        if (loaded == null || offset == 0) emit(TestGroupState.load());
        final response = await sl<GetResponsesMain>().testList(
          groupId: groupId,
          limit: limit,
          offset: offset,
        );
        if (response == null && (loaded == null || offset == 0)) {
          emit(TestGroupState.error());
          return;
        }
        if (response == null) return;

        if (loaded == null || offset == 0) {
          return emit(TestGroupState.complited(data: response));
        } else {
          final results = ResponseLazeList<TestListGroup>(
            count: response.count,
            list: [...loaded.list, ...response.list],
          );
          return emit(TestGroupState.complited(data: results));
        }
      }

      await event.when(started: started);
    });
  }
}
