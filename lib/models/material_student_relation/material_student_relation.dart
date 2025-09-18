import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/homework_group/homework_group.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
part 'material_student_relation.freezed.dart';
part 'material_student_relation.g.dart';

@freezed
abstract class MaterialStudentRelation with _$MaterialStudentRelation {
  const factory MaterialStudentRelation({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'module_id') int? moduleId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'sort') int? sort,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'assigned_date') String? assignedDate,
    @JsonKey(name: 'attached_data') List<AttachedData>? attachedData,
  }) = _MaterialStudentRelation;

  factory MaterialStudentRelation.fromJson(Map<String, Object?> json) =>
      _$MaterialStudentRelationFromJson(json);
}
