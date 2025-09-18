import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/editorjs/editorjs_model.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'material_module_item.freezed.dart';
part 'material_module_item.g.dart';

@freezed
abstract class MaterialModuleItem with _$MaterialModuleItem {
  const factory MaterialModuleItem({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'files') List<Files>? files,
    @JsonKey(name: 'videos') List<Videos>? videos,
    @JsonKey(name: 'questions') List<Questions>? questions,
    @JsonKey(name: 'module') Module? module,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'cover') String? cover,
    @JsonKey(name: 'position') int? position,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'description') List<EditorJsBlock>? description,
    @JsonKey(name: 'type') ModuleMaterialType? type,
    @JsonKey(name: 'mentor') bool? mentor,
    @JsonKey(name: 'middle_rating') String? middleRating,
  }) = _MaterialModuleItem;

  factory MaterialModuleItem.fromJson(Map<String, Object?> json) =>
      _$MaterialModuleItemFromJson(json);
}

@freezed
abstract class Files with _$Files {
  const factory Files({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'material_id') int? materialId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'file') String? file,
    @JsonKey(name: 'position') int? position,
  }) = _Files;

  factory Files.fromJson(Map<String, Object?> json) => _$FilesFromJson(json);
}

@freezed
abstract class Videos with _$Videos {
  const factory Videos({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'material_id') int? materialId,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'position') int? position,
    VideoModel? video,
  }) = _Videos;

  factory Videos.fromJson(Map<String, Object?> json) => _$VideosFromJson(json);
}

@freezed
abstract class Questions with _$Questions {
  const factory Questions({
    @JsonKey(name: 'answers') List<Answers>? answers,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'material_id') int? materialId,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'video') String? video,
    @JsonKey(name: 'multiselect') bool? multiselect,
    @JsonKey(name: 'position') int? position,
  }) = _Questions;

  factory Questions.fromJson(Map<String, Object?> json) =>
      _$QuestionsFromJson(json);
}

@freezed
abstract class Answers with _$Answers {
  const factory Answers({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'question_id') int? questionId,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'video') String? video,
    @JsonKey(name: 'correct') bool? correct,
  }) = _Answers;

  factory Answers.fromJson(Map<String, Object?> json) =>
      _$AnswersFromJson(json);
}

@freezed
abstract class Module with _$Module {
  const factory Module({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'position') int? position,
    @JsonKey(name: 'status') String? status,
  }) = _Module;

  factory Module.fromJson(Map<String, Object?> json) => _$ModuleFromJson(json);
}
