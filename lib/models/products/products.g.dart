// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Products _$ProductsFromJson(Map<String, dynamic> json) => _Products(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdById: (json['created_by_id'] as num?)?.toInt(),
  updatedById: (json['updated_by_id'] as num?)?.toInt(),
  category: json['category'] == null
      ? null
      : Category.fromJson(json['category'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  language: json['language'] as String?,
  type: $enumDecodeNullable(_$ProductTypeEnumMap, json['type']),
  hideProperty: json['hide'] as bool?,
  cover: json['cover'] as String?,
  hoverCover: json['hover_cover'] as String?,
  moduleCount: (json['module_count'] as num?)?.toInt(),
  totalCountTime: (json['total_count_time'] as num?)?.toInt(),
  status: json['status'] as String?,
  saleType: $enumDecodeNullable(_$ProductSaleTypeEnumMap, json['sale_type']),
  price: json['price'] as String?,
  priceCoin: (json['price_coin'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  middleRating: json['middle_rating'] as String?,
  isPractical: json['is_practical'] as bool?,
  purchased: json['purchased'] as bool?,
);

Map<String, dynamic> _$ProductsToJson(_Products instance) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by_id': instance.createdById,
  'updated_by_id': instance.updatedById,
  'category': instance.category,
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'language': instance.language,
  'type': _$ProductTypeEnumMap[instance.type],
  'hide': instance.hideProperty,
  'cover': instance.cover,
  'hover_cover': instance.hoverCover,
  'module_count': instance.moduleCount,
  'total_count_time': instance.totalCountTime,
  'status': instance.status,
  'sale_type': _$ProductSaleTypeEnumMap[instance.saleType],
  'price': instance.price,
  'price_coin': instance.priceCoin,
  'limit': instance.limit,
  'middle_rating': instance.middleRating,
  'is_practical': instance.isPractical,
  'purchased': instance.purchased,
};

const _$ProductTypeEnumMap = {
  ProductType.course: 'course',
  ProductType.extra: 'extra',
};

const _$ProductSaleTypeEnumMap = {
  ProductSaleType.money: 'money',
  ProductSaleType.coin: 'coin',
  ProductSaleType.package: 'package',
  ProductSaleType.packageMoney: 'package_money',
};

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  color: json['color'] as String?,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': instance.color,
};
