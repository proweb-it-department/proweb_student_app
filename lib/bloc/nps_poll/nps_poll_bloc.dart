import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/nps_poll/nps_poll.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'nps_poll_event.dart';
part 'nps_poll_state.dart';
part 'nps_poll_bloc.freezed.dart';

class NpsPollBloc extends Bloc<NpsPollEvent, NpsPollState> {
  NpsPollBloc() : super(NpsPollInitial()) {
    on<NpsPollEvent>((event, emit) async {
      started() async {
        final main = sl<GetResponsesMain>();
        final response = await main.npsPollActive(limit: 100, offset: 0);
        if (response == null || response.count == 0) {
          return emit(NpsPollState.initial());
        }
        return emit(NpsPollState.complited(nps: response));
      }

      await event.when(started: started);
    });
  }
}
