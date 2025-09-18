// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionsStudent implements DiagnosticableTreeMixin {

// ignore: invalid_annotation_target
@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'transaction_id') int? get transactionId;@JsonKey(name: 'balance_type') String? get balanceType;@JsonKey(name: 'balance_user_id') int? get balanceUserId;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'amount') String? get amount;@JsonKey(name: 'canceled') bool? get canceled;@JsonKey(name: 'note') String? get note;@JsonKey(name: 'reason') String? get reason;@JsonKey(name: 'payment_method') PaymentMethod? get paymentMethod;@JsonKey(name: 'canceled_transaction') CanceledTransaction? get canceledTransaction;@JsonKey(name: 'student_lesson') StudentLesson? get studentLesson;@JsonKey(name: 'service') Service? get service;@JsonKey(name: 'package') Package? get package;@JsonKey(name: 'product') Product? get product;
/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionsStudentCopyWith<TransactionsStudent> get copyWith => _$TransactionsStudentCopyWithImpl<TransactionsStudent>(this as TransactionsStudent, _$identity);

  /// Serializes this TransactionsStudent to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TransactionsStudent'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('transactionId', transactionId))..add(DiagnosticsProperty('balanceType', balanceType))..add(DiagnosticsProperty('balanceUserId', balanceUserId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('canceled', canceled))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('reason', reason))..add(DiagnosticsProperty('paymentMethod', paymentMethod))..add(DiagnosticsProperty('canceledTransaction', canceledTransaction))..add(DiagnosticsProperty('studentLesson', studentLesson))..add(DiagnosticsProperty('service', service))..add(DiagnosticsProperty('package', package))..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionsStudent&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.balanceType, balanceType) || other.balanceType == balanceType)&&(identical(other.balanceUserId, balanceUserId) || other.balanceUserId == balanceUserId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.canceled, canceled) || other.canceled == canceled)&&(identical(other.note, note) || other.note == note)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.canceledTransaction, canceledTransaction) || other.canceledTransaction == canceledTransaction)&&(identical(other.studentLesson, studentLesson) || other.studentLesson == studentLesson)&&(identical(other.service, service) || other.service == service)&&(identical(other.package, package) || other.package == package)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,transactionId,balanceType,balanceUserId,type,amount,canceled,note,reason,paymentMethod,canceledTransaction,studentLesson,service,package,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TransactionsStudent(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, transactionId: $transactionId, balanceType: $balanceType, balanceUserId: $balanceUserId, type: $type, amount: $amount, canceled: $canceled, note: $note, reason: $reason, paymentMethod: $paymentMethod, canceledTransaction: $canceledTransaction, studentLesson: $studentLesson, service: $service, package: $package, product: $product)';
}


}

/// @nodoc
abstract mixin class $TransactionsStudentCopyWith<$Res>  {
  factory $TransactionsStudentCopyWith(TransactionsStudent value, $Res Function(TransactionsStudent) _then) = _$TransactionsStudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'transaction_id') int? transactionId,@JsonKey(name: 'balance_type') String? balanceType,@JsonKey(name: 'balance_user_id') int? balanceUserId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'canceled') bool? canceled,@JsonKey(name: 'note') String? note,@JsonKey(name: 'reason') String? reason,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,@JsonKey(name: 'canceled_transaction') CanceledTransaction? canceledTransaction,@JsonKey(name: 'student_lesson') StudentLesson? studentLesson,@JsonKey(name: 'service') Service? service,@JsonKey(name: 'package') Package? package,@JsonKey(name: 'product') Product? product
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;$PaymentMethodCopyWith<$Res>? get paymentMethod;$CanceledTransactionCopyWith<$Res>? get canceledTransaction;$StudentLessonCopyWith<$Res>? get studentLesson;$ServiceCopyWith<$Res>? get service;$PackageCopyWith<$Res>? get package;$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$TransactionsStudentCopyWithImpl<$Res>
    implements $TransactionsStudentCopyWith<$Res> {
  _$TransactionsStudentCopyWithImpl(this._self, this._then);

  final TransactionsStudent _self;
  final $Res Function(TransactionsStudent) _then;

/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? transactionId = freezed,Object? balanceType = freezed,Object? balanceUserId = freezed,Object? type = freezed,Object? amount = freezed,Object? canceled = freezed,Object? note = freezed,Object? reason = freezed,Object? paymentMethod = freezed,Object? canceledTransaction = freezed,Object? studentLesson = freezed,Object? service = freezed,Object? package = freezed,Object? product = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,balanceType: freezed == balanceType ? _self.balanceType : balanceType // ignore: cast_nullable_to_non_nullable
as String?,balanceUserId: freezed == balanceUserId ? _self.balanceUserId : balanceUserId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,canceled: freezed == canceled ? _self.canceled : canceled // ignore: cast_nullable_to_non_nullable
as bool?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,canceledTransaction: freezed == canceledTransaction ? _self.canceledTransaction : canceledTransaction // ignore: cast_nullable_to_non_nullable
as CanceledTransaction?,studentLesson: freezed == studentLesson ? _self.studentLesson : studentLesson // ignore: cast_nullable_to_non_nullable
as StudentLesson?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Service?,package: freezed == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as Package?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,
  ));
}
/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<$Res>? get paymentMethod {
    if (_self.paymentMethod == null) {
    return null;
  }

  return $PaymentMethodCopyWith<$Res>(_self.paymentMethod!, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanceledTransactionCopyWith<$Res>? get canceledTransaction {
    if (_self.canceledTransaction == null) {
    return null;
  }

  return $CanceledTransactionCopyWith<$Res>(_self.canceledTransaction!, (value) {
    return _then(_self.copyWith(canceledTransaction: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentLessonCopyWith<$Res>? get studentLesson {
    if (_self.studentLesson == null) {
    return null;
  }

  return $StudentLessonCopyWith<$Res>(_self.studentLesson!, (value) {
    return _then(_self.copyWith(studentLesson: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ServiceCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageCopyWith<$Res>? get package {
    if (_self.package == null) {
    return null;
  }

  return $PackageCopyWith<$Res>(_self.package!, (value) {
    return _then(_self.copyWith(package: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionsStudent].
extension TransactionsStudentPatterns on TransactionsStudent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionsStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionsStudent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionsStudent value)  $default,){
final _that = this;
switch (_that) {
case _TransactionsStudent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionsStudent value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionsStudent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'transaction_id')  int? transactionId, @JsonKey(name: 'balance_type')  String? balanceType, @JsonKey(name: 'balance_user_id')  int? balanceUserId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'canceled')  bool? canceled, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'reason')  String? reason, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'canceled_transaction')  CanceledTransaction? canceledTransaction, @JsonKey(name: 'student_lesson')  StudentLesson? studentLesson, @JsonKey(name: 'service')  Service? service, @JsonKey(name: 'package')  Package? package, @JsonKey(name: 'product')  Product? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionsStudent() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.transactionId,_that.balanceType,_that.balanceUserId,_that.type,_that.amount,_that.canceled,_that.note,_that.reason,_that.paymentMethod,_that.canceledTransaction,_that.studentLesson,_that.service,_that.package,_that.product);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'transaction_id')  int? transactionId, @JsonKey(name: 'balance_type')  String? balanceType, @JsonKey(name: 'balance_user_id')  int? balanceUserId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'canceled')  bool? canceled, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'reason')  String? reason, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'canceled_transaction')  CanceledTransaction? canceledTransaction, @JsonKey(name: 'student_lesson')  StudentLesson? studentLesson, @JsonKey(name: 'service')  Service? service, @JsonKey(name: 'package')  Package? package, @JsonKey(name: 'product')  Product? product)  $default,) {final _that = this;
switch (_that) {
case _TransactionsStudent():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.transactionId,_that.balanceType,_that.balanceUserId,_that.type,_that.amount,_that.canceled,_that.note,_that.reason,_that.paymentMethod,_that.canceledTransaction,_that.studentLesson,_that.service,_that.package,_that.product);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'transaction_id')  int? transactionId, @JsonKey(name: 'balance_type')  String? balanceType, @JsonKey(name: 'balance_user_id')  int? balanceUserId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'canceled')  bool? canceled, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'reason')  String? reason, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'canceled_transaction')  CanceledTransaction? canceledTransaction, @JsonKey(name: 'student_lesson')  StudentLesson? studentLesson, @JsonKey(name: 'service')  Service? service, @JsonKey(name: 'package')  Package? package, @JsonKey(name: 'product')  Product? product)?  $default,) {final _that = this;
switch (_that) {
case _TransactionsStudent() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.transactionId,_that.balanceType,_that.balanceUserId,_that.type,_that.amount,_that.canceled,_that.note,_that.reason,_that.paymentMethod,_that.canceledTransaction,_that.studentLesson,_that.service,_that.package,_that.product);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionsStudent with DiagnosticableTreeMixin implements TransactionsStudent {
  const _TransactionsStudent({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'transaction_id') this.transactionId, @JsonKey(name: 'balance_type') this.balanceType, @JsonKey(name: 'balance_user_id') this.balanceUserId, @JsonKey(name: 'type') this.type, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'canceled') this.canceled, @JsonKey(name: 'note') this.note, @JsonKey(name: 'reason') this.reason, @JsonKey(name: 'payment_method') this.paymentMethod, @JsonKey(name: 'canceled_transaction') this.canceledTransaction, @JsonKey(name: 'student_lesson') this.studentLesson, @JsonKey(name: 'service') this.service, @JsonKey(name: 'package') this.package, @JsonKey(name: 'product') this.product});
  factory _TransactionsStudent.fromJson(Map<String, dynamic> json) => _$TransactionsStudentFromJson(json);

// ignore: invalid_annotation_target
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'transaction_id') final  int? transactionId;
@override@JsonKey(name: 'balance_type') final  String? balanceType;
@override@JsonKey(name: 'balance_user_id') final  int? balanceUserId;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'amount') final  String? amount;
@override@JsonKey(name: 'canceled') final  bool? canceled;
@override@JsonKey(name: 'note') final  String? note;
@override@JsonKey(name: 'reason') final  String? reason;
@override@JsonKey(name: 'payment_method') final  PaymentMethod? paymentMethod;
@override@JsonKey(name: 'canceled_transaction') final  CanceledTransaction? canceledTransaction;
@override@JsonKey(name: 'student_lesson') final  StudentLesson? studentLesson;
@override@JsonKey(name: 'service') final  Service? service;
@override@JsonKey(name: 'package') final  Package? package;
@override@JsonKey(name: 'product') final  Product? product;

/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionsStudentCopyWith<_TransactionsStudent> get copyWith => __$TransactionsStudentCopyWithImpl<_TransactionsStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionsStudentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TransactionsStudent'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('transactionId', transactionId))..add(DiagnosticsProperty('balanceType', balanceType))..add(DiagnosticsProperty('balanceUserId', balanceUserId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('canceled', canceled))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('reason', reason))..add(DiagnosticsProperty('paymentMethod', paymentMethod))..add(DiagnosticsProperty('canceledTransaction', canceledTransaction))..add(DiagnosticsProperty('studentLesson', studentLesson))..add(DiagnosticsProperty('service', service))..add(DiagnosticsProperty('package', package))..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsStudent&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.balanceType, balanceType) || other.balanceType == balanceType)&&(identical(other.balanceUserId, balanceUserId) || other.balanceUserId == balanceUserId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.canceled, canceled) || other.canceled == canceled)&&(identical(other.note, note) || other.note == note)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.canceledTransaction, canceledTransaction) || other.canceledTransaction == canceledTransaction)&&(identical(other.studentLesson, studentLesson) || other.studentLesson == studentLesson)&&(identical(other.service, service) || other.service == service)&&(identical(other.package, package) || other.package == package)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,transactionId,balanceType,balanceUserId,type,amount,canceled,note,reason,paymentMethod,canceledTransaction,studentLesson,service,package,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TransactionsStudent(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, transactionId: $transactionId, balanceType: $balanceType, balanceUserId: $balanceUserId, type: $type, amount: $amount, canceled: $canceled, note: $note, reason: $reason, paymentMethod: $paymentMethod, canceledTransaction: $canceledTransaction, studentLesson: $studentLesson, service: $service, package: $package, product: $product)';
}


}

/// @nodoc
abstract mixin class _$TransactionsStudentCopyWith<$Res> implements $TransactionsStudentCopyWith<$Res> {
  factory _$TransactionsStudentCopyWith(_TransactionsStudent value, $Res Function(_TransactionsStudent) _then) = __$TransactionsStudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'transaction_id') int? transactionId,@JsonKey(name: 'balance_type') String? balanceType,@JsonKey(name: 'balance_user_id') int? balanceUserId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'canceled') bool? canceled,@JsonKey(name: 'note') String? note,@JsonKey(name: 'reason') String? reason,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,@JsonKey(name: 'canceled_transaction') CanceledTransaction? canceledTransaction,@JsonKey(name: 'student_lesson') StudentLesson? studentLesson,@JsonKey(name: 'service') Service? service,@JsonKey(name: 'package') Package? package,@JsonKey(name: 'product') Product? product
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;@override $PaymentMethodCopyWith<$Res>? get paymentMethod;@override $CanceledTransactionCopyWith<$Res>? get canceledTransaction;@override $StudentLessonCopyWith<$Res>? get studentLesson;@override $ServiceCopyWith<$Res>? get service;@override $PackageCopyWith<$Res>? get package;@override $ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$TransactionsStudentCopyWithImpl<$Res>
    implements _$TransactionsStudentCopyWith<$Res> {
  __$TransactionsStudentCopyWithImpl(this._self, this._then);

  final _TransactionsStudent _self;
  final $Res Function(_TransactionsStudent) _then;

/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? transactionId = freezed,Object? balanceType = freezed,Object? balanceUserId = freezed,Object? type = freezed,Object? amount = freezed,Object? canceled = freezed,Object? note = freezed,Object? reason = freezed,Object? paymentMethod = freezed,Object? canceledTransaction = freezed,Object? studentLesson = freezed,Object? service = freezed,Object? package = freezed,Object? product = freezed,}) {
  return _then(_TransactionsStudent(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,balanceType: freezed == balanceType ? _self.balanceType : balanceType // ignore: cast_nullable_to_non_nullable
as String?,balanceUserId: freezed == balanceUserId ? _self.balanceUserId : balanceUserId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,canceled: freezed == canceled ? _self.canceled : canceled // ignore: cast_nullable_to_non_nullable
as bool?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,canceledTransaction: freezed == canceledTransaction ? _self.canceledTransaction : canceledTransaction // ignore: cast_nullable_to_non_nullable
as CanceledTransaction?,studentLesson: freezed == studentLesson ? _self.studentLesson : studentLesson // ignore: cast_nullable_to_non_nullable
as StudentLesson?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Service?,package: freezed == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as Package?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,
  ));
}

/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<$Res>? get paymentMethod {
    if (_self.paymentMethod == null) {
    return null;
  }

  return $PaymentMethodCopyWith<$Res>(_self.paymentMethod!, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanceledTransactionCopyWith<$Res>? get canceledTransaction {
    if (_self.canceledTransaction == null) {
    return null;
  }

  return $CanceledTransactionCopyWith<$Res>(_self.canceledTransaction!, (value) {
    return _then(_self.copyWith(canceledTransaction: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentLessonCopyWith<$Res>? get studentLesson {
    if (_self.studentLesson == null) {
    return null;
  }

  return $StudentLessonCopyWith<$Res>(_self.studentLesson!, (value) {
    return _then(_self.copyWith(studentLesson: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ServiceCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageCopyWith<$Res>? get package {
    if (_self.package == null) {
    return null;
  }

  return $PackageCopyWith<$Res>(_self.package!, (value) {
    return _then(_self.copyWith(package: value));
  });
}/// Create a copy of TransactionsStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$PaymentMethod implements DiagnosticableTreeMixin {

@JsonKey(name: 'payment_method_id') int? get paymentMethodId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'object_key') String? get objectKey;@JsonKey(name: 'icon') String? get icon;
/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<PaymentMethod> get copyWith => _$PaymentMethodCopyWithImpl<PaymentMethod>(this as PaymentMethod, _$identity);

  /// Serializes this PaymentMethod to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentMethod'))
    ..add(DiagnosticsProperty('paymentMethodId', paymentMethodId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('objectKey', objectKey))..add(DiagnosticsProperty('icon', icon));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethod&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&(identical(other.name, name) || other.name == name)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentMethodId,name,objectKey,icon);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentMethod(paymentMethodId: $paymentMethodId, name: $name, objectKey: $objectKey, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodCopyWith<$Res>  {
  factory $PaymentMethodCopyWith(PaymentMethod value, $Res Function(PaymentMethod) _then) = _$PaymentMethodCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'payment_method_id') int? paymentMethodId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'object_key') String? objectKey,@JsonKey(name: 'icon') String? icon
});




}
/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._self, this._then);

  final PaymentMethod _self;
  final $Res Function(PaymentMethod) _then;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentMethodId = freezed,Object? name = freezed,Object? objectKey = freezed,Object? icon = freezed,}) {
  return _then(_self.copyWith(
paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethod].
extension PaymentMethodPatterns on PaymentMethod {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethod value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethod():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethod value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_method_id')  int? paymentMethodId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'object_key')  String? objectKey, @JsonKey(name: 'icon')  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
return $default(_that.paymentMethodId,_that.name,_that.objectKey,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_method_id')  int? paymentMethodId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'object_key')  String? objectKey, @JsonKey(name: 'icon')  String? icon)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethod():
return $default(_that.paymentMethodId,_that.name,_that.objectKey,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'payment_method_id')  int? paymentMethodId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'object_key')  String? objectKey, @JsonKey(name: 'icon')  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
return $default(_that.paymentMethodId,_that.name,_that.objectKey,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethod with DiagnosticableTreeMixin implements PaymentMethod {
  const _PaymentMethod({@JsonKey(name: 'payment_method_id') this.paymentMethodId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'object_key') this.objectKey, @JsonKey(name: 'icon') this.icon});
  factory _PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);

@override@JsonKey(name: 'payment_method_id') final  int? paymentMethodId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'object_key') final  String? objectKey;
@override@JsonKey(name: 'icon') final  String? icon;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodCopyWith<_PaymentMethod> get copyWith => __$PaymentMethodCopyWithImpl<_PaymentMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentMethod'))
    ..add(DiagnosticsProperty('paymentMethodId', paymentMethodId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('objectKey', objectKey))..add(DiagnosticsProperty('icon', icon));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethod&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&(identical(other.name, name) || other.name == name)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentMethodId,name,objectKey,icon);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentMethod(paymentMethodId: $paymentMethodId, name: $name, objectKey: $objectKey, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodCopyWith<$Res> implements $PaymentMethodCopyWith<$Res> {
  factory _$PaymentMethodCopyWith(_PaymentMethod value, $Res Function(_PaymentMethod) _then) = __$PaymentMethodCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'payment_method_id') int? paymentMethodId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'object_key') String? objectKey,@JsonKey(name: 'icon') String? icon
});




}
/// @nodoc
class __$PaymentMethodCopyWithImpl<$Res>
    implements _$PaymentMethodCopyWith<$Res> {
  __$PaymentMethodCopyWithImpl(this._self, this._then);

  final _PaymentMethod _self;
  final $Res Function(_PaymentMethod) _then;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentMethodId = freezed,Object? name = freezed,Object? objectKey = freezed,Object? icon = freezed,}) {
  return _then(_PaymentMethod(
paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CanceledTransaction implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'transaction_id') int? get transactionId;@JsonKey(name: 'balance_type') String? get balanceType;@JsonKey(name: 'balance_user_id') int? get balanceUserId;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'amount') String? get amount;@JsonKey(name: 'canceled') bool? get canceled;@JsonKey(name: 'note') String? get note;@JsonKey(name: 'reason') String? get reason;@JsonKey(name: 'payment_method') PaymentMethod? get paymentMethod;
/// Create a copy of CanceledTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CanceledTransactionCopyWith<CanceledTransaction> get copyWith => _$CanceledTransactionCopyWithImpl<CanceledTransaction>(this as CanceledTransaction, _$identity);

  /// Serializes this CanceledTransaction to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CanceledTransaction'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('transactionId', transactionId))..add(DiagnosticsProperty('balanceType', balanceType))..add(DiagnosticsProperty('balanceUserId', balanceUserId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('canceled', canceled))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('reason', reason))..add(DiagnosticsProperty('paymentMethod', paymentMethod));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CanceledTransaction&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.balanceType, balanceType) || other.balanceType == balanceType)&&(identical(other.balanceUserId, balanceUserId) || other.balanceUserId == balanceUserId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.canceled, canceled) || other.canceled == canceled)&&(identical(other.note, note) || other.note == note)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,transactionId,balanceType,balanceUserId,type,amount,canceled,note,reason,paymentMethod);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CanceledTransaction(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, transactionId: $transactionId, balanceType: $balanceType, balanceUserId: $balanceUserId, type: $type, amount: $amount, canceled: $canceled, note: $note, reason: $reason, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class $CanceledTransactionCopyWith<$Res>  {
  factory $CanceledTransactionCopyWith(CanceledTransaction value, $Res Function(CanceledTransaction) _then) = _$CanceledTransactionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'transaction_id') int? transactionId,@JsonKey(name: 'balance_type') String? balanceType,@JsonKey(name: 'balance_user_id') int? balanceUserId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'canceled') bool? canceled,@JsonKey(name: 'note') String? note,@JsonKey(name: 'reason') String? reason,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;$PaymentMethodCopyWith<$Res>? get paymentMethod;

}
/// @nodoc
class _$CanceledTransactionCopyWithImpl<$Res>
    implements $CanceledTransactionCopyWith<$Res> {
  _$CanceledTransactionCopyWithImpl(this._self, this._then);

  final CanceledTransaction _self;
  final $Res Function(CanceledTransaction) _then;

/// Create a copy of CanceledTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? transactionId = freezed,Object? balanceType = freezed,Object? balanceUserId = freezed,Object? type = freezed,Object? amount = freezed,Object? canceled = freezed,Object? note = freezed,Object? reason = freezed,Object? paymentMethod = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,balanceType: freezed == balanceType ? _self.balanceType : balanceType // ignore: cast_nullable_to_non_nullable
as String?,balanceUserId: freezed == balanceUserId ? _self.balanceUserId : balanceUserId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,canceled: freezed == canceled ? _self.canceled : canceled // ignore: cast_nullable_to_non_nullable
as bool?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,
  ));
}
/// Create a copy of CanceledTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of CanceledTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}/// Create a copy of CanceledTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<$Res>? get paymentMethod {
    if (_self.paymentMethod == null) {
    return null;
  }

  return $PaymentMethodCopyWith<$Res>(_self.paymentMethod!, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}
}


/// Adds pattern-matching-related methods to [CanceledTransaction].
extension CanceledTransactionPatterns on CanceledTransaction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CanceledTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CanceledTransaction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CanceledTransaction value)  $default,){
final _that = this;
switch (_that) {
case _CanceledTransaction():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CanceledTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _CanceledTransaction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'transaction_id')  int? transactionId, @JsonKey(name: 'balance_type')  String? balanceType, @JsonKey(name: 'balance_user_id')  int? balanceUserId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'canceled')  bool? canceled, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'reason')  String? reason, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CanceledTransaction() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.transactionId,_that.balanceType,_that.balanceUserId,_that.type,_that.amount,_that.canceled,_that.note,_that.reason,_that.paymentMethod);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'transaction_id')  int? transactionId, @JsonKey(name: 'balance_type')  String? balanceType, @JsonKey(name: 'balance_user_id')  int? balanceUserId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'canceled')  bool? canceled, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'reason')  String? reason, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod)  $default,) {final _that = this;
switch (_that) {
case _CanceledTransaction():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.transactionId,_that.balanceType,_that.balanceUserId,_that.type,_that.amount,_that.canceled,_that.note,_that.reason,_that.paymentMethod);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'transaction_id')  int? transactionId, @JsonKey(name: 'balance_type')  String? balanceType, @JsonKey(name: 'balance_user_id')  int? balanceUserId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'canceled')  bool? canceled, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'reason')  String? reason, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod)?  $default,) {final _that = this;
switch (_that) {
case _CanceledTransaction() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.transactionId,_that.balanceType,_that.balanceUserId,_that.type,_that.amount,_that.canceled,_that.note,_that.reason,_that.paymentMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CanceledTransaction with DiagnosticableTreeMixin implements CanceledTransaction {
  const _CanceledTransaction({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'transaction_id') this.transactionId, @JsonKey(name: 'balance_type') this.balanceType, @JsonKey(name: 'balance_user_id') this.balanceUserId, @JsonKey(name: 'type') this.type, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'canceled') this.canceled, @JsonKey(name: 'note') this.note, @JsonKey(name: 'reason') this.reason, @JsonKey(name: 'payment_method') this.paymentMethod});
  factory _CanceledTransaction.fromJson(Map<String, dynamic> json) => _$CanceledTransactionFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'transaction_id') final  int? transactionId;
@override@JsonKey(name: 'balance_type') final  String? balanceType;
@override@JsonKey(name: 'balance_user_id') final  int? balanceUserId;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'amount') final  String? amount;
@override@JsonKey(name: 'canceled') final  bool? canceled;
@override@JsonKey(name: 'note') final  String? note;
@override@JsonKey(name: 'reason') final  String? reason;
@override@JsonKey(name: 'payment_method') final  PaymentMethod? paymentMethod;

/// Create a copy of CanceledTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CanceledTransactionCopyWith<_CanceledTransaction> get copyWith => __$CanceledTransactionCopyWithImpl<_CanceledTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CanceledTransactionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CanceledTransaction'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('transactionId', transactionId))..add(DiagnosticsProperty('balanceType', balanceType))..add(DiagnosticsProperty('balanceUserId', balanceUserId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('canceled', canceled))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('reason', reason))..add(DiagnosticsProperty('paymentMethod', paymentMethod));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CanceledTransaction&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.balanceType, balanceType) || other.balanceType == balanceType)&&(identical(other.balanceUserId, balanceUserId) || other.balanceUserId == balanceUserId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.canceled, canceled) || other.canceled == canceled)&&(identical(other.note, note) || other.note == note)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,transactionId,balanceType,balanceUserId,type,amount,canceled,note,reason,paymentMethod);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CanceledTransaction(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, transactionId: $transactionId, balanceType: $balanceType, balanceUserId: $balanceUserId, type: $type, amount: $amount, canceled: $canceled, note: $note, reason: $reason, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class _$CanceledTransactionCopyWith<$Res> implements $CanceledTransactionCopyWith<$Res> {
  factory _$CanceledTransactionCopyWith(_CanceledTransaction value, $Res Function(_CanceledTransaction) _then) = __$CanceledTransactionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'transaction_id') int? transactionId,@JsonKey(name: 'balance_type') String? balanceType,@JsonKey(name: 'balance_user_id') int? balanceUserId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'canceled') bool? canceled,@JsonKey(name: 'note') String? note,@JsonKey(name: 'reason') String? reason,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;@override $PaymentMethodCopyWith<$Res>? get paymentMethod;

}
/// @nodoc
class __$CanceledTransactionCopyWithImpl<$Res>
    implements _$CanceledTransactionCopyWith<$Res> {
  __$CanceledTransactionCopyWithImpl(this._self, this._then);

  final _CanceledTransaction _self;
  final $Res Function(_CanceledTransaction) _then;

/// Create a copy of CanceledTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? transactionId = freezed,Object? balanceType = freezed,Object? balanceUserId = freezed,Object? type = freezed,Object? amount = freezed,Object? canceled = freezed,Object? note = freezed,Object? reason = freezed,Object? paymentMethod = freezed,}) {
  return _then(_CanceledTransaction(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,balanceType: freezed == balanceType ? _self.balanceType : balanceType // ignore: cast_nullable_to_non_nullable
as String?,balanceUserId: freezed == balanceUserId ? _self.balanceUserId : balanceUserId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,canceled: freezed == canceled ? _self.canceled : canceled // ignore: cast_nullable_to_non_nullable
as bool?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,
  ));
}

/// Create a copy of CanceledTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of CanceledTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}/// Create a copy of CanceledTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<$Res>? get paymentMethod {
    if (_self.paymentMethod == null) {
    return null;
  }

  return $PaymentMethodCopyWith<$Res>(_self.paymentMethod!, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}
}


/// @nodoc
mixin _$StudentLesson implements DiagnosticableTreeMixin {

@JsonKey(name: 'student_lesson_id') int? get studentLessonId;@JsonKey(name: 'group_id') int? get groupId;@JsonKey(name: 'lesson_number') int? get lessonNumber;@JsonKey(name: 'course') Course? get course;
/// Create a copy of StudentLesson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentLessonCopyWith<StudentLesson> get copyWith => _$StudentLessonCopyWithImpl<StudentLesson>(this as StudentLesson, _$identity);

  /// Serializes this StudentLesson to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentLesson'))
    ..add(DiagnosticsProperty('studentLessonId', studentLessonId))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('lessonNumber', lessonNumber))..add(DiagnosticsProperty('course', course));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentLesson&&(identical(other.studentLessonId, studentLessonId) || other.studentLessonId == studentLessonId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber)&&(identical(other.course, course) || other.course == course));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentLessonId,groupId,lessonNumber,course);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentLesson(studentLessonId: $studentLessonId, groupId: $groupId, lessonNumber: $lessonNumber, course: $course)';
}


}

/// @nodoc
abstract mixin class $StudentLessonCopyWith<$Res>  {
  factory $StudentLessonCopyWith(StudentLesson value, $Res Function(StudentLesson) _then) = _$StudentLessonCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_lesson_id') int? studentLessonId,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'lesson_number') int? lessonNumber,@JsonKey(name: 'course') Course? course
});


$CourseCopyWith<$Res>? get course;

}
/// @nodoc
class _$StudentLessonCopyWithImpl<$Res>
    implements $StudentLessonCopyWith<$Res> {
  _$StudentLessonCopyWithImpl(this._self, this._then);

  final StudentLesson _self;
  final $Res Function(StudentLesson) _then;

/// Create a copy of StudentLesson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentLessonId = freezed,Object? groupId = freezed,Object? lessonNumber = freezed,Object? course = freezed,}) {
  return _then(_self.copyWith(
studentLessonId: freezed == studentLessonId ? _self.studentLessonId : studentLessonId // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,
  ));
}
/// Create a copy of StudentLesson
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $CourseCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentLesson].
extension StudentLessonPatterns on StudentLesson {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentLesson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentLesson() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentLesson value)  $default,){
final _that = this;
switch (_that) {
case _StudentLesson():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentLesson value)?  $default,){
final _that = this;
switch (_that) {
case _StudentLesson() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_lesson_id')  int? studentLessonId, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'course')  Course? course)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentLesson() when $default != null:
return $default(_that.studentLessonId,_that.groupId,_that.lessonNumber,_that.course);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_lesson_id')  int? studentLessonId, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'course')  Course? course)  $default,) {final _that = this;
switch (_that) {
case _StudentLesson():
return $default(_that.studentLessonId,_that.groupId,_that.lessonNumber,_that.course);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_lesson_id')  int? studentLessonId, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'course')  Course? course)?  $default,) {final _that = this;
switch (_that) {
case _StudentLesson() when $default != null:
return $default(_that.studentLessonId,_that.groupId,_that.lessonNumber,_that.course);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentLesson with DiagnosticableTreeMixin implements StudentLesson {
  const _StudentLesson({@JsonKey(name: 'student_lesson_id') this.studentLessonId, @JsonKey(name: 'group_id') this.groupId, @JsonKey(name: 'lesson_number') this.lessonNumber, @JsonKey(name: 'course') this.course});
  factory _StudentLesson.fromJson(Map<String, dynamic> json) => _$StudentLessonFromJson(json);

@override@JsonKey(name: 'student_lesson_id') final  int? studentLessonId;
@override@JsonKey(name: 'group_id') final  int? groupId;
@override@JsonKey(name: 'lesson_number') final  int? lessonNumber;
@override@JsonKey(name: 'course') final  Course? course;

/// Create a copy of StudentLesson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentLessonCopyWith<_StudentLesson> get copyWith => __$StudentLessonCopyWithImpl<_StudentLesson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentLessonToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentLesson'))
    ..add(DiagnosticsProperty('studentLessonId', studentLessonId))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('lessonNumber', lessonNumber))..add(DiagnosticsProperty('course', course));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentLesson&&(identical(other.studentLessonId, studentLessonId) || other.studentLessonId == studentLessonId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber)&&(identical(other.course, course) || other.course == course));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentLessonId,groupId,lessonNumber,course);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentLesson(studentLessonId: $studentLessonId, groupId: $groupId, lessonNumber: $lessonNumber, course: $course)';
}


}

/// @nodoc
abstract mixin class _$StudentLessonCopyWith<$Res> implements $StudentLessonCopyWith<$Res> {
  factory _$StudentLessonCopyWith(_StudentLesson value, $Res Function(_StudentLesson) _then) = __$StudentLessonCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_lesson_id') int? studentLessonId,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'lesson_number') int? lessonNumber,@JsonKey(name: 'course') Course? course
});


@override $CourseCopyWith<$Res>? get course;

}
/// @nodoc
class __$StudentLessonCopyWithImpl<$Res>
    implements _$StudentLessonCopyWith<$Res> {
  __$StudentLessonCopyWithImpl(this._self, this._then);

  final _StudentLesson _self;
  final $Res Function(_StudentLesson) _then;

/// Create a copy of StudentLesson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentLessonId = freezed,Object? groupId = freezed,Object? lessonNumber = freezed,Object? course = freezed,}) {
  return _then(_StudentLesson(
studentLessonId: freezed == studentLessonId ? _self.studentLessonId : studentLessonId // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,
  ));
}

/// Create a copy of StudentLesson
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $CourseCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}


/// @nodoc
mixin _$Course implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'color') String? get color;
/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseCopyWith<Course> get copyWith => _$CourseCopyWithImpl<Course>(this as Course, _$identity);

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Course'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('color', color));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,color);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, icon: $icon, color: $color)';
}


}

/// @nodoc
abstract mixin class $CourseCopyWith<$Res>  {
  factory $CourseCopyWith(Course value, $Res Function(Course) _then) = _$CourseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'color') String? color
});




}
/// @nodoc
class _$CourseCopyWithImpl<$Res>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._self, this._then);

  final Course _self;
  final $Res Function(Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? color = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Course].
extension CoursePatterns on Course {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Course value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Course value)  $default,){
final _that = this;
switch (_that) {
case _Course():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Course value)?  $default,){
final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'color')  String? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.color);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'color')  String? color)  $default,) {final _that = this;
switch (_that) {
case _Course():
return $default(_that.id,_that.name,_that.icon,_that.color);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'color')  String? color)?  $default,) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Course with DiagnosticableTreeMixin implements Course {
  const _Course({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'color') this.color});
  factory _Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'color') final  String? color;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseCopyWith<_Course> get copyWith => __$CourseCopyWithImpl<_Course>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Course'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('color', color));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,color);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, icon: $icon, color: $color)';
}


}

/// @nodoc
abstract mixin class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) _then) = __$CourseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'color') String? color
});




}
/// @nodoc
class __$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(this._self, this._then);

  final _Course _self;
  final $Res Function(_Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? color = freezed,}) {
  return _then(_Course(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Service implements DiagnosticableTreeMixin {

@JsonKey(name: 'service_name') String? get serviceName;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'service_id') int? get serviceId;
/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceCopyWith<Service> get copyWith => _$ServiceCopyWithImpl<Service>(this as Service, _$identity);

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Service'))
    ..add(DiagnosticsProperty('serviceName', serviceName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('serviceId', serviceId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Service&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.id, id) || other.id == id)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,id,serviceId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Service(serviceName: $serviceName, id: $id, serviceId: $serviceId)';
}


}

/// @nodoc
abstract mixin class $ServiceCopyWith<$Res>  {
  factory $ServiceCopyWith(Service value, $Res Function(Service) _then) = _$ServiceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'service_name') String? serviceName,@JsonKey(name: 'id') int? id,@JsonKey(name: 'service_id') int? serviceId
});




}
/// @nodoc
class _$ServiceCopyWithImpl<$Res>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._self, this._then);

  final Service _self;
  final $Res Function(Service) _then;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceName = freezed,Object? id = freezed,Object? serviceId = freezed,}) {
  return _then(_self.copyWith(
serviceName: freezed == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,serviceId: freezed == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Service].
extension ServicePatterns on Service {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Service value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Service() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Service value)  $default,){
final _that = this;
switch (_that) {
case _Service():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Service value)?  $default,){
final _that = this;
switch (_that) {
case _Service() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'service_name')  String? serviceName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'service_id')  int? serviceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Service() when $default != null:
return $default(_that.serviceName,_that.id,_that.serviceId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'service_name')  String? serviceName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'service_id')  int? serviceId)  $default,) {final _that = this;
switch (_that) {
case _Service():
return $default(_that.serviceName,_that.id,_that.serviceId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'service_name')  String? serviceName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'service_id')  int? serviceId)?  $default,) {final _that = this;
switch (_that) {
case _Service() when $default != null:
return $default(_that.serviceName,_that.id,_that.serviceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Service with DiagnosticableTreeMixin implements Service {
  const _Service({@JsonKey(name: 'service_name') this.serviceName, @JsonKey(name: 'id') this.id, @JsonKey(name: 'service_id') this.serviceId});
  factory _Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

@override@JsonKey(name: 'service_name') final  String? serviceName;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'service_id') final  int? serviceId;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceCopyWith<_Service> get copyWith => __$ServiceCopyWithImpl<_Service>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Service'))
    ..add(DiagnosticsProperty('serviceName', serviceName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('serviceId', serviceId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Service&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.id, id) || other.id == id)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,id,serviceId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Service(serviceName: $serviceName, id: $id, serviceId: $serviceId)';
}


}

/// @nodoc
abstract mixin class _$ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$ServiceCopyWith(_Service value, $Res Function(_Service) _then) = __$ServiceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'service_name') String? serviceName,@JsonKey(name: 'id') int? id,@JsonKey(name: 'service_id') int? serviceId
});




}
/// @nodoc
class __$ServiceCopyWithImpl<$Res>
    implements _$ServiceCopyWith<$Res> {
  __$ServiceCopyWithImpl(this._self, this._then);

  final _Service _self;
  final $Res Function(_Service) _then;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceName = freezed,Object? id = freezed,Object? serviceId = freezed,}) {
  return _then(_Service(
serviceName: freezed == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,serviceId: freezed == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Package implements DiagnosticableTreeMixin {

@JsonKey(name: 'package_name') String? get packageName;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'package_id') int? get packageId;@JsonKey(name: 'student_lesson_id') int? get studentLessonId;
/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageCopyWith<Package> get copyWith => _$PackageCopyWithImpl<Package>(this as Package, _$identity);

  /// Serializes this Package to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Package'))
    ..add(DiagnosticsProperty('packageName', packageName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('packageId', packageId))..add(DiagnosticsProperty('studentLessonId', studentLessonId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Package&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.id, id) || other.id == id)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.studentLessonId, studentLessonId) || other.studentLessonId == studentLessonId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageName,id,packageId,studentLessonId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Package(packageName: $packageName, id: $id, packageId: $packageId, studentLessonId: $studentLessonId)';
}


}

/// @nodoc
abstract mixin class $PackageCopyWith<$Res>  {
  factory $PackageCopyWith(Package value, $Res Function(Package) _then) = _$PackageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'package_name') String? packageName,@JsonKey(name: 'id') int? id,@JsonKey(name: 'package_id') int? packageId,@JsonKey(name: 'student_lesson_id') int? studentLessonId
});




}
/// @nodoc
class _$PackageCopyWithImpl<$Res>
    implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._self, this._then);

  final Package _self;
  final $Res Function(Package) _then;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packageName = freezed,Object? id = freezed,Object? packageId = freezed,Object? studentLessonId = freezed,}) {
  return _then(_self.copyWith(
packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int?,studentLessonId: freezed == studentLessonId ? _self.studentLessonId : studentLessonId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Package].
extension PackagePatterns on Package {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Package value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Package() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Package value)  $default,){
final _that = this;
switch (_that) {
case _Package():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Package value)?  $default,){
final _that = this;
switch (_that) {
case _Package() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'package_name')  String? packageName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'package_id')  int? packageId, @JsonKey(name: 'student_lesson_id')  int? studentLessonId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Package() when $default != null:
return $default(_that.packageName,_that.id,_that.packageId,_that.studentLessonId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'package_name')  String? packageName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'package_id')  int? packageId, @JsonKey(name: 'student_lesson_id')  int? studentLessonId)  $default,) {final _that = this;
switch (_that) {
case _Package():
return $default(_that.packageName,_that.id,_that.packageId,_that.studentLessonId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'package_name')  String? packageName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'package_id')  int? packageId, @JsonKey(name: 'student_lesson_id')  int? studentLessonId)?  $default,) {final _that = this;
switch (_that) {
case _Package() when $default != null:
return $default(_that.packageName,_that.id,_that.packageId,_that.studentLessonId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Package with DiagnosticableTreeMixin implements Package {
  const _Package({@JsonKey(name: 'package_name') this.packageName, @JsonKey(name: 'id') this.id, @JsonKey(name: 'package_id') this.packageId, @JsonKey(name: 'student_lesson_id') this.studentLessonId});
  factory _Package.fromJson(Map<String, dynamic> json) => _$PackageFromJson(json);

@override@JsonKey(name: 'package_name') final  String? packageName;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'package_id') final  int? packageId;
@override@JsonKey(name: 'student_lesson_id') final  int? studentLessonId;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageCopyWith<_Package> get copyWith => __$PackageCopyWithImpl<_Package>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Package'))
    ..add(DiagnosticsProperty('packageName', packageName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('packageId', packageId))..add(DiagnosticsProperty('studentLessonId', studentLessonId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Package&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.id, id) || other.id == id)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.studentLessonId, studentLessonId) || other.studentLessonId == studentLessonId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageName,id,packageId,studentLessonId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Package(packageName: $packageName, id: $id, packageId: $packageId, studentLessonId: $studentLessonId)';
}


}

/// @nodoc
abstract mixin class _$PackageCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$PackageCopyWith(_Package value, $Res Function(_Package) _then) = __$PackageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'package_name') String? packageName,@JsonKey(name: 'id') int? id,@JsonKey(name: 'package_id') int? packageId,@JsonKey(name: 'student_lesson_id') int? studentLessonId
});




}
/// @nodoc
class __$PackageCopyWithImpl<$Res>
    implements _$PackageCopyWith<$Res> {
  __$PackageCopyWithImpl(this._self, this._then);

  final _Package _self;
  final $Res Function(_Package) _then;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packageName = freezed,Object? id = freezed,Object? packageId = freezed,Object? studentLessonId = freezed,}) {
  return _then(_Package(
packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int?,studentLessonId: freezed == studentLessonId ? _self.studentLessonId : studentLessonId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Product implements DiagnosticableTreeMixin {

@JsonKey(name: 'product_name') String? get productName;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'purchased_product_id') int? get purchasedProductId;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Product'))
    ..add(DiagnosticsProperty('productName', productName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('purchasedProductId', purchasedProductId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.id, id) || other.id == id)&&(identical(other.purchasedProductId, purchasedProductId) || other.purchasedProductId == purchasedProductId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,id,purchasedProductId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Product(productName: $productName, id: $id, purchasedProductId: $purchasedProductId)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_name') String? productName,@JsonKey(name: 'id') int? id,@JsonKey(name: 'purchased_product_id') int? purchasedProductId
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productName = freezed,Object? id = freezed,Object? purchasedProductId = freezed,}) {
  return _then(_self.copyWith(
productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,purchasedProductId: freezed == purchasedProductId ? _self.purchasedProductId : purchasedProductId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_name')  String? productName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'purchased_product_id')  int? purchasedProductId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.productName,_that.id,_that.purchasedProductId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_name')  String? productName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'purchased_product_id')  int? purchasedProductId)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.productName,_that.id,_that.purchasedProductId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_name')  String? productName, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'purchased_product_id')  int? purchasedProductId)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.productName,_that.id,_that.purchasedProductId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product with DiagnosticableTreeMixin implements Product {
  const _Product({@JsonKey(name: 'product_name') this.productName, @JsonKey(name: 'id') this.id, @JsonKey(name: 'purchased_product_id') this.purchasedProductId});
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override@JsonKey(name: 'product_name') final  String? productName;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'purchased_product_id') final  int? purchasedProductId;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Product'))
    ..add(DiagnosticsProperty('productName', productName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('purchasedProductId', purchasedProductId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.id, id) || other.id == id)&&(identical(other.purchasedProductId, purchasedProductId) || other.purchasedProductId == purchasedProductId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,id,purchasedProductId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Product(productName: $productName, id: $id, purchasedProductId: $purchasedProductId)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_name') String? productName,@JsonKey(name: 'id') int? id,@JsonKey(name: 'purchased_product_id') int? purchasedProductId
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productName = freezed,Object? id = freezed,Object? purchasedProductId = freezed,}) {
  return _then(_Product(
productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,purchasedProductId: freezed == purchasedProductId ? _self.purchasedProductId : purchasedProductId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
