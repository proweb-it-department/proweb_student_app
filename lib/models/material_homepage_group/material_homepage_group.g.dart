// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_homepage_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaterialHomepageGroup _$MaterialHomepageGroupFromJson(
  Map<String, dynamic> json,
) => _MaterialHomepageGroup(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  studentId: (json['student_id'] as num?)?.toInt(),
  groupId: (json['group_id'] as num?)?.toInt(),
  material: json['material'] == null
      ? null
      : MaterialData.fromJson(json['material'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MaterialHomepageGroupToJson(
  _MaterialHomepageGroup instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'student_id': instance.studentId,
  'group_id': instance.groupId,
  'material': instance.material,
};

_MaterialData _$MaterialDataFromJson(Map<String, dynamic> json) =>
    _MaterialData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MaterialDataToJson(_MaterialData instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
