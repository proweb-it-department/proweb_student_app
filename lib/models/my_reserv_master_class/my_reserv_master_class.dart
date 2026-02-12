import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'my_reserv_master_class.freezed.dart';
part 'my_reserv_master_class.g.dart';

@freezed
abstract class MyReservMasterClass with _$MyReservMasterClass {
  const factory MyReservMasterClass({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'master_class_id') int? masterClassId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'visited') bool? visited,
  }) = _MyReservMasterClass;

  factory MyReservMasterClass.fromJson(Map<String, Object?> json) =>
      _$MyReservMasterClassFromJson(json);
}
