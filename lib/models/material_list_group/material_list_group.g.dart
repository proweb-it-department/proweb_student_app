// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_list_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaterialListGroup _$MaterialListGroupFromJson(Map<String, dynamic> json) =>
    _MaterialListGroup(
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
          : MaterialGroup.fromJson(json['material'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MaterialListGroupToJson(_MaterialListGroup instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'student_id': instance.studentId,
      'group_id': instance.groupId,
      'material': instance.material,
    };

_MaterialGroup _$MaterialGroupFromJson(Map<String, dynamic> json) =>
    _MaterialGroup(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MaterialGroupToJson(_MaterialGroup instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
