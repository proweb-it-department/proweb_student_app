import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'offer_path_data.freezed.dart';
part 'offer_path_data.g.dart';

@freezed
abstract class OfferPathData with _$OfferPathData {
  const factory OfferPathData({
    @JsonKey(name: 'offerpath') Offerpath? offerpath,
  }) = _OfferPathData;

  factory OfferPathData.fromJson(Map<String, Object?> json) =>
      _$OfferPathDataFromJson(json);
}

@freezed
abstract class Offerpath with _$Offerpath {
  const factory Offerpath({
    @JsonKey(name: 'offer_ru') OfferRu? offerRu,
    @JsonKey(name: 'offer_uz') OfferUz? offerUz,
  }) = _Offerpath;

  factory Offerpath.fromJson(Map<String, Object?> json) =>
      _$OfferpathFromJson(json);
}

@freezed
abstract class OfferRu with _$OfferRu {
  const factory OfferRu({@JsonKey(name: 'offer') Offer? offer}) = _OfferRu;

  factory OfferRu.fromJson(Map<String, Object?> json) =>
      _$OfferRuFromJson(json);
}

@freezed
abstract class Offer with _$Offer {
  const factory Offer({@JsonKey(name: 'url') String? url}) = _Offer;

  factory Offer.fromJson(Map<String, Object?> json) => _$OfferFromJson(json);
}

@freezed
abstract class OfferUz with _$OfferUz {
  const factory OfferUz({@JsonKey(name: 'offer') Offer? offer}) = _OfferUz;

  factory OfferUz.fromJson(Map<String, Object?> json) =>
      _$OfferUzFromJson(json);
}

@freezed
abstract class OfferDataUrl with _$OfferDataUrl {
  const factory OfferDataUrl({@JsonKey(name: 'url') String? url}) =
      _OfferDataUrl;

  factory OfferDataUrl.fromJson(Map<String, Object?> json) =>
      _$OfferDataUrlFromJson(json);
}
