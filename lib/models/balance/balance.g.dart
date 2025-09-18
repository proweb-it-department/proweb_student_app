// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Balance _$BalanceFromJson(Map<String, dynamic> json) => _Balance(
  mainBalance: json['main_balance'] as String,
  voucherBalance: json['voucher_balance'] as String,
  procoin: json['procoin'] as String?,
);

Map<String, dynamic> _$BalanceToJson(_Balance instance) => <String, dynamic>{
  'main_balance': instance.mainBalance,
  'voucher_balance': instance.voucherBalance,
  'procoin': instance.procoin,
};

_ProCoinBalance _$ProCoinBalanceFromJson(Map<String, dynamic> json) =>
    _ProCoinBalance(
      userId: (json['user_id'] as num?)?.toInt(),
      balance: (json['balance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProCoinBalanceToJson(_ProCoinBalance instance) =>
    <String, dynamic>{'user_id': instance.userId, 'balance': instance.balance};
