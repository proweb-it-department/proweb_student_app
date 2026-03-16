import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/cups/cups.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'cups_event.dart';
part 'cups_state.dart';
part 'cups_bloc.freezed.dart';

class CupsBloc extends Bloc<CupsEvent, CupsState> {
  CupsBloc() : super(CupsStateLoad()) {
    on<CupsEvent>((event, emit) async {
      started(int? userId) async {
        emit(CupsState.load());
        final main = sl<GetResponsesMain>();
        final response = await main.cups(userId);
        if (response == null) return;
        emit(
          CupsState.complited(
            cups: ResponseLazeList(
              count: response.count,
              list: [...response.list],
            ),
          ),
        );
      }

      await switch (event) {
        _Started(userId: final userId) => started(userId),
      };
    });
  }
}
