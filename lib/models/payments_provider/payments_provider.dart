import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'payments_provider.freezed.dart';
part 'payments_provider.g.dart';

@freezed
abstract class PaymentsProviderModel with _$PaymentsProviderModel {
  const factory PaymentsProviderModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'percent') int? percent,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'provider') String? provider,
  }) = _PaymentsProviderModel;

  factory PaymentsProviderModel.fromJson(Map<String, Object?> json) =>
      _$PaymentsProviderModelFromJson(json);
}
