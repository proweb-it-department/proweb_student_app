part of 'product_ditail_bloc.dart';

@freezed
class ProductDitailState with _$ProductDitailState {
  const factory ProductDitailState.initial() = _Initial;
  const factory ProductDitailState.load() = _LoadState;
  const factory ProductDitailState.error() = _ErrorState;
  const factory ProductDitailState.complited({
    required Products product,
    required List<ProductsModules> productModules,
  }) = _CompolitedState;
}
