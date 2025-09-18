import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/products/products.dart';
part 'my_purchases.freezed.dart';
part 'my_purchases.g.dart';

@freezed
abstract class MyPurchases with _$MyPurchases {
  const factory MyPurchases({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'product') Products? product,
    @JsonKey(name: 'module_access_count') int? moduleAccessCount,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'sale_type') String? saleType,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'price_coin') int? priceCoin,
    @JsonKey(name: 'assessment') String? assessment,
    @JsonKey(name: 'access') bool? access,
  }) = _MyPurchases;

  factory MyPurchases.fromJson(Map<String, Object?> json) =>
      _$MyPurchasesFromJson(json);
}
