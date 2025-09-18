part of 'branch_room_holiday_bloc.dart';

@freezed
class BranchRoomHolidayState with _$BranchRoomHolidayState {
  const factory BranchRoomHolidayState.initial() = _Initial;
  const factory BranchRoomHolidayState.load() = _BranchRoomHolidayLoad;
  const factory BranchRoomHolidayState.complited({
    required List<Branche> branch,
    required List<Room> room,
    required List<Holiday> holiday,
  }) = _BranchRoomHolidayComplited;
}
