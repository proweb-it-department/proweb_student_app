import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'balance.freezed.dart';
part 'balance.g.dart';

@freezed
abstract class Balance with _$Balance {
  const factory Balance({@JsonKey(name: 'main_balance') required String mainBalance, @JsonKey(name: 'voucher_balance') required String voucherBalance, @JsonKey(name: 'procoin') String? procoin}) = _Balance;

  factory Balance.fromJson(Map<String, Object?> json) => _$BalanceFromJson(json);
}

@freezed
abstract class ProCoinBalance with _$ProCoinBalance {
  const factory ProCoinBalance({@JsonKey(name: 'user_id') int? userId, @JsonKey(name: 'balance') double? balance}) = _ProCoinBalance;

  factory ProCoinBalance.fromJson(Map<String, Object?> json) => _$ProCoinBalanceFromJson(json);
}
