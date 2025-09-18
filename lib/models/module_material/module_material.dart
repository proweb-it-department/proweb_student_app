import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/editorjs/editorjs_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'module_material.freezed.dart';
part 'module_material.g.dart';

@freezed
abstract class ModuleMaterial with _$ModuleMaterial {
  const factory ModuleMaterial({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'module_id') int? moduleId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'cover') String? cover,
    @JsonKey(name: 'position') int? position,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'description') List<EditorJsBlock>? description,
    @JsonKey(name: 'type') ModuleMaterialType? type,
    @JsonKey(name: 'mentor') bool? mentor,
    @JsonKey(name: 'middle_rating') String? middleRating,
  }) = _ModuleMaterial;

  factory ModuleMaterial.fromJson(Map<String, Object?> json) =>
      _$ModuleMaterialFromJson(json);
}
