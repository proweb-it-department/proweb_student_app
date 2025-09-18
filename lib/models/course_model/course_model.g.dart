// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseModel _$CourseModelFromJson(Map<String, dynamic> json) => _CourseModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  adsBanner: json['ads_banner'] as String?,
  color: json['color'] as String?,
  archived: json['archived'] as bool?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CourseModelToJson(_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ads_banner': instance.adsBanner,
      'color': instance.color,
      'archived': instance.archived,
      'categories': instance.categories,
    };

_Categories _$CategoriesFromJson(Map<String, dynamic> json) => _Categories(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  key: json['key'] as String?,
  color: json['color'] as String?,
);

Map<String, dynamic> _$CategoriesToJson(_Categories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'key': instance.key,
      'color': instance.color,
    };
