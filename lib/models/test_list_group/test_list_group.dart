import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/models/test_student_relation/test_student_relation.dart';
part 'test_list_group.freezed.dart';
part 'test_list_group.g.dart';

@freezed
abstract class TestListGroup with _$TestListGroup {
  const factory TestListGroup({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'total_score') String? totalScore,
    @JsonKey(name: 'json_answer') List<JsonAnswer>? jsonAnswer,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'group_id') int? groupId,
    @JsonKey(name: 'testing') Testing? testing,
  }) = _TestListGroup;

  factory TestListGroup.fromJson(Map<String, Object?> json) =>
      _$TestListGroupFromJson(json);
}

@freezed
abstract class Testing with _$Testing {
  const factory Testing({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Testing;

  factory Testing.fromJson(Map<String, Object?> json) =>
      _$TestingFromJson(json);
}
