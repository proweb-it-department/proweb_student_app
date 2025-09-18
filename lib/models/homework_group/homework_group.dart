import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
part 'homework_group.freezed.dart';
part 'homework_group.g.dart';

@freezed
abstract class HomeworkGroup with _$HomeworkGroup {
  const factory HomeworkGroup({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'module_id') int? moduleId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'level') String? level,
    @JsonKey(name: 'sort') int? sort,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'assigned_date') String? assignedDate,
    @JsonKey(name: 'attached_data') List<AttachedData>? attachedData,
  }) = _HomeworkGroup;

  factory HomeworkGroup.fromJson(Map<String, Object?> json) =>
      _$HomeworkGroupFromJson(json);
}

@freezed
abstract class AttachedData with _$AttachedData {
  const factory AttachedData({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'file') String? file,
  }) = _AttachedData;

  factory AttachedData.fromJson(Map<String, Object?> json) =>
      _$AttachedDataFromJson(json);
}
