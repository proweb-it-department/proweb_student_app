// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievements_cup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AchievementsCup _$AchievementsCupFromJson(Map<String, dynamic> json) =>
    _AchievementsCup(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      targetCount: (json['target_count'] as num?)?.toInt(),
      isActive: json['is_active'] as bool?,
      actionType: json['action_type'] as String?,
      progressType: json['progress_type'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      coins: (json['coins'] as num?)?.toInt(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => AchievementsCupUsers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AchievementsCupToJson(_AchievementsCup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'target_count': instance.targetCount,
      'is_active': instance.isActive,
      'action_type': instance.actionType,
      'progress_type': instance.progressType,
      'category_id': instance.categoryId,
      'coins': instance.coins,
      'users': instance.users,
    };

_AchievementsCupUsers _$AchievementsCupUsersFromJson(
  Map<String, dynamic> json,
) => _AchievementsCupUsers(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  currentProgress: (json['current_progress'] as num?)?.toInt(),
  isAchieved: json['is_achieved'] as bool?,
  achievedAt: json['achieved_at'] as String?,
  isRewardReceived: json['is_reward_received'] as bool?,
  rewardReceivedAt: json['reward_received_at'] as String?,
);

Map<String, dynamic> _$AchievementsCupUsersToJson(
  _AchievementsCupUsers instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'current_progress': instance.currentProgress,
  'is_achieved': instance.isAchieved,
  'achieved_at': instance.achievedAt,
  'is_reward_received': instance.isRewardReceived,
  'reward_received_at': instance.rewardReceivedAt,
};
