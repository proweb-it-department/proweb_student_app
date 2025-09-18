part of 'my_purchases_product_bloc.dart';

@freezed
abstract class MyPurchasesProductEvent with _$MyPurchasesProductEvent {
  const factory MyPurchasesProductEvent.started({int? categoryId}) = _Started;
}
