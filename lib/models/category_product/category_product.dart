import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'category_product.freezed.dart';
part 'category_product.g.dart';

@freezed
abstract class CategoryProduct with _$CategoryProduct {
  const factory CategoryProduct({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'color') String? color,
  }) = _CategoryProduct;

  factory CategoryProduct.fromJson(Map<String, Object?> json) =>
      _$CategoryProductFromJson(json);
}
