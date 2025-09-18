part of 'shop_product_bloc.dart';

@freezed
abstract class ShopProductEvent with _$ShopProductEvent {
  const factory ShopProductEvent.load({
    required int offset,
    required int limit,
    String? language,
    int? categoryId,
  }) = _LoadEvent;
}
