// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_module_access.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModuleAccess _$ProductModuleAccessFromJson(Map<String, dynamic> json) =>
    _ProductModuleAccess(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdById: (json['created_by_id'] as num?)?.toInt(),
      updatedById: (json['updated_by_id'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      moduleId: (json['module_id'] as num?)?.toInt(),
      access: json['access'] as bool?,
    );

Map<String, dynamic> _$ProductModuleAccessToJson(
  _ProductModuleAccess instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by_id': instance.createdById,
  'updated_by_id': instance.updatedById,
  'id': instance.id,
  'user_id': instance.userId,
  'module_id': instance.moduleId,
  'access': instance.access,
};
