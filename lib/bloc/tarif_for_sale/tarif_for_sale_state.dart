part of 'tarif_for_sale_bloc.dart';

@freezed
class TarifForSaleState with _$TarifForSaleState {
  const factory TarifForSaleState.load() = _Load;
  const factory TarifForSaleState.complited({
    required ResponseLazeList<TarifForSale> tarifs,
    required bool load,
  }) = _Complited;
}
