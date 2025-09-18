import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'seat_item.freezed.dart';
part 'seat_item.g.dart';

@freezed
abstract class SeatItem with _$SeatItem {
  const factory SeatItem({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'cabinet_id') int? cabinetId,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'number') int? number,
    @JsonKey(name: 'status') String? status,
  }) = _SeatItem;

  factory SeatItem.fromJson(Map<String, Object?> json) =>
      _$SeatItemFromJson(json);
}
