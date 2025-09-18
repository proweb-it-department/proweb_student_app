// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryProduct _$CategoryProductFromJson(Map<String, dynamic> json) =>
    _CategoryProduct(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$CategoryProductToJson(_CategoryProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
    };
