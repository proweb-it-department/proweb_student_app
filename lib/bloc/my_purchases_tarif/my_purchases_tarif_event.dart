part of 'my_purchases_tarif_bloc.dart';

@freezed
abstract class MyPurchasesTarifEvent with _$MyPurchasesTarifEvent {
  const factory MyPurchasesTarifEvent.started({
    required int offset,
    required int limit,
  }) = _Started;
}
