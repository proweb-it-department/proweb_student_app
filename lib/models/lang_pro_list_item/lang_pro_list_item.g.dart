// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lang_pro_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LangProListItem _$LangProListItemFromJson(Map<String, dynamic> json) =>
    _LangProListItem(
      currentVersion: (json['current_version'] as num?)?.toInt(),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => Languages.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LangProListItemToJson(_LangProListItem instance) =>
    <String, dynamic>{
      'current_version': instance.currentVersion,
      'languages': instance.languages,
    };

_Languages _$LanguagesFromJson(Map<String, dynamic> json) => _Languages(
  jsonFile: json['json_file'] as String?,
  code: json['code'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$LanguagesToJson(_Languages instance) =>
    <String, dynamic>{
      'json_file': instance.jsonFile,
      'code': instance.code,
      'name': instance.name,
    };
