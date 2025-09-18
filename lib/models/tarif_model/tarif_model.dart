import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'tarif_model.freezed.dart';
part 'tarif_model.g.dart';

@freezed
abstract class TarifForSale with _$TarifForSale {
  const factory TarifForSale({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'course') Course? course,
    @JsonKey(name: 'services') List<Services>? services,
    @JsonKey(name: 'products') List<ProductsinTarif>? products,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'status') String? status,
  }) = _TarifForSale;

  factory TarifForSale.fromJson(Map<String, Object?> json) =>
      _$TarifForSaleFromJson(json);
}

@freezed
abstract class Course with _$Course {
  const factory Course({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'ads_banner') String? adsBanner,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'language') String? language,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}

@freezed
abstract class Services with _$Services {
  const factory Services({
    @JsonKey(name: 'service') Service? service,
    @JsonKey(name: 'id') int? id,
  }) = _Services;

  factory Services.fromJson(Map<String, Object?> json) =>
      _$ServicesFromJson(json);
}

@freezed
abstract class Service with _$Service {
  const factory Service({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'days') int? days,
    @JsonKey(name: 'type') ServiceType? type,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'cover') String? cover,
  }) = _Service;

  factory Service.fromJson(Map<String, Object?> json) =>
      _$ServiceFromJson(json);
}

@freezed
abstract class ProductsinTarif with _$ProductsinTarif {
  const factory ProductsinTarif({
    @JsonKey(name: 'product') Product? product,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'full_access') bool? fullAccess,
    @JsonKey(name: 'lesson_number') int? lessonNumber,
  }) = _ProductsinTarif;

  factory ProductsinTarif.fromJson(Map<String, Object?> json) =>
      _$ProductsinTarifFromJson(json);
}

@freezed
abstract class Product with _$Product {
  const factory Product({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'cover') String? cover,
    @JsonKey(name: 'module_count') int? moduleCount,
    @JsonKey(name: 'total_count_time') int? totalCountTime,
    @JsonKey(name: 'status') String? status,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
