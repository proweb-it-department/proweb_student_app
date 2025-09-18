import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'products.freezed.dart';
part 'products.g.dart';

@freezed
abstract class Products with _$Products {
  const factory Products({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'category') Category? category,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'type') ProductType? type,
    @JsonKey(name: 'hide') bool? hideProperty,
    @JsonKey(name: 'cover') String? cover,
    @JsonKey(name: 'hover_cover') String? hoverCover,
    @JsonKey(name: 'module_count') int? moduleCount,
    @JsonKey(name: 'total_count_time') int? totalCountTime,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'sale_type') ProductSaleType? saleType,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'price_coin') int? priceCoin,
    @JsonKey(name: 'limit') int? limit,
    @JsonKey(name: 'middle_rating') String? middleRating,
    @JsonKey(name: 'is_practical') bool? isPractical,
    @JsonKey(name: 'purchased') bool? purchased,
  }) = _Products;

  factory Products.fromJson(Map<String, Object?> json) =>
      _$ProductsFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'color') String? color,
  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}
