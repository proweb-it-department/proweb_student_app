// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeworkGroup _$HomeworkGroupFromJson(Map<String, dynamic> json) =>
    _HomeworkGroup(
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
      level: json['level'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
      status: json['status'] as String?,
      assignedDate: json['assigned_date'] as String?,
      attachedData: (json['attached_data'] as List<dynamic>?)
          ?.map((e) => AttachedData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeworkGroupToJson(_HomeworkGroup instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'module_id': instance.moduleId,
      'name': instance.name,
      'description': instance.description,
      'level': instance.level,
      'sort': instance.sort,
      'status': instance.status,
      'assigned_date': instance.assignedDate,
      'attached_data': instance.attachedData,
    };

_AttachedData _$AttachedDataFromJson(Map<String, dynamic> json) =>
    _AttachedData(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      displayName: json['display_name'] as String?,
      link: json['link'] as String?,
      file: json['file'] as String?,
    );

Map<String, dynamic> _$AttachedDataToJson(_AttachedData instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'display_name': instance.displayName,
      'link': instance.link,
      'file': instance.file,
    };
