part of 'my_purchases_service_bloc.dart';

@freezed
class MyPurchasesServiceState with _$MyPurchasesServiceState {
  const factory MyPurchasesServiceState.load() = _Initial;
  const factory MyPurchasesServiceState.complited({
    required ResponseLazeList<MyPurchasesService> services,
    required bool load,
  }) = _Complited;
}
