import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
part 'material_homepage_group.freezed.dart';
part 'material_homepage_group.g.dart';

@freezed
abstract class MaterialHomepageGroup with _$MaterialHomepageGroup {
  const factory MaterialHomepageGroup({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'group_id') int? groupId,
    @JsonKey(name: 'material') MaterialData? material,
  }) = _MaterialHomepageGroup;

  factory MaterialHomepageGroup.fromJson(Map<String, Object?> json) =>
      _$MaterialHomepageGroupFromJson(json);
}

@freezed
abstract class MaterialData with _$MaterialData {
  const factory MaterialData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _MaterialData;

  factory MaterialData.fromJson(Map<String, Object?> json) =>
      _$MaterialDataFromJson(json);
}
