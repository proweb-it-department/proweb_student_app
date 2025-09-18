import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'products_modules.freezed.dart';
part 'products_modules.g.dart';

@freezed
abstract class ProductsModules with _$ProductsModules {
  const factory ProductsModules({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'position') int? position,
    @JsonKey(name: 'status') ProductsModuleStatus? status,
    @JsonKey(name: 'access') bool? access,
  }) = _ProductsModules;

  factory ProductsModules.fromJson(Map<String, Object?> json) =>
      _$ProductsModulesFromJson(json);
}
