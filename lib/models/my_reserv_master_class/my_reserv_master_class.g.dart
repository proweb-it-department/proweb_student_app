// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_reserv_master_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyReservMasterClass _$MyReservMasterClassFromJson(Map<String, dynamic> json) =>
    _MyReservMasterClass(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdById: (json['created_by_id'] as num?)?.toInt(),
      updatedById: (json['updated_by_id'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      masterClassId: (json['master_class_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      visited: json['visited'] as bool?,
    );

Map<String, dynamic> _$MyReservMasterClassToJson(
  _MyReservMasterClass instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by_id': instance.createdById,
  'updated_by_id': instance.updatedById,
  'id': instance.id,
  'master_class_id': instance.masterClassId,
  'user_id': instance.userId,
  'visited': instance.visited,
};
