// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_version_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseVersionModule _$CourseVersionModuleFromJson(Map<String, dynamic> json) =>
    _CourseVersionModule(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      id: (json['id'] as num?)?.toInt(),
      courseVersionId: (json['course_version_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CourseVersionModuleToJson(
  _CourseVersionModule instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'id': instance.id,
  'course_version_id': instance.courseVersionId,
  'name': instance.name,
  'description': instance.description,
  'sort': instance.sort,
};
