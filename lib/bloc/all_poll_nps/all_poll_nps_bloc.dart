import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/models/all_poll_nps/all_poll_nps.dart';

part 'all_poll_nps_event.dart';
part 'all_poll_nps_state.dart';
part 'all_poll_nps_bloc.freezed.dart';

class AllPollNpsBloc extends Bloc<AllPollNpsEvent, AllPollNpsState> {
  AllPollNpsBloc() : super(_Initial()) {
    on<AllPollNpsEvent>((event, emit) async {
      started() async {
        emit(AllPollNpsState.load());
      }

      await event.when(started: started);
    });
  }
}
