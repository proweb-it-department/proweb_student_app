part of 'product_item_bloc.dart';

@freezed
class ProductItemEvent with _$ProductItemEvent {
  const factory ProductItemEvent.started() = _Started;
}