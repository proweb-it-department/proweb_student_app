import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'session_token.freezed.dart';
part 'session_token.g.dart';

@freezed
abstract class SessionToken with _$SessionToken {
  const factory SessionToken({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'since_epoch_end') required int sinceEpochEnd,
    @JsonKey(name: 'length_time') required int lengthTime,
  }) = _SessionToken;

  factory SessionToken.fromJson(Map<String, Object?> json) =>
      _$SessionTokenFromJson(json);
}
