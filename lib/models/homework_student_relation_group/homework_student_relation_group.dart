import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'homework_student_relation_group.freezed.dart';
part 'homework_student_relation_group.g.dart';

@freezed
abstract class HomeworkStudentRelationGroup
    with _$HomeworkStudentRelationGroup {
  const factory HomeworkStudentRelationGroup({
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
    @JsonKey(name: 'student') Student? student,
    @JsonKey(name: 'homework') Homework? homework,
    @JsonKey(name: 'homework_materials')
    List<HomeworkMaterials>? homeworkMaterials,
    @JsonKey(name: 'deadline_expired') bool? deadlineExpired,
    @JsonKey(name: 'check_expired') bool? checkExpired,
    @JsonKey(name: 'has_material') bool? hasMaterial,
    @JsonKey(name: 'retake_check_expired') bool? retakeCheckExpired,
    @JsonKey(name: 'last_lesson_number') int? lastLessonNumber,
    @JsonKey(name: 'check_deadline_lesson_number')
    int? checkDeadlineLessonNumber,
    @JsonKey(name: 'checked_retaken_at') String? checkedRetakenAt,
  }) = _HomeworkStudentRelationGroup;

  factory HomeworkStudentRelationGroup.fromJson(Map<String, Object?> json) =>
      _$HomeworkStudentRelationGroupFromJson(json);
}

@freezed
abstract class Student with _$Student {
  const factory Student({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'group_user_id') int? groupUserId,
    @JsonKey(name: 'user') UserIdDefault? user,
    @JsonKey(name: 'status', unknownEnumValue: StudentStatus.unknown)
    StudentStatus? status,
  }) = _Student;

  factory Student.fromJson(Map<String, Object?> json) =>
      _$StudentFromJson(json);
}

@freezed
abstract class Homework with _$Homework {
  const factory Homework({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'assigned_date') String? assignedDate,
  }) = _Homework;

  factory Homework.fromJson(Map<String, Object?> json) =>
      _$HomeworkFromJson(json);
}

@freezed
abstract class HomeworkMaterials with _$HomeworkMaterials {
  const factory HomeworkMaterials({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'file') String? file,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'description') String? description,
  }) = _HomeworkMaterials;

  factory HomeworkMaterials.fromJson(Map<String, Object?> json) =>
      _$HomeworkMaterialsFromJson(json);
}
