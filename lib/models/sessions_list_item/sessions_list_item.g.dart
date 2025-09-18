// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionsListItemModel _$SessionsListItemModelFromJson(
  Map<String, dynamic> json,
) => _SessionsListItemModel(
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UpdatedBy.fromJson(json['updated_by'] as Map<String, dynamic>),
  sessionId: (json['session_id'] as num).toInt(),
  uuid: json['uuid'] as String?,
  isActive: json['is_active'] as bool,
  location: json['location'] as String?,
  ipAddr: json['ip_addr'] as String?,
  deviceName: json['device_name'] as String,
  deviceType: json['device_type'] as String,
);

Map<String, dynamic> _$SessionsListItemModelToJson(
  _SessionsListItemModel instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'session_id': instance.sessionId,
  'uuid': instance.uuid,
  'is_active': instance.isActive,
  'location': instance.location,
  'ip_addr': instance.ipAddr,
  'device_name': instance.deviceName,
  'device_type': instance.deviceType,
};

_UserIdDefault _$UserIdDefaultFromJson(Map<String, dynamic> json) =>
    _UserIdDefault(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserIdDefaultToJson(_UserIdDefault instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user': instance.user,
    };

_UpdatedBy _$UpdatedByFromJson(Map<String, dynamic> json) =>
    _UpdatedBy(id: (json['id'] as num?)?.toInt());

Map<String, dynamic> _$UpdatedByToJson(_UpdatedBy instance) =>
    <String, dynamic>{'id': instance.id};
