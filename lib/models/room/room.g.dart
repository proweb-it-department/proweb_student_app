// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Room _$RoomFromJson(Map<String, dynamic> json) => _Room(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  branchId: (json['branch_id'] as num?)?.toInt(),
  type: json['type'] as String?,
  capacity: (json['capacity'] as num?)?.toInt(),
  description: json['description'] as String?,
  status: json['status'] as String?,
  note: json['note'] as String?,
  branch: json['branch'] == null
      ? null
      : Branch.fromJson(json['branch'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RoomToJson(_Room instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'branch_id': instance.branchId,
  'type': instance.type,
  'capacity': instance.capacity,
  'description': instance.description,
  'status': instance.status,
  'note': instance.note,
  'branch': instance.branch,
};

_Branch _$BranchFromJson(Map<String, dynamic> json) =>
    _Branch(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$BranchToJson(_Branch instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
