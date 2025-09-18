import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'coworking_info.freezed.dart';
part 'coworking_info.g.dart';

@freezed
abstract class CoworkingInfo with _$CoworkingInfo {
  const factory CoworkingInfo({
    @JsonKey(name: 'video_key') String? videoKey,
    @JsonKey(name: 'rules') List<Rules>? rules,
  }) = _CoworkingInfo;

  factory CoworkingInfo.fromJson(Map<String, Object?> json) =>
      _$CoworkingInfoFromJson(json);
}

@freezed
abstract class Rules with _$Rules {
  const factory Rules({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'order') int? order,
  }) = _Rules;

  factory Rules.fromJson(Map<String, Object?> json) => _$RulesFromJson(json);
}
