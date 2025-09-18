part of 'shop_product_bloc.dart';

@freezed
class ShopProductState with _$ShopProductState {
  const factory ShopProductState.initial() = _Initial;
  const factory ShopProductState.list({
    required ResponseLazeList<Products> products,
    required List<CategoryProduct> categories,
    required List<MyPurchases>? myPurchased,
    required bool isError,
    required bool isLoad,
  }) = _ListData;
}
