// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_path_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfferPathData _$OfferPathDataFromJson(Map<String, dynamic> json) =>
    _OfferPathData(
      offerpath: json['offerpath'] == null
          ? null
          : Offerpath.fromJson(json['offerpath'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfferPathDataToJson(_OfferPathData instance) =>
    <String, dynamic>{'offerpath': instance.offerpath};

_Offerpath _$OfferpathFromJson(Map<String, dynamic> json) => _Offerpath(
  offerRu: json['offer_ru'] == null
      ? null
      : OfferRu.fromJson(json['offer_ru'] as Map<String, dynamic>),
  offerUz: json['offer_uz'] == null
      ? null
      : OfferUz.fromJson(json['offer_uz'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OfferpathToJson(_Offerpath instance) =>
    <String, dynamic>{
      'offer_ru': instance.offerRu,
      'offer_uz': instance.offerUz,
    };

_OfferRu _$OfferRuFromJson(Map<String, dynamic> json) => _OfferRu(
  offer: json['offer'] == null
      ? null
      : Offer.fromJson(json['offer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OfferRuToJson(_OfferRu instance) => <String, dynamic>{
  'offer': instance.offer,
};

_Offer _$OfferFromJson(Map<String, dynamic> json) =>
    _Offer(url: json['url'] as String?);

Map<String, dynamic> _$OfferToJson(_Offer instance) => <String, dynamic>{
  'url': instance.url,
};

_OfferUz _$OfferUzFromJson(Map<String, dynamic> json) => _OfferUz(
  offer: json['offer'] == null
      ? null
      : Offer.fromJson(json['offer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OfferUzToJson(_OfferUz instance) => <String, dynamic>{
  'offer': instance.offer,
};

_OfferDataUrl _$OfferDataUrlFromJson(Map<String, dynamic> json) =>
    _OfferDataUrl(url: json['url'] as String?);

Map<String, dynamic> _$OfferDataUrlToJson(_OfferDataUrl instance) =>
    <String, dynamic>{'url': instance.url};
