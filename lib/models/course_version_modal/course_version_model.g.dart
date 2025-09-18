// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseVersionModel _$CourseVersionModelFromJson(Map<String, dynamic> json) =>
    _CourseVersionModel(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      courseVersionId: (json['course_version_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CourseVersionModelToJson(_CourseVersionModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'course_version_id': instance.courseVersionId,
      'name': instance.name,
      'description': instance.description,
      'sort': instance.sort,
    };
