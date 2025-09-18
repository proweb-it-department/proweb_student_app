// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feadbacks_page_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeadbacksPageItem _$FeadbacksPageItemFromJson(Map<String, dynamic> json) =>
    _FeadbacksPageItem(
      id: (json['id'] as num?)?.toInt(),
      openedUser: json['opened_user'] == null
          ? null
          : UserIdDefault.fromJson(json['opened_user'] as Map<String, dynamic>),
      closedUser: json['closed_user'] == null
          ? null
          : UserIdDefault.fromJson(json['closed_user'] as Map<String, dynamic>),
      responsibleUser: json['responsible_user'] == null
          ? null
          : UserIdDefault.fromJson(
              json['responsible_user'] as Map<String, dynamic>,
            ),
      type: $enumDecodeNullable(_$FeadbackTypeEnumMap, json['type']),
      status: $enumDecodeNullable(_$FeadbackStatusEnumMap, json['status']),
      openDate: json['open_date'] as String?,
      closedDate: json['closed_date'] as String?,
      text: json['text'] as String?,
      score: (json['score'] as num?)?.toInt(),
      closingOffers: (json['closing_offers'] as List<dynamic>?)
          ?.map((e) => ClosingOffers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeadbacksPageItemToJson(_FeadbacksPageItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'opened_user': instance.openedUser,
      'closed_user': instance.closedUser,
      'responsible_user': instance.responsibleUser,
      'type': _$FeadbackTypeEnumMap[instance.type],
      'status': _$FeadbackStatusEnumMap[instance.status],
      'open_date': instance.openDate,
      'closed_date': instance.closedDate,
      'text': instance.text,
      'score': instance.score,
      'closing_offers': instance.closingOffers,
    };

const _$FeadbackTypeEnumMap = {
  FeadbackType.praise: 'praise',
  FeadbackType.offer: 'offer',
  FeadbackType.complaint: 'complaint',
  FeadbackType.softwareError: 'software_error',
};

const _$FeadbackStatusEnumMap = {
  FeadbackStatus.open: 'open',
  FeadbackStatus.closed: 'closed',
};

_ClosingOffers _$ClosingOffersFromJson(Map<String, dynamic> json) =>
    _ClosingOffers(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$FeadbackOfferStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$ClosingOffersToJson(_ClosingOffers instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'status': _$FeadbackOfferStatusEnumMap[instance.status],
    };

const _$FeadbackOfferStatusEnumMap = {
  FeadbackOfferStatus.proposed: 'proposed',
  FeadbackOfferStatus.accepted: 'accepted',
  FeadbackOfferStatus.rejected: 'rejected',
};
