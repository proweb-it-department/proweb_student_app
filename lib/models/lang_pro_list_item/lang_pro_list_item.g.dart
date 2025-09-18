// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lang_pro_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LangProListItem _$LangProListItemFromJson(Map<String, dynamic> json) =>
    _LangProListItem(
      name: json['name'] as String?,
      shortName: json['short_name'] as String?,
      version: (json['version'] as num?)?.toInt(),
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$LangProListItemToJson(_LangProListItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'version': instance.version,
      'is_active': instance.isActive,
    };
