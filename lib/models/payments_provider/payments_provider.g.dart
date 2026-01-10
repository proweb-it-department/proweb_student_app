// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentsProviderModel _$PaymentsProviderModelFromJson(
  Map<String, dynamic> json,
) => _PaymentsProviderModel(
  name: json['name'] as String?,
  percent: (json['percent'] as num?)?.toInt(),
  icon: json['icon'] as String?,
  provider: json['provider'] as String?,
);

Map<String, dynamic> _$PaymentsProviderModelToJson(
  _PaymentsProviderModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'percent': instance.percent,
  'icon': instance.icon,
  'provider': instance.provider,
};
