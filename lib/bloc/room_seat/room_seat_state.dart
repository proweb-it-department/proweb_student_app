part of 'room_seat_bloc.dart';

@freezed
class RoomSeatState with _$RoomSeatState {
  const factory RoomSeatState.initial() = _Initial;
  const factory RoomSeatState.load() = _RoomSeatLoad;
  const factory RoomSeatState.error() = _RoomSeatError;
  const factory RoomSeatState.complited({required List<SeatItem> seats}) =
      _RoomSeatComplited;
}
