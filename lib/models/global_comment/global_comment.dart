import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
part 'global_comment.freezed.dart';
part 'global_comment.g.dart';

@freezed
abstract class GlobalComment with _$GlobalComment {
  const factory GlobalComment({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'parent') Parent? parent,
    @JsonKey(name: 'files') List<Files>? files,
    @JsonKey(name: 'childrens') List<Childrens>? childrens,
  }) = _GlobalComment;

  factory GlobalComment.fromJson(Map<String, Object?> json) =>
      _$GlobalCommentFromJson(json);
}

@freezed
abstract class Parent with _$Parent {
  const factory Parent({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'content') String? content,
  }) = _Parent;

  factory Parent.fromJson(Map<String, Object?> json) => _$ParentFromJson(json);
}

@freezed
abstract class Files with _$Files {
  const factory Files({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'file') String? file,
  }) = _Files;

  factory Files.fromJson(Map<String, Object?> json) => _$FilesFromJson(json);
}

@freezed
abstract class Childrens with _$Childrens {
  const factory Childrens({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'content') String? content,
  }) = _Childrens;

  factory Childrens.fromJson(Map<String, Object?> json) =>
      _$ChildrensFromJson(json);
}
