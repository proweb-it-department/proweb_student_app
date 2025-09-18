// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_student_relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaterialStudentRelation _$MaterialStudentRelationFromJson(
  Map<String, dynamic> json,
) => _MaterialStudentRelation(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  moduleId: (json['module_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  sort: (json['sort'] as num?)?.toInt(),
  status: json['status'] as String?,
  assignedDate: json['assigned_date'] as String?,
  attachedData: (json['attached_data'] as List<dynamic>?)
      ?.map((e) => AttachedData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MaterialStudentRelationToJson(
  _MaterialStudentRelation instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'id': instance.id,
  'module_id': instance.moduleId,
  'name': instance.name,
  'description': instance.description,
  'sort': instance.sort,
  'status': instance.status,
  'assigned_date': instance.assignedDate,
  'attached_data': instance.attachedData,
};
