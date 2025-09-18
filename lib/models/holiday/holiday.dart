import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'holiday.freezed.dart';
part 'holiday.g.dart';

@freezed
abstract class Holiday with _$Holiday {
  const factory Holiday({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _Holiday;

  factory Holiday.fromJson(Map<String, Object?> json) =>
      _$HolidayFromJson(json);
}
