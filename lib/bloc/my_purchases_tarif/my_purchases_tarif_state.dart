part of 'my_purchases_tarif_bloc.dart';

@freezed
class MyPurchasesTarifState with _$MyPurchasesTarifState {
  const factory MyPurchasesTarifState.load() = _Initial;
  const factory MyPurchasesTarifState.complited({
    required ResponseLazeList<MyPurchasesTarif> purchases,
    required bool load,
  }) = _Complited;
}
