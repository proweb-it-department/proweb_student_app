part of 'coworking_list_reserve_bloc.dart';

@freezed
class CoworkingListReserveState with _$CoworkingListReserveState {
  const factory CoworkingListReserveState.initial() = _Initial;
  const factory CoworkingListReserveState.list({
    required int count,
    required List<CoworkingListReserve> list,
    required bool reservate,
  }) = _CoworkingListReserveList;
}
