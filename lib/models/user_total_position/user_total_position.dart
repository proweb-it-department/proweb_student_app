import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/user/user.dart';
part 'user_total_position.freezed.dart';
part 'user_total_position.g.dart';

@freezed
abstract class UserTotalPosition with _$UserTotalPosition {
  const factory UserTotalPosition({
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'position') int? position,
    @JsonKey(name: 'total_score') int? totalScore,
    @JsonKey(name: 'last_update_at') String? lastUpdateAt,
  }) = _UserTotalPosition;

  factory UserTotalPosition.fromJson(Map<String, Object?> json) =>
      _$UserTotalPositionFromJson(json);
}
