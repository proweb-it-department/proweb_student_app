// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseModel _$CourseModelFromJson(Map<String, dynamic> json) => _CourseModel(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  banner: json['banner'] as String?,
  adsBanner: json['ads_banner'] as String?,
  color: json['color'] as String?,
  description: json['description'] as String?,
  language: json['language'] as String?,
  defaultVersion: json['default_version'] == null
      ? null
      : DefaultVersion.fromJson(
          json['default_version'] as Map<String, dynamic>,
        ),
  archived: json['archived'] as bool?,
  format: json['format'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CourseModelToJson(_CourseModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'banner': instance.banner,
      'ads_banner': instance.adsBanner,
      'color': instance.color,
      'description': instance.description,
      'language': instance.language,
      'default_version': instance.defaultVersion,
      'archived': instance.archived,
      'format': instance.format,
      'categories': instance.categories,
    };

_DefaultVersion _$DefaultVersionFromJson(Map<String, dynamic> json) =>
    _DefaultVersion(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      version: (json['version'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DefaultVersionToJson(_DefaultVersion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
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
