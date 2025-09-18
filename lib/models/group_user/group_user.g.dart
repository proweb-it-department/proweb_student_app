// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupUser _$GroupUserFromJson(Map<String, dynamic> json) => _GroupUser(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  groupUserId: (json['group_user_id'] as num?)?.toInt(),
  user: json['user'] == null
      ? null
      : StudentUser.fromJson(json['user'] as Map<String, dynamic>),
  groupId: (json['group_id'] as num?)?.toInt(),
  status: json['status'] as String?,
  groupRole: json['group_role'] as String?,
  format: json['format'] as String?,
  leadId: (json['lead_id'] as num?)?.toInt(),
  confirmedBy: json['confirmed_by'] == null
      ? null
      : UserIdDefault.fromJson(json['confirmed_by'] as Map<String, dynamic>),
  prices: (json['prices'] as List<dynamic>?)
      ?.map((e) => Prices.fromJson(e as Map<String, dynamic>))
      .toList(),
  discounts: (json['discounts'] as List<dynamic>?)
      ?.map((e) => Discounts.fromJson(e as Map<String, dynamic>))
      .toList(),
  autoActivateLesson: (json['auto_activate_lesson'] as num?)?.toInt(),
  middleRating: json['middle_rating'] as String?,
  videoAccessLastDate: json['video_access_last_date'] as String?,
  coworkingAccessLastDate: json['coworking_access_last_date'] as String?,
  accessToVideo: json['access_to_video'] as bool?,
  hasPackage: json['has_package'] as bool?,
);

Map<String, dynamic> _$GroupUserToJson(_GroupUser instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'group_user_id': instance.groupUserId,
      'user': instance.user,
      'group_id': instance.groupId,
      'status': instance.status,
      'group_role': instance.groupRole,
      'format': instance.format,
      'lead_id': instance.leadId,
      'confirmed_by': instance.confirmedBy,
      'prices': instance.prices,
      'discounts': instance.discounts,
      'auto_activate_lesson': instance.autoActivateLesson,
      'middle_rating': instance.middleRating,
      'video_access_last_date': instance.videoAccessLastDate,
      'coworking_access_last_date': instance.coworkingAccessLastDate,
      'access_to_video': instance.accessToVideo,
      'has_package': instance.hasPackage,
    };

_StudentUser _$StudentUserFromJson(Map<String, dynamic> json) => _StudentUser(
  userId: (json['user_id'] as num?)?.toInt(),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  balanceAccount: json['balance_account'] == null
      ? null
      : BalanceAccount.fromJson(
          json['balance_account'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StudentUserToJson(_StudentUser instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user': instance.user,
      'balance_account': instance.balanceAccount,
    };

_BalanceAccount _$BalanceAccountFromJson(Map<String, dynamic> json) =>
    _BalanceAccount(
      mainBalance: json['main_balance'] as String?,
      voucherBalance: json['voucher_balance'] as String?,
    );

Map<String, dynamic> _$BalanceAccountToJson(_BalanceAccount instance) =>
    <String, dynamic>{
      'main_balance': instance.mainBalance,
      'voucher_balance': instance.voucherBalance,
    };

_Prices _$PricesFromJson(Map<String, dynamic> json) => _Prices(
  id: (json['id'] as num?)?.toInt(),
  format: json['format'] as String?,
  type: json['type'] as String?,
  blockCost: json['block_cost'] as String?,
);

Map<String, dynamic> _$PricesToJson(_Prices instance) => <String, dynamic>{
  'id': instance.id,
  'format': instance.format,
  'type': instance.type,
  'block_cost': instance.blockCost,
};

_Discounts _$DiscountsFromJson(Map<String, dynamic> json) => _Discounts(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  uuid: json['uuid'] as String?,
  validFrom: (json['valid_from'] as num?)?.toInt(),
  validUntil: (json['valid_until'] as num?)?.toInt(),
  discountPercent: json['discount_percent'] as String?,
  type: json['type'] as String?,
  amount: json['amount'] as String?,
  description: json['description'] as String?,
  isGroup: json['is_group'] as bool?,
  status: json['status'] as String?,
  format: json['format'] as String?,
);

Map<String, dynamic> _$DiscountsToJson(_Discounts instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'uuid': instance.uuid,
      'valid_from': instance.validFrom,
      'valid_until': instance.validUntil,
      'discount_percent': instance.discountPercent,
      'type': instance.type,
      'amount': instance.amount,
      'description': instance.description,
      'is_group': instance.isGroup,
      'status': instance.status,
      'format': instance.format,
    };
