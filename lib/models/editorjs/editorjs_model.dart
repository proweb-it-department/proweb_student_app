import 'package:freezed_annotation/freezed_annotation.dart';

part 'editorjs_model.freezed.dart';
part 'editorjs_model.g.dart';

@freezed
abstract class EditorJsBlock with _$EditorJsBlock {
  const factory EditorJsBlock({
    required String id,
    required String type,
    required Map<String, dynamic> data,
  }) = _EditorJsBlock;

  factory EditorJsBlock.fromJson(Map<String, dynamic> json) =>
      _$EditorJsBlockFromJson(json);
}

/// Header
@freezed
abstract class HeaderData with _$HeaderData {
  const factory HeaderData({required String text, required int level}) =
      _HeaderData;

  factory HeaderData.fromJson(Map<String, dynamic> json) =>
      _$HeaderDataFromJson(json);
}

/// Paragraph
@freezed
abstract class ParagraphData with _$ParagraphData {
  const factory ParagraphData({required String text}) = _ParagraphData;

  factory ParagraphData.fromJson(Map<String, dynamic> json) =>
      _$ParagraphDataFromJson(json);
}

/// List
@freezed
abstract class ListData with _$ListData {
  const factory ListData({
    required List<String> items,
    required String style, // "ordered" | "unordered"
  }) = _ListData;

  factory ListData.fromJson(Map<String, dynamic> json) =>
      _$ListDataFromJson(json);
}

/// Code
@freezed
abstract class CodeData with _$CodeData {
  const factory CodeData({required String code, required String languageCode}) =
      _CodeData;

  factory CodeData.fromJson(Map<String, dynamic> json) =>
      _$CodeDataFromJson(json);
}
