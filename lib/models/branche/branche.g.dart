// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branche.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Branche _$BrancheFromJson(Map<String, dynamic> json) => _Branche(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  country: json['country'] as String?,
  city: json['city'] as String?,
  street: json['street'] as String?,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
  status: json['status'] as String?,
  cabinetCount: (json['cabinet_count'] as num?)?.toInt(),
  cwCount: (json['cw_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$BrancheToJson(_Branche instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'country': instance.country,
  'city': instance.city,
  'street': instance.street,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'status': instance.status,
  'cabinet_count': instance.cabinetCount,
  'cw_count': instance.cwCount,
};
