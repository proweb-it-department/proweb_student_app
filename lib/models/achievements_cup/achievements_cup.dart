import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'achievements_cup.freezed.dart';
part 'achievements_cup.g.dart';

@freezed
abstract class AchievementsCup with _$AchievementsCup {
  const factory AchievementsCup({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'target_count') int? targetCount,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'action_type') String? actionType,
    @JsonKey(name: 'progress_type') String? progressType,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'coins') int? coins,
    @JsonKey(name: 'users') List<AchievementsCupUsers>? users,
  }) = _AchievementsCup;

  factory AchievementsCup.fromJson(Map<String, Object?> json) =>
      _$AchievementsCupFromJson(json);
}

@freezed
abstract class AchievementsCupUsers with _$AchievementsCupUsers {
  const factory AchievementsCupUsers({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'current_progress') int? currentProgress,
    @JsonKey(name: 'is_achieved') bool? isAchieved,
    @JsonKey(name: 'achieved_at') String? achievedAt,
    @JsonKey(name: 'is_reward_received') bool? isRewardReceived,
    @JsonKey(name: 'reward_received_at') String? rewardReceivedAt,
  }) = _AchievementsCupUsers;

  factory AchievementsCupUsers.fromJson(Map<String, Object?> json) =>
      _$AchievementsCupUsersFromJson(json);
}
