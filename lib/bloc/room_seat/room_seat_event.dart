part of 'room_seat_bloc.dart';

@freezed
abstract class RoomSeatEvent with _$RoomSeatEvent {
  const factory RoomSeatEvent.started({required int cabinetId}) = _Started;
}
