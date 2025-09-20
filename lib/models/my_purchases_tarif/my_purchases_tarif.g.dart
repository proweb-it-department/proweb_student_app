// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_purchases_tarif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyPurchasesTarif _$MyPurchasesTarifFromJson(Map<String, dynamic> json) =>
    _MyPurchasesTarif(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdById: (json['created_by_id'] as num?)?.toInt(),
      updatedById: (json['updated_by_id'] as num?)?.toInt(),
      course: json['course'] == null
          ? null
          : Course.fromJson(json['course'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => ServicesTarif.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductsTarif.fromJson(e as Map<String, dynamic>))
          .toList(),
      student: json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: json['price'] as String?,
      paid: json['paid'] as String?,
      status: json['status'] as String?,
      mainId: (json['main_id'] as num?)?.toInt(),
      access: json['access'] as bool?,
      frozen: json['frozen'] as bool?,
      installment: json['installment'] as bool?,
    );

Map<String, dynamic> _$MyPurchasesTarifToJson(_MyPurchasesTarif instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by_id': instance.createdById,
      'updated_by_id': instance.updatedById,
      'course': instance.course,
      'services': instance.services,
      'products': instance.products,
      'student': instance.student,
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'paid': instance.paid,
      'status': instance.status,
      'main_id': instance.mainId,
      'access': instance.access,
      'frozen': instance.frozen,
      'installment': instance.installment,
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

_ServicesTarif _$ServicesTarifFromJson(Map<String, dynamic> json) =>
    _ServicesTarif(
      service: json['service'] == null
          ? null
          : Service.fromJson(json['service'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ServicesTarifToJson(_ServicesTarif instance) =>
    <String, dynamic>{'service': instance.service, 'id': instance.id};

_Service _$ServiceFromJson(Map<String, dynamic> json) => _Service(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  days: (json['days'] as num?)?.toInt(),
  type: $enumDecodeNullable(_$ServiceTypeEnumMap, json['type']),
  status: json['status'] as String?,
  cover: json['cover'] as String?,
);

Map<String, dynamic> _$ServiceToJson(_Service instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'days': instance.days,
  'type': _$ServiceTypeEnumMap[instance.type],
  'status': instance.status,
  'cover': instance.cover,
};

const _$ServiceTypeEnumMap = {
  ServiceType.video: 'video',
  ServiceType.coworking: 'coworking',
  ServiceType.text: 'text',
};

_ProductsTarif _$ProductsTarifFromJson(Map<String, dynamic> json) =>
    _ProductsTarif(
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      fullAccess: json['full_access'] as bool?,
      lessonNumber: (json['lesson_number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductsTarifToJson(_ProductsTarif instance) =>
    <String, dynamic>{
      'product': instance.product,
      'id': instance.id,
      'full_access': instance.fullAccess,
      'lesson_number': instance.lessonNumber,
    };

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  type: json['type'] as String?,
  cover: json['cover'] as String?,
  moduleCount: (json['module_count'] as num?)?.toInt(),
  totalCountTime: (json['total_count_time'] as num?)?.toInt(),
  status: json['status'] as String?,
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'type': instance.type,
  'cover': instance.cover,
  'module_count': instance.moduleCount,
  'total_count_time': instance.totalCountTime,
  'status': instance.status,
};

_Student _$StudentFromJson(Map<String, dynamic> json) => _Student(
  id: (json['id'] as num?)?.toInt(),
  groupId: (json['group_id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$StudentToJson(_Student instance) => <String, dynamic>{
  'id': instance.id,
  'group_id': instance.groupId,
  'user_id': instance.userId,
};
