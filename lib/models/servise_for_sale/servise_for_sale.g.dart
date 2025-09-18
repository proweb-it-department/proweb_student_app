// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servise_for_sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiseForSale _$ServiseForSaleFromJson(Map<String, dynamic> json) =>
    _ServiseForSale(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdById: (json['created_by_id'] as num?)?.toInt(),
      updatedById: (json['updated_by_id'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      days: (json['days'] as num?)?.toInt(),
      type: $enumDecodeNullable(_$ServiceTypeEnumMap, json['type']),
      price: json['price'] as String?,
      disposable: json['disposable'] as bool?,
      status: $enumDecodeNullable(_$ServiceStatusEnumMap, json['status']),
      purchaseAvailable: json['purchase_available'] as bool?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$ServiseForSaleToJson(_ServiseForSale instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by_id': instance.createdById,
      'updated_by_id': instance.updatedById,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'days': instance.days,
      'type': _$ServiceTypeEnumMap[instance.type],
      'price': instance.price,
      'disposable': instance.disposable,
      'status': _$ServiceStatusEnumMap[instance.status],
      'purchase_available': instance.purchaseAvailable,
      'cover': instance.cover,
    };

const _$ServiceTypeEnumMap = {
  ServiceType.video: 'video',
  ServiceType.coworking: 'coworking',
  ServiceType.text: 'text',
};

const _$ServiceStatusEnumMap = {
  ServiceStatus.draft: 'draft',
  ServiceStatus.active: 'active',
  ServiceStatus.archive: 'archive',
};
