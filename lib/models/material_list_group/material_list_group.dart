import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
part 'material_list_group.freezed.dart';
part 'material_list_group.g.dart';

@freezed
abstract class MaterialListGroup with _$MaterialListGroup {
  const factory MaterialListGroup({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'group_id') int? groupId,
    @JsonKey(name: 'material') MaterialGroup? material,
  }) = _MaterialListGroup;

  factory MaterialListGroup.fromJson(Map<String, Object?> json) =>
      _$MaterialListGroupFromJson(json);
}

@freezed
abstract class MaterialGroup with _$MaterialGroup {
  const factory MaterialGroup({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _MaterialGroup;

  factory MaterialGroup.fromJson(Map<String, Object?> json) =>
      _$MaterialGroupFromJson(json);
}
