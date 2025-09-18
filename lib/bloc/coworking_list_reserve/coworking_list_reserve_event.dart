part of 'coworking_list_reserve_bloc.dart';

@freezed
class CoworkingListReserveEvent with _$CoworkingListReserveEvent {
  const factory CoworkingListReserveEvent.started({
    required int offset,
  }) = _Started;
  const factory CoworkingListReserveEvent.reserve({
    required int seatId,
    required String date,
    required String reserveTime,
    required int groupId,
  }) = _CoworkingListReserve;
  const factory CoworkingListReserveEvent.update({
    required int visitId,
    required int seatId,
    required String reserveTime,
  }) = _CoworkingListUpdate;
  const factory CoworkingListReserveEvent.closed({
    required int visitId,
  }) = _CoworkingListDelete;
  const factory CoworkingListReserveEvent.updateWS({
    required CoworkingListReserve visite,
  }) = _CoworkingListUpdateWs;
}
