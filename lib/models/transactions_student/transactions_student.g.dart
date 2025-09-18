// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionsStudent _$TransactionsStudentFromJson(
  Map<String, dynamic> json,
) => _TransactionsStudent(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  transactionId: (json['transaction_id'] as num?)?.toInt(),
  balanceType: json['balance_type'] as String?,
  balanceUserId: (json['balance_user_id'] as num?)?.toInt(),
  type: json['type'] as String?,
  amount: json['amount'] as String?,
  canceled: json['canceled'] as bool?,
  note: json['note'] as String?,
  reason: json['reason'] as String?,
  paymentMethod: json['payment_method'] == null
      ? null
      : PaymentMethod.fromJson(json['payment_method'] as Map<String, dynamic>),
  canceledTransaction: json['canceled_transaction'] == null
      ? null
      : CanceledTransaction.fromJson(
          json['canceled_transaction'] as Map<String, dynamic>,
        ),
  studentLesson: json['student_lesson'] == null
      ? null
      : StudentLesson.fromJson(json['student_lesson'] as Map<String, dynamic>),
  service: json['service'] == null
      ? null
      : Service.fromJson(json['service'] as Map<String, dynamic>),
  package: json['package'] == null
      ? null
      : Package.fromJson(json['package'] as Map<String, dynamic>),
  product: json['product'] == null
      ? null
      : Product.fromJson(json['product'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TransactionsStudentToJson(
  _TransactionsStudent instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'transaction_id': instance.transactionId,
  'balance_type': instance.balanceType,
  'balance_user_id': instance.balanceUserId,
  'type': instance.type,
  'amount': instance.amount,
  'canceled': instance.canceled,
  'note': instance.note,
  'reason': instance.reason,
  'payment_method': instance.paymentMethod,
  'canceled_transaction': instance.canceledTransaction,
  'student_lesson': instance.studentLesson,
  'service': instance.service,
  'package': instance.package,
  'product': instance.product,
};

_PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    _PaymentMethod(
      paymentMethodId: (json['payment_method_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      objectKey: json['object_key'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$PaymentMethodToJson(_PaymentMethod instance) =>
    <String, dynamic>{
      'payment_method_id': instance.paymentMethodId,
      'name': instance.name,
      'object_key': instance.objectKey,
      'icon': instance.icon,
    };

_CanceledTransaction _$CanceledTransactionFromJson(Map<String, dynamic> json) =>
    _CanceledTransaction(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
      transactionId: (json['transaction_id'] as num?)?.toInt(),
      balanceType: json['balance_type'] as String?,
      balanceUserId: (json['balance_user_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      amount: json['amount'] as String?,
      canceled: json['canceled'] as bool?,
      note: json['note'] as String?,
      reason: json['reason'] as String?,
      paymentMethod: json['payment_method'] == null
          ? null
          : PaymentMethod.fromJson(
              json['payment_method'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CanceledTransactionToJson(
  _CanceledTransaction instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'transaction_id': instance.transactionId,
  'balance_type': instance.balanceType,
  'balance_user_id': instance.balanceUserId,
  'type': instance.type,
  'amount': instance.amount,
  'canceled': instance.canceled,
  'note': instance.note,
  'reason': instance.reason,
  'payment_method': instance.paymentMethod,
};

_StudentLesson _$StudentLessonFromJson(Map<String, dynamic> json) =>
    _StudentLesson(
      studentLessonId: (json['student_lesson_id'] as num?)?.toInt(),
      groupId: (json['group_id'] as num?)?.toInt(),
      lessonNumber: (json['lesson_number'] as num?)?.toInt(),
      course: json['course'] == null
          ? null
          : Course.fromJson(json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudentLessonToJson(_StudentLesson instance) =>
    <String, dynamic>{
      'student_lesson_id': instance.studentLessonId,
      'group_id': instance.groupId,
      'lesson_number': instance.lessonNumber,
      'course': instance.course,
    };

_Course _$CourseFromJson(Map<String, dynamic> json) => _Course(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  color: json['color'] as String?,
);

Map<String, dynamic> _$CourseToJson(_Course instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'color': instance.color,
};

_Service _$ServiceFromJson(Map<String, dynamic> json) => _Service(
  serviceName: json['service_name'] as String?,
  id: (json['id'] as num?)?.toInt(),
  serviceId: (json['service_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$ServiceToJson(_Service instance) => <String, dynamic>{
  'service_name': instance.serviceName,
  'id': instance.id,
  'service_id': instance.serviceId,
};

_Package _$PackageFromJson(Map<String, dynamic> json) => _Package(
  packageName: json['package_name'] as String?,
  id: (json['id'] as num?)?.toInt(),
  packageId: (json['package_id'] as num?)?.toInt(),
  studentLessonId: (json['student_lesson_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$PackageToJson(_Package instance) => <String, dynamic>{
  'package_name': instance.packageName,
  'id': instance.id,
  'package_id': instance.packageId,
  'student_lesson_id': instance.studentLessonId,
};

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  productName: json['product_name'] as String?,
  id: (json['id'] as num?)?.toInt(),
  purchasedProductId: (json['purchased_product_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'product_name': instance.productName,
  'id': instance.id,
  'purchased_product_id': instance.purchasedProductId,
};
