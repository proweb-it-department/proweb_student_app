import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'cups.freezed.dart';
part 'cups.g.dart';

@freezed
abstract class Cups with _$Cups {
  const factory Cups({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') CupName? name,
    @JsonKey(name: 'description') CupName? description,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'coins') int? coins,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'reward_available_for_achievement')
    bool? rewardAvailableForAchievement,
    @JsonKey(name: 'users') List<CupsUsers>? users,
  }) = _Cups;

  factory Cups.fromJson(Map<String, Object?> json) => _$CupsFromJson(json);
}

@freezed
abstract class CupName with _$CupName {
  const factory CupName({
    @JsonKey(name: 'ru') String? ru,
    @JsonKey(name: 'uz') String? uz,
  }) = _CupName;

  factory CupName.fromJson(Map<String, Object?> json) =>
      _$CupNameFromJson(json);
}

@freezed
abstract class CupsUsers with _$CupsUsers {
  const factory CupsUsers({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'is_achieved') bool? isAchieved,
    @JsonKey(name: 'achieved_at') String? achievedAt,
    @JsonKey(name: 'is_reward_received') bool? isRewardReceived,
    @JsonKey(name: 'reward_received_at') String? rewardReceivedAt,
  }) = _CupsUsers;

  factory CupsUsers.fromJson(Map<String, Object?> json) =>
      _$CupsUsersFromJson(json);
}
