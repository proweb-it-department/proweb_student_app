// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionToken _$SessionTokenFromJson(Map<String, dynamic> json) =>
    _SessionToken(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      sinceEpochEnd: (json['since_epoch_end'] as num).toInt(),
      lengthTime: (json['length_time'] as num).toInt(),
    );

Map<String, dynamic> _$SessionTokenToJson(_SessionToken instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'since_epoch_end': instance.sinceEpochEnd,
      'length_time': instance.lengthTime,
    };
