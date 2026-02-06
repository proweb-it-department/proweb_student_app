import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
part 'homework_list_group.freezed.dart';
part 'homework_list_group.g.dart';

@freezed
abstract class HomeworkListGroup with _$HomeworkListGroup {
  const factory HomeworkListGroup({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'checked') bool? checked,
    @JsonKey(name: 'checked_at') String? checkedAt,
    @JsonKey(name: 'deadline_lesson_number') int? deadlineLessonNumber,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'material_deleted') bool? materialDeleted,
    @JsonKey(name: 'group_id') int? groupId,
    @JsonKey(name: 'homework') Homework? homework,
    @JsonKey(name: 'has_material') bool? hasMaterial,
    MyGroupsItem? myGroup,
  }) = _HomeworkListGroup;

  factory HomeworkListGroup.fromJson(Map<String, Object?> json) =>
      _$HomeworkListGroupFromJson(json);
}

@freezed
abstract class Homework with _$Homework {
  const factory Homework({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Homework;

  factory Homework.fromJson(Map<String, Object?> json) =>
      _$HomeworkFromJson(json);
}
