// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_total_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserTotalPosition _$UserTotalPositionFromJson(Map<String, dynamic> json) =>
    _UserTotalPosition(
      userId: (json['user_id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      position: (json['position'] as num?)?.toInt(),
      totalScore: (json['total_score'] as num?)?.toInt(),
      lastUpdateAt: json['last_update_at'] as String?,
    );

Map<String, dynamic> _$UserTotalPositionToJson(_UserTotalPosition instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user': instance.user,
      'position': instance.position,
      'total_score': instance.totalScore,
      'last_update_at': instance.lastUpdateAt,
    };
