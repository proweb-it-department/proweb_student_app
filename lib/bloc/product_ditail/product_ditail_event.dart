part of 'product_ditail_bloc.dart';

@freezed
abstract class ProductDitailEvent with _$ProductDitailEvent {
  const factory ProductDitailEvent.started({required int id}) = _Started;
  const factory ProductDitailEvent.buy({required int id}) = _Buy;
}
