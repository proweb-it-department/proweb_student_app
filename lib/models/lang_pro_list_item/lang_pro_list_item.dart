import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'lang_pro_list_item.freezed.dart';
part 'lang_pro_list_item.g.dart';

@freezed
abstract class LangProListItem with _$LangProListItem {
  const factory LangProListItem({
    @JsonKey(name: 'current_version') int? currentVersion,
    @JsonKey(name: 'languages') List<Languages>? languages,
  }) = _LangProListItem;

  factory LangProListItem.fromJson(Map<String, Object?> json) =>
      _$LangProListItemFromJson(json);
}

@freezed
abstract class Languages with _$Languages {
  const factory Languages({
    @JsonKey(name: 'json_file') String? jsonFile,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'name') String? name,
  }) = _Languages;

  factory Languages.fromJson(Map<String, Object?> json) =>
      _$LanguagesFromJson(json);
}
