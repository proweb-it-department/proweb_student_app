import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
part 'course_version_model.freezed.dart';
part 'course_version_model.g.dart';

@freezed
abstract class CourseVersionModel with _$CourseVersionModel {
  const factory CourseVersionModel({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'course_version_id') int? courseVersionId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'sort') int? sort,
  }) = _CourseVersionModel;

  factory CourseVersionModel.fromJson(Map<String, Object?> json) =>
      _$CourseVersionModelFromJson(json);
}
