import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'my_purchases_tarif.freezed.dart';
part 'my_purchases_tarif.g.dart';

@freezed
abstract class MyPurchasesTarif with _$MyPurchasesTarif {
  const factory MyPurchasesTarif({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'course') Course? course,
    @JsonKey(name: 'services') List<Services>? services,
    @JsonKey(name: 'products') List<ProductsTarif>? products,
    @JsonKey(name: 'student') Student? student,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'paid') String? paid,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'main_id') int? mainId,
    @JsonKey(name: 'access') bool? access,
    @JsonKey(name: 'frozen') bool? frozen,
    @JsonKey(name: 'installment') bool? installment,
  }) = _MyPurchasesTarif;

  factory MyPurchasesTarif.fromJson(Map<String, Object?> json) =>
      _$MyPurchasesTarifFromJson(json);
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
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'cover') String? cover,
  }) = _Service;

  factory Service.fromJson(Map<String, Object?> json) =>
      _$ServiceFromJson(json);
}

@freezed
abstract class ProductsTarif with _$ProductsTarif {
  const factory ProductsTarif({
    @JsonKey(name: 'product') Product? product,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'full_access') bool? fullAccess,
    @JsonKey(name: 'lesson_number') int? lessonNumber,
  }) = _ProductsTarif;

  factory ProductsTarif.fromJson(Map<String, Object?> json) =>
      _$ProductsTarifFromJson(json);
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

@freezed
abstract class Student with _$Student {
  const factory Student({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'group_id') int? groupId,
    @JsonKey(name: 'user_id') int? userId,
  }) = _Student;

  factory Student.fromJson(Map<String, Object?> json) =>
      _$StudentFromJson(json);
}
