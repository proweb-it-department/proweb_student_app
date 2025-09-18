// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModuleMaterial _$ModuleMaterialFromJson(Map<String, dynamic> json) =>
    _ModuleMaterial(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdById: (json['created_by_id'] as num?)?.toInt(),
      updatedById: (json['updated_by_id'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      moduleId: (json['module_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      cover: json['cover'] as String?,
      position: (json['position'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      description: (json['description'] as List<dynamic>?)
          ?.map((e) => EditorJsBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$ModuleMaterialTypeEnumMap, json['type']),
      mentor: json['mentor'] as bool?,
      middleRating: json['middle_rating'] as String?,
    );

Map<String, dynamic> _$ModuleMaterialToJson(_ModuleMaterial instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by_id': instance.createdById,
      'updated_by_id': instance.updatedById,
      'id': instance.id,
      'module_id': instance.moduleId,
      'name': instance.name,
      'cover': instance.cover,
      'position': instance.position,
      'duration': instance.duration,
      'description': instance.description,
      'type': _$ModuleMaterialTypeEnumMap[instance.type],
      'mentor': instance.mentor,
      'middle_rating': instance.middleRating,
    };

const _$ModuleMaterialTypeEnumMap = {
  ModuleMaterialType.text: 'text',
  ModuleMaterialType.video: 'video',
  ModuleMaterialType.test: 'test',
  ModuleMaterialType.practice: 'practice',
};
