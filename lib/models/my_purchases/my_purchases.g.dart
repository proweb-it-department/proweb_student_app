// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_purchases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyPurchases _$MyPurchasesFromJson(Map<String, dynamic> json) => _MyPurchases(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdById: (json['created_by_id'] as num?)?.toInt(),
  updatedById: (json['updated_by_id'] as num?)?.toInt(),
  product: json['product'] == null
      ? null
      : Products.fromJson(json['product'] as Map<String, dynamic>),
  moduleAccessCount: (json['module_access_count'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  studentId: (json['student_id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  saleType: json['sale_type'] as String?,
  price: json['price'] as String?,
  priceCoin: (json['price_coin'] as num?)?.toInt(),
  assessment: json['assessment'] as String?,
  access: json['access'] as bool?,
);

Map<String, dynamic> _$MyPurchasesToJson(_MyPurchases instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by_id': instance.createdById,
      'updated_by_id': instance.updatedById,
      'product': instance.product,
      'module_access_count': instance.moduleAccessCount,
      'id': instance.id,
      'student_id': instance.studentId,
      'user_id': instance.userId,
      'sale_type': instance.saleType,
      'price': instance.price,
      'price_coin': instance.priceCoin,
      'assessment': instance.assessment,
      'access': instance.access,
    };
