import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/user/user.dart';
part 'sessions_list_item.freezed.dart';
part 'sessions_list_item.g.dart';

@freezed
abstract class SessionsListItemModel with _$SessionsListItemModel {
  const factory SessionsListItemModel({
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UpdatedBy? updatedBy,
    @JsonKey(name: 'session_id') required int sessionId,
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'ip_addr') String? ipAddr,
    @JsonKey(name: 'device_name') required String deviceName,
    @JsonKey(name: 'device_type') required String deviceType,
  }) = _SessionsListItemModel;

  factory SessionsListItemModel.fromJson(Map<String, Object?> json) => _$SessionsListItemModelFromJson(json);
}

@freezed
abstract class UserIdDefault with _$UserIdDefault {
  const factory UserIdDefault({@JsonKey(name: 'id') int? id, @JsonKey(name: 'user_id') int? userId, @JsonKey(name: 'user') User? user}) = _UserIdDefault;

  factory UserIdDefault.fromJson(Map<String, Object?> json) => _$UserIdDefaultFromJson(json);
}

@freezed
abstract class UpdatedBy with _$UpdatedBy {
  const factory UpdatedBy({@JsonKey(name: 'id') int? id}) = _UpdatedBy;

  factory UpdatedBy.fromJson(Map<String, Object?> json) => _$UpdatedByFromJson(json);
}
