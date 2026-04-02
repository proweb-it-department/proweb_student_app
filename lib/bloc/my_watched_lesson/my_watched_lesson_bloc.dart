import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/my_watched_lesson/my_watched_lesson.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'my_watched_lesson_event.dart';
part 'my_watched_lesson_state.dart';
part 'my_watched_lesson_bloc.freezed.dart';

class MyWatchedLessonBloc
    extends Bloc<MyWatchedLessonEvent, MyWatchedLessonState> {
  MyWatchedLessonBloc() : super(MyWatchedLessonStateLoad()) {
    on<MyWatchedLessonEvent>((event, emit) async {
      started({
        required String isWatched,
        int? groupId,
        int limit = 15,
        int offset = 0,
      }) async {
        if (offset == 0) {
          emit(MyWatchedLessonState.initial());
        }
        ResponseLazeList<MyWatchedLesson>? data = state.whenOrNull(
          compllited: (data) => data,
        );
        final main = sl<GetResponsesMain>();
        final response = await main.watchedLesson(
          isWatched: isWatched,
          groupId: groupId,
          limit: limit,
          offset: offset,
        );
        if (response == null) {
          emit(
            MyWatchedLessonState.compllited(
              data: data ?? ResponseLazeList(count: 0, list: []),
            ),
          );
          return;
        }
        if (offset == 0) {
          final list = [...(response.list)];
          data = ResponseLazeList(count: response.count, list: list);
        } else {
          final List<MyWatchedLesson> list = [
            ...(data?.list ?? []),
            ...(response.list),
          ];
          data = ResponseLazeList<MyWatchedLesson>(
            count: response.count,
            list: list,
          );
        }
        emit(MyWatchedLessonState.compllited(data: data));
      }

      await switch (event) {
        _Started(
          isWatched: final isWatched,
          groupId: final groupId,
          limit: final limit,
          offset: final offset,
        ) =>
          await started(
            isWatched: isWatched,
            groupId: groupId,
            limit: limit ?? 15,
            offset: offset ?? 0,
          ),
      };
    });
  }
}
