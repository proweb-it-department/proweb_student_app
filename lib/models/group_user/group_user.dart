import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/models/user/user.dart';

part 'group_user.freezed.dart';
part 'group_user.g.dart';

@freezed
abstract class GroupUser with _$GroupUser {
  const factory GroupUser({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'group_user_id') int? groupUserId,
    @JsonKey(name: 'user') StudentUser? user,
    @JsonKey(name: 'group_id') int? groupId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'group_role') String? groupRole,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'lead_id') int? leadId,
    @JsonKey(name: 'confirmed_by') UserIdDefault? confirmedBy,
    @JsonKey(name: 'prices') List<Prices>? prices,
    @JsonKey(name: 'discounts') List<Discounts>? discounts,
    @JsonKey(name: 'auto_activate_lesson') int? autoActivateLesson,
    @JsonKey(name: 'middle_rating') String? middleRating,
    @JsonKey(name: 'video_access_last_date') String? videoAccessLastDate,
    @JsonKey(name: 'coworking_access_last_date')
    String? coworkingAccessLastDate,
    @JsonKey(name: 'access_to_video') bool? accessToVideo,
    @JsonKey(name: 'has_package') bool? hasPackage,
  }) = _GroupUser;

  factory GroupUser.fromJson(Map<String, Object?> json) =>
      _$GroupUserFromJson(json);
}

@freezed
abstract class StudentUser with _$StudentUser {
  const factory StudentUser({
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'balance_account') BalanceAccount? balanceAccount,
  }) = _StudentUser;

  factory StudentUser.fromJson(Map<String, Object?> json) =>
      _$StudentUserFromJson(json);
}

@freezed
abstract class BalanceAccount with _$BalanceAccount {
  const factory BalanceAccount({
    @JsonKey(name: 'main_balance') String? mainBalance,
    @JsonKey(name: 'voucher_balance') String? voucherBalance,
  }) = _BalanceAccount;

  factory BalanceAccount.fromJson(Map<String, Object?> json) =>
      _$BalanceAccountFromJson(json);
}

@freezed
abstract class Prices with _$Prices {
  const factory Prices({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'block_cost') String? blockCost,
  }) = _Prices;

  factory Prices.fromJson(Map<String, Object?> json) => _$PricesFromJson(json);
}

@freezed
abstract class Discounts with _$Discounts {
  const factory Discounts({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'valid_from') int? validFrom,
    @JsonKey(name: 'valid_until') int? validUntil,
    @JsonKey(name: 'discount_percent') String? discountPercent,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'is_group') bool? isGroup,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'format') String? format,
  }) = _Discounts;

  factory Discounts.fromJson(Map<String, Object?> json) =>
      _$DiscountsFromJson(json);
}
