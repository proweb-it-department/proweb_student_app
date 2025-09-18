import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'feadbacks_page_item.freezed.dart';
part 'feadbacks_page_item.g.dart';

@freezed
abstract class FeadbacksPageItem with _$FeadbacksPageItem {
  const factory FeadbacksPageItem({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'opened_user') UserIdDefault? openedUser,
    @JsonKey(name: 'closed_user') UserIdDefault? closedUser,
    @JsonKey(name: 'responsible_user') UserIdDefault? responsibleUser,
    @JsonKey(name: 'type') FeadbackType? type,
    @JsonKey(name: 'status') FeadbackStatus? status,
    @JsonKey(name: 'open_date') String? openDate,
    @JsonKey(name: 'closed_date') String? closedDate,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'closing_offers') List<ClosingOffers>? closingOffers,
  }) = _FeadbacksPageItem;

  factory FeadbacksPageItem.fromJson(Map<String, Object?> json) =>
      _$FeadbacksPageItemFromJson(json);
}

@freezed
abstract class ClosingOffers with _$ClosingOffers {
  const factory ClosingOffers({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'status') FeadbackOfferStatus? status,
  }) = _ClosingOffers;

  factory ClosingOffers.fromJson(Map<String, Object?> json) =>
      _$ClosingOffersFromJson(json);
}
