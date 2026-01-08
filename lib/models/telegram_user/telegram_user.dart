import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'telegram_user.freezed.dart';
part 'telegram_user.g.dart';

@freezed
abstract class TelegramUser with _$TelegramUser {
  const factory TelegramUser({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'status') String? status,
  }) = _TelegramUser;

  factory TelegramUser.fromJson(Map<String, Object?> json) =>
      _$TelegramUserFromJson(json);
}
