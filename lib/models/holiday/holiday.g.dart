// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Holiday _$HolidayFromJson(Map<String, dynamic> json) => _Holiday(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  type: json['type'] as String?,
  date: json['date'] as String?,
  banner: json['banner'] as String?,
  isActive: json['is_active'] as bool?,
);

Map<String, dynamic> _$HolidayToJson(_Holiday instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'type': instance.type,
  'date': instance.date,
  'banner': instance.banner,
  'is_active': instance.isActive,
};
