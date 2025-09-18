import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
part 'transactions_student.freezed.dart';
part 'transactions_student.g.dart';

@freezed
abstract class TransactionsStudent with _$TransactionsStudent {
  const factory TransactionsStudent({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'transaction_id') int? transactionId,
    @JsonKey(name: 'balance_type') String? balanceType,
    @JsonKey(name: 'balance_user_id') int? balanceUserId,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'canceled') bool? canceled,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,
    @JsonKey(name: 'canceled_transaction') CanceledTransaction? canceledTransaction,
    @JsonKey(name: 'student_lesson') StudentLesson? studentLesson,
    @JsonKey(name: 'service') Service? service,
    @JsonKey(name: 'package') Package? package,
    @JsonKey(name: 'product') Product? product,
  }) = _TransactionsStudent;

  factory TransactionsStudent.fromJson(Map<String, Object?> json) => _$TransactionsStudentFromJson(json);
}

@freezed
abstract class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({@JsonKey(name: 'payment_method_id') int? paymentMethodId, @JsonKey(name: 'name') String? name, @JsonKey(name: 'object_key') String? objectKey, @JsonKey(name: 'icon') String? icon}) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, Object?> json) => _$PaymentMethodFromJson(json);
}

@freezed
abstract class CanceledTransaction with _$CanceledTransaction {
  const factory CanceledTransaction({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'transaction_id') int? transactionId,
    @JsonKey(name: 'balance_type') String? balanceType,
    @JsonKey(name: 'balance_user_id') int? balanceUserId,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'canceled') bool? canceled,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,
  }) = _CanceledTransaction;

  factory CanceledTransaction.fromJson(Map<String, Object?> json) => _$CanceledTransactionFromJson(json);
}

@freezed
abstract class StudentLesson with _$StudentLesson {
  const factory StudentLesson({@JsonKey(name: 'student_lesson_id') int? studentLessonId, @JsonKey(name: 'group_id') int? groupId, @JsonKey(name: 'lesson_number') int? lessonNumber, @JsonKey(name: 'course') Course? course}) = _StudentLesson;

  factory StudentLesson.fromJson(Map<String, Object?> json) => _$StudentLessonFromJson(json);
}

@freezed
abstract class Course with _$Course {
  const factory Course({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name, @JsonKey(name: 'icon') String? icon, @JsonKey(name: 'color') String? color}) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}

@freezed
abstract class Service with _$Service {
  const factory Service({@JsonKey(name: 'service_name') String? serviceName, @JsonKey(name: 'id') int? id, @JsonKey(name: 'service_id') int? serviceId}) = _Service;

  factory Service.fromJson(Map<String, Object?> json) => _$ServiceFromJson(json);
}

@freezed
abstract class Package with _$Package {
  const factory Package({@JsonKey(name: 'package_name') String? packageName, @JsonKey(name: 'id') int? id, @JsonKey(name: 'package_id') int? packageId, @JsonKey(name: 'student_lesson_id') int? studentLessonId}) = _Package;

  factory Package.fromJson(Map<String, Object?> json) => _$PackageFromJson(json);
}

@freezed
abstract class Product with _$Product {
  const factory Product({@JsonKey(name: 'product_name') String? productName, @JsonKey(name: 'id') int? id, @JsonKey(name: 'purchased_product_id') int? purchasedProductId}) = _Product;

  factory Product.fromJson(Map<String, Object?> json) => _$ProductFromJson(json);
}
