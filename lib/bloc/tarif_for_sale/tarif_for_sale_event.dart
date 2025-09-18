part of 'tarif_for_sale_bloc.dart';

@freezed
abstract class TarifForSaleEvent with _$TarifForSaleEvent {
  const factory TarifForSaleEvent.started({
    required int offset,
    required int limit,
  }) = _Started;
}
