// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cups _$CupsFromJson(Map<String, dynamic> json) => _Cups(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] == null
      ? null
      : CupName.fromJson(json['name'] as Map<String, dynamic>),
  description: json['description'] == null
      ? null
      : CupName.fromJson(json['description'] as Map<String, dynamic>),
  icon: json['icon'] as String?,
  coins: (json['coins'] as num?)?.toInt(),
  isActive: json['is_active'] as bool?,
  rewardAvailableForAchievement:
      json['reward_available_for_achievement'] as bool?,
  users: (json['users'] as List<dynamic>?)
      ?.map((e) => CupsUsers.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CupsToJson(_Cups instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'icon': instance.icon,
  'coins': instance.coins,
  'is_active': instance.isActive,
  'reward_available_for_achievement': instance.rewardAvailableForAchievement,
  'users': instance.users,
};

_CupName _$CupNameFromJson(Map<String, dynamic> json) =>
    _CupName(ru: json['ru'] as String?, uz: json['uz'] as String?);

Map<String, dynamic> _$CupNameToJson(_CupName instance) => <String, dynamic>{
  'ru': instance.ru,
  'uz': instance.uz,
};

_CupsUsers _$CupsUsersFromJson(Map<String, dynamic> json) => _CupsUsers(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  isAchieved: json['is_achieved'] as bool?,
  achievedAt: json['achieved_at'] as String?,
  isRewardReceived: json['is_reward_received'] as bool?,
  rewardReceivedAt: json['reward_received_at'] as String?,
);

Map<String, dynamic> _$CupsUsersToJson(_CupsUsers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'is_achieved': instance.isAchieved,
      'achieved_at': instance.achievedAt,
      'is_reward_received': instance.isRewardReceived,
      'reward_received_at': instance.rewardReceivedAt,
    };
