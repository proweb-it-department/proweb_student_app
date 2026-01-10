import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'telegram_connect_url.freezed.dart';
part 'telegram_connect_url.g.dart';

@freezed
abstract class TelegramConnectUrl with _$TelegramConnectUrl {
  const factory TelegramConnectUrl({@JsonKey(name: 'url') String? url}) =
      _TelegramConnectUrl;

  factory TelegramConnectUrl.fromJson(Map<String, Object?> json) =>
      _$TelegramConnectUrlFromJson(json);
}
