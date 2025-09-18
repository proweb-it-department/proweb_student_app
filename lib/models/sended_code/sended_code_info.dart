import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'sended_code_info.freezed.dart';
part 'sended_code_info.g.dart';

@freezed
abstract class SendedCodeInfo with _$SendedCodeInfo {
  const factory SendedCodeInfo({@JsonKey(name: 'sended') dynamic sended}) =
      _SendedCodeInfo;

  factory SendedCodeInfo.fromJson(Map<String, Object?> json) =>
      _$SendedCodeInfoFromJson(json);
}
