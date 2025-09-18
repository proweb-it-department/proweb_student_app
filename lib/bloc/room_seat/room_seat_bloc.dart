import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/seat_item/seat_item.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'room_seat_event.dart';
part 'room_seat_state.dart';
part 'room_seat_bloc.freezed.dart';

class RoomSeatBloc extends Bloc<RoomSeatEvent, RoomSeatState> {
  RoomSeatBloc() : super(_Initial()) {
    on<RoomSeatEvent>((event, emit) async {
      started(int cabinetId) async {
        emit(RoomSeatState.load());
        final main = sl<GetResponsesMain>();
        final response = await main.roomSeat(cabinetId: cabinetId);
        if (response == null) return emit(RoomSeatState.error());
        return emit(RoomSeatState.complited(seats: response));
      }

      await event.when(started: started);
    });
  }
}
