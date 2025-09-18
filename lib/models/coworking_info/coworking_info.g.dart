// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coworking_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoworkingInfo _$CoworkingInfoFromJson(Map<String, dynamic> json) =>
    _CoworkingInfo(
      videoKey: json['video_key'] as String?,
      rules: (json['rules'] as List<dynamic>?)
          ?.map((e) => Rules.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoworkingInfoToJson(_CoworkingInfo instance) =>
    <String, dynamic>{'video_key': instance.videoKey, 'rules': instance.rules};

_Rules _$RulesFromJson(Map<String, dynamic> json) => _Rules(
  title: json['title'] as String?,
  description: json['description'] as String?,
  order: (json['order'] as num?)?.toInt(),
);

Map<String, dynamic> _$RulesToJson(_Rules instance) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'order': instance.order,
};
