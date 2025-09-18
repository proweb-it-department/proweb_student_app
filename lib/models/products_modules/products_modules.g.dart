// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_modules.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsModules _$ProductsModulesFromJson(Map<String, dynamic> json) =>
    _ProductsModules(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdById: (json['created_by_id'] as num?)?.toInt(),
      updatedById: (json['updated_by_id'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      position: (json['position'] as num?)?.toInt(),
      status: $enumDecodeNullable(
        _$ProductsModuleStatusEnumMap,
        json['status'],
      ),
      access: json['access'] as bool?,
    );

Map<String, dynamic> _$ProductsModulesToJson(_ProductsModules instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by_id': instance.createdById,
      'updated_by_id': instance.updatedById,
      'id': instance.id,
      'product_id': instance.productId,
      'name': instance.name,
      'description': instance.description,
      'position': instance.position,
      'status': _$ProductsModuleStatusEnumMap[instance.status],
      'access': instance.access,
    };

const _$ProductsModuleStatusEnumMap = {
  ProductsModuleStatus.draft: 'draft',
  ProductsModuleStatus.active: 'active',
  ProductsModuleStatus.archive: 'archive',
};
