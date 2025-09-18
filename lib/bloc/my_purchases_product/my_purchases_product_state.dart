part of 'my_purchases_product_bloc.dart';

@freezed
class MyPurchasesProductState with _$MyPurchasesProductState {
  const factory MyPurchasesProductState.load() = _Load;
  const factory MyPurchasesProductState.complited({
    required List<CategoryProduct> categories,
    required ResponseLazeList<MyPurchases> products,
    required bool load,
  }) = _Complited;
}
