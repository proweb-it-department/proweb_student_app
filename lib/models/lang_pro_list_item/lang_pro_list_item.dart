import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'lang_pro_list_item.freezed.dart';
part 'lang_pro_list_item.g.dart';

@freezed
abstract class LangProListItem with _$LangProListItem {
  const factory LangProListItem({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'short_name') String? shortName,
    @JsonKey(name: 'version') int? version,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _LangProListItem;

  factory LangProListItem.fromJson(Map<String, Object?> json) =>
      _$LangProListItemFromJson(json);
}
