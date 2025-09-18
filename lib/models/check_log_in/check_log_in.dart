import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'check_log_in.freezed.dart';
part 'check_log_in.g.dart';

@freezed
abstract class CheckLogIn with _$CheckLogIn {
  const factory CheckLogIn({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'has_usable_password') required bool hasUsablePassword,
    @JsonKey(name: 'sended') dynamic sended,
  }) = _CheckLogIn;

  factory CheckLogIn.fromJson(Map<String, Object?> json) =>
      _$CheckLogInFromJson(json);
}
