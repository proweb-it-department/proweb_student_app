import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'branche.freezed.dart';
part 'branche.g.dart';

@freezed
abstract class Branche with _$Branche {
  const factory Branche({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'street') String? street,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'longitude') String? longitude,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'cabinet_count') int? cabinetCount,
    @JsonKey(name: 'cw_count') int? cwCount,
  }) = _Branche;

  factory Branche.fromJson(Map<String, Object?> json) =>
      _$BrancheFromJson(json);
}
