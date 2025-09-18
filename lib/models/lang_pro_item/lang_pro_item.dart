import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'lang_pro_item.freezed.dart';
part 'lang_pro_item.g.dart';

@freezed
abstract class LangProItem with _$LangProItem {
  const factory LangProItem({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'short_name') String? shortName,
    @JsonKey(name: 'version') int? version,
    @JsonKey(name: 'categories') Map<String, dynamic>? categories,
    @JsonKey(name: 'childrens') List<Map<String, dynamic>>? childrens,
  }) = _LangProItem;

  factory LangProItem.fromJson(Map<String, Object?> json) =>
      _$LangProItemFromJson(json);
}
