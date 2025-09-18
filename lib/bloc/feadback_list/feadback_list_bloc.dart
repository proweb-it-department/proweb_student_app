import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/models/feadbacks_page_item/feadbacks_page_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'feadback_list_event.dart';
part 'feadback_list_state.dart';
part 'feadback_list_bloc.freezed.dart';

class FeadbackListBloc extends Bloc<FeadbackListEvent, FeadbackListState> {
  FeadbackListBloc() : super(_Initial()) {
    on<FeadbackListEvent>((event, emit) async {
      started(int offset) async {
        if (offset == 0) {
          emit(FeadbackListState.initial());
        }
        final stateList = state.whenOrNull(
          complited: (count, feadbacks, created) => feadbacks,
        );
        final stateCount = state.whenOrNull(
          complited: (count, feadbacks, created) => count,
        );
        final main = sl<GetResponsesMain>();
        final response = await main.feadbackList(limit: 30, offset: offset);
        if (response == null) {
          return emit(
            FeadbackListState.complited(
              count: stateCount ?? 0,
              feadbacks: [...(stateList ?? [])],
              created: false,
            ),
          );
        }
        if (offset == 0) {
          return emit(
            FeadbackListState.complited(
              count: response.count,
              feadbacks: [...response.list],
              created: false,
            ),
          );
        }
        return emit(
          FeadbackListState.complited(
            count: response.count,
            feadbacks: [...(stateList ?? []), ...response.list],
            created: false,
          ),
        );
      }

      create(FeadbackType type, String text) async {
        final stateList = state.whenOrNull(
          complited: (count, feadbacks, created) => feadbacks,
        );
        final stateCount = state.whenOrNull(
          complited: (count, feadbacks, created) => count,
        );
        emit(
          FeadbackListState.complited(
            count: stateCount ?? 0,
            feadbacks: [...(stateList ?? [])],
            created: true,
          ),
        );
        final form = FormData.fromMap({"type": type.name, "text": text});
        final createFeedback = await sl<PostResponsesMain>().createFeedBack(
          form,
        );
        if (createFeedback == null)
          return emit(
            FeadbackListState.complited(
              count: stateCount ?? 0,
              feadbacks: [...(stateList ?? [])],
              created: false,
            ),
          );
        return emit(
          FeadbackListState.complited(
            count: (stateCount ?? 0) + 1,
            feadbacks: [createFeedback, ...(stateList ?? [])],
            created: false,
          ),
        );
      }

      await event.when(started: started, create: create);
    });
  }
}
