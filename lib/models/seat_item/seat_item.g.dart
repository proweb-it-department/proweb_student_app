// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeatItem _$SeatItemFromJson(Map<String, dynamic> json) => _SeatItem(
  id: (json['id'] as num?)?.toInt(),
  cabinetId: (json['cabinet_id'] as num?)?.toInt(),
  type: json['type'] as String?,
  number: (json['number'] as num?)?.toInt(),
  status: json['status'] as String?,
);

Map<String, dynamic> _$SeatItemToJson(_SeatItem instance) => <String, dynamic>{
  'id': instance.id,
  'cabinet_id': instance.cabinetId,
  'type': instance.type,
  'number': instance.number,
  'status': instance.status,
};
