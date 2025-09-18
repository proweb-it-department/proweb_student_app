import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'my_purchases_service.freezed.dart';
part 'my_purchases_service.g.dart';

@freezed
abstract class MyPurchasesService with _$MyPurchasesService {
  const factory MyPurchasesService({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'student') Student? student,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'main_id') int? mainId,
    @JsonKey(name: 'package_id') int? packageId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'days') int? days,
    @JsonKey(name: 'type') ServiceType? type,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'disposable') bool? disposable,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'purchase_available') bool? purchaseAvailable,
    @JsonKey(name: 'access') bool? access,
    @JsonKey(name: 'processed') bool? processed,
    @JsonKey(name: 'cover') String? cover,
  }) = _MyPurchasesService;

  factory MyPurchasesService.fromJson(Map<String, Object?> json) =>
      _$MyPurchasesServiceFromJson(json);
}

@freezed
abstract class Student with _$Student {
  const factory Student({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'group') Group? group,
  }) = _Student;

  factory Student.fromJson(Map<String, Object?> json) =>
      _$StudentFromJson(json);
}

@freezed
abstract class Group with _$Group {
  const factory Group({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'course') Course? course,
  }) = _Group;

  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);
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
