// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_purchases_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyPurchasesService _$MyPurchasesServiceFromJson(Map<String, dynamic> json) =>
    _MyPurchasesService(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdById: (json['created_by_id'] as num?)?.toInt(),
      updatedById: (json['updated_by_id'] as num?)?.toInt(),
      student: json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      mainId: (json['main_id'] as num?)?.toInt(),
      packageId: (json['package_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      days: (json['days'] as num?)?.toInt(),
      type: $enumDecodeNullable(_$ServiceTypeEnumMap, json['type']),
      price: json['price'] as String?,
      disposable: json['disposable'] as bool?,
      status: json['status'] as String?,
      purchaseAvailable: json['purchase_available'] as bool?,
      access: json['access'] as bool?,
      processed: json['processed'] as bool?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$MyPurchasesServiceToJson(_MyPurchasesService instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by_id': instance.createdById,
      'updated_by_id': instance.updatedById,
      'student': instance.student,
      'id': instance.id,
      'main_id': instance.mainId,
      'package_id': instance.packageId,
      'name': instance.name,
      'description': instance.description,
      'days': instance.days,
      'type': _$ServiceTypeEnumMap[instance.type],
      'price': instance.price,
      'disposable': instance.disposable,
      'status': instance.status,
      'purchase_available': instance.purchaseAvailable,
      'access': instance.access,
      'processed': instance.processed,
      'cover': instance.cover,
    };

const _$ServiceTypeEnumMap = {
  ServiceType.video: 'video',
  ServiceType.coworking: 'coworking',
  ServiceType.text: 'text',
};

_Student _$StudentFromJson(Map<String, dynamic> json) => _Student(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  group: json['group'] == null
      ? null
      : Group.fromJson(json['group'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentToJson(_Student instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'group': instance.group,
};

_Group _$GroupFromJson(Map<String, dynamic> json) => _Group(
  id: (json['id'] as num?)?.toInt(),
  course: json['course'] == null
      ? null
      : Course.fromJson(json['course'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GroupToJson(_Group instance) => <String, dynamic>{
  'id': instance.id,
  'course': instance.course,
};

_Course _$CourseFromJson(Map<String, dynamic> json) => _Course(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  banner: json['banner'] as String?,
  adsBanner: json['ads_banner'] as String?,
  color: json['color'] as String?,
  slug: json['slug'] as String?,
  language: json['language'] as String?,
);

Map<String, dynamic> _$CourseToJson(_Course instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'banner': instance.banner,
  'ads_banner': instance.adsBanner,
  'color': instance.color,
  'slug': instance.slug,
  'language': instance.language,
};
