import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'product_module_access.freezed.dart';
part 'product_module_access.g.dart';

@freezed
abstract class ProductModuleAccess with _$ProductModuleAccess {
  const factory ProductModuleAccess({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'module_id') int? moduleId,
    @JsonKey(name: 'access') bool? access,
  }) = _ProductModuleAccess;

  factory ProductModuleAccess.fromJson(Map<String, Object?> json) =>
      _$ProductModuleAccessFromJson(json);
}
