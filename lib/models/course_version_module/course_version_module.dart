import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'course_version_module.freezed.dart';
part 'course_version_module.g.dart';

@freezed
abstract class CourseVersionModule with _$CourseVersionModule {
  const factory CourseVersionModule({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'course_version_id') int? courseVersionId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'sort') int? sort,
  }) = _CourseVersionModule;

  factory CourseVersionModule.fromJson(Map<String, Object?> json) =>
      _$CourseVersionModuleFromJson(json);
}
