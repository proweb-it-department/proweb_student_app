import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'servise_for_sale.freezed.dart';
part 'servise_for_sale.g.dart';

@freezed
abstract class ServiseForSale with _$ServiseForSale {
  const factory ServiseForSale({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'days') int? days,
    @JsonKey(name: 'type') ServiceType? type,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'disposable') bool? disposable,
    @JsonKey(name: 'status') ServiceStatus? status,
    @JsonKey(name: 'purchase_available') bool? purchaseAvailable,
    @JsonKey(name: 'cover') String? cover,
  }) = _ServiseForSale;

  factory ServiseForSale.fromJson(Map<String, Object?> json) =>
      _$ServiseForSaleFromJson(json);
}
