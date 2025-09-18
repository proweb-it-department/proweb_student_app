import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
abstract class CourseModel with _$CourseModel {
  const factory CourseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'ads_banner') String? adsBanner,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'archived') bool? archived,
    @JsonKey(name: 'categories') List<Categories>? categories,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, Object?> json) => _$CourseModelFromJson(json);
}

@freezed
abstract class Categories with _$Categories {
  const factory Categories({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'key') String? key,
    @JsonKey(name: 'color') String? color,
  }) = _Categories;

  factory Categories.fromJson(Map<String, Object?> json) => _$CategoriesFromJson(json);
}
