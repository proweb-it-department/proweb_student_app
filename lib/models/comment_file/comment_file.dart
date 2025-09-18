import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'comment_file.freezed.dart';
part 'comment_file.g.dart';

@freezed
abstract class CommentFile with _$CommentFile {
  const factory CommentFile({@JsonKey(name: 'id') int? id}) = _CommentFile;

  factory CommentFile.fromJson(Map<String, Object?> json) =>
      _$CommentFileFromJson(json);
}
