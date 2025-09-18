import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'platform_info.freezed.dart';
part 'platform_info.g.dart';

@freezed
abstract class PlatformInfo with _$PlatformInfo {
  const factory PlatformInfo({
    @JsonKey(name: 'device_name') required String deviceName,
    @JsonKey(name: 'device_type') required String deviceType,
  }) = _PlatformInfo;

  factory PlatformInfo.fromJson(Map<String, Object?> json) =>
      _$PlatformInfoFromJson(json);
}
