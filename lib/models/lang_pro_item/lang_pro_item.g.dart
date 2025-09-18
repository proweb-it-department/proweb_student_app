// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lang_pro_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LangProItem _$LangProItemFromJson(Map<String, dynamic> json) => _LangProItem(
  name: json['name'] as String?,
  shortName: json['short_name'] as String?,
  version: (json['version'] as num?)?.toInt(),
  categories: json['categories'] as Map<String, dynamic>?,
  childrens: (json['childrens'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
);

Map<String, dynamic> _$LangProItemToJson(_LangProItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'version': instance.version,
      'categories': instance.categories,
      'childrens': instance.childrens,
    };
