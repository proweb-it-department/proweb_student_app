// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TelegramUser _$TelegramUserFromJson(Map<String, dynamic> json) =>
    _TelegramUser(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      phone: json['phone'] as String?,
      language: json['language'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$TelegramUserToJson(_TelegramUser instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'id': instance.id,
      'username': instance.username,
      'phone': instance.phone,
      'language': instance.language,
      'status': instance.status,
    };
