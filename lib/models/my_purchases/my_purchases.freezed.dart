// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_purchases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyPurchases implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'product') Products? get product;@JsonKey(name: 'module_access_count') int? get moduleAccessCount;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'sale_type') String? get saleType;@JsonKey(name: 'price') String? get price;@JsonKey(name: 'price_coin') int? get priceCoin;@JsonKey(name: 'assessment') String? get assessment;@JsonKey(name: 'access') bool? get access;
/// Create a copy of MyPurchases
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyPurchasesCopyWith<MyPurchases> get copyWith => _$MyPurchasesCopyWithImpl<MyPurchases>(this as MyPurchases, _$identity);

  /// Serializes this MyPurchases to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyPurchases'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('moduleAccessCount', moduleAccessCount))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('saleType', saleType))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('priceCoin', priceCoin))..add(DiagnosticsProperty('assessment', assessment))..add(DiagnosticsProperty('access', access));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPurchases&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.product, product) || other.product == product)&&(identical(other.moduleAccessCount, moduleAccessCount) || other.moduleAccessCount == moduleAccessCount)&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.saleType, saleType) || other.saleType == saleType)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceCoin, priceCoin) || other.priceCoin == priceCoin)&&(identical(other.assessment, assessment) || other.assessment == assessment)&&(identical(other.access, access) || other.access == access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,product,moduleAccessCount,id,studentId,userId,saleType,price,priceCoin,assessment,access);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyPurchases(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, product: $product, moduleAccessCount: $moduleAccessCount, id: $id, studentId: $studentId, userId: $userId, saleType: $saleType, price: $price, priceCoin: $priceCoin, assessment: $assessment, access: $access)';
}


}

/// @nodoc
abstract mixin class $MyPurchasesCopyWith<$Res>  {
  factory $MyPurchasesCopyWith(MyPurchases value, $Res Function(MyPurchases) _then) = _$MyPurchasesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'product') Products? product,@JsonKey(name: 'module_access_count') int? moduleAccessCount,@JsonKey(name: 'id') int? id,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'sale_type') String? saleType,@JsonKey(name: 'price') String? price,@JsonKey(name: 'price_coin') int? priceCoin,@JsonKey(name: 'assessment') String? assessment,@JsonKey(name: 'access') bool? access
});


$ProductsCopyWith<$Res>? get product;

}
/// @nodoc
class _$MyPurchasesCopyWithImpl<$Res>
    implements $MyPurchasesCopyWith<$Res> {
  _$MyPurchasesCopyWithImpl(this._self, this._then);

  final MyPurchases _self;
  final $Res Function(MyPurchases) _then;

/// Create a copy of MyPurchases
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? product = freezed,Object? moduleAccessCount = freezed,Object? id = freezed,Object? studentId = freezed,Object? userId = freezed,Object? saleType = freezed,Object? price = freezed,Object? priceCoin = freezed,Object? assessment = freezed,Object? access = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Products?,moduleAccessCount: freezed == moduleAccessCount ? _self.moduleAccessCount : moduleAccessCount // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,saleType: freezed == saleType ? _self.saleType : saleType // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,priceCoin: freezed == priceCoin ? _self.priceCoin : priceCoin // ignore: cast_nullable_to_non_nullable
as int?,assessment: freezed == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as String?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of MyPurchases
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductsCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyPurchases].
extension MyPurchasesPatterns on MyPurchases {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyPurchases value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyPurchases() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyPurchases value)  $default,){
final _that = this;
switch (_that) {
case _MyPurchases():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyPurchases value)?  $default,){
final _that = this;
switch (_that) {
case _MyPurchases() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'product')  Products? product, @JsonKey(name: 'module_access_count')  int? moduleAccessCount, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'sale_type')  String? saleType, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'price_coin')  int? priceCoin, @JsonKey(name: 'assessment')  String? assessment, @JsonKey(name: 'access')  bool? access)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyPurchases() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.product,_that.moduleAccessCount,_that.id,_that.studentId,_that.userId,_that.saleType,_that.price,_that.priceCoin,_that.assessment,_that.access);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'product')  Products? product, @JsonKey(name: 'module_access_count')  int? moduleAccessCount, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'sale_type')  String? saleType, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'price_coin')  int? priceCoin, @JsonKey(name: 'assessment')  String? assessment, @JsonKey(name: 'access')  bool? access)  $default,) {final _that = this;
switch (_that) {
case _MyPurchases():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.product,_that.moduleAccessCount,_that.id,_that.studentId,_that.userId,_that.saleType,_that.price,_that.priceCoin,_that.assessment,_that.access);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'product')  Products? product, @JsonKey(name: 'module_access_count')  int? moduleAccessCount, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'sale_type')  String? saleType, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'price_coin')  int? priceCoin, @JsonKey(name: 'assessment')  String? assessment, @JsonKey(name: 'access')  bool? access)?  $default,) {final _that = this;
switch (_that) {
case _MyPurchases() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.product,_that.moduleAccessCount,_that.id,_that.studentId,_that.userId,_that.saleType,_that.price,_that.priceCoin,_that.assessment,_that.access);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyPurchases with DiagnosticableTreeMixin implements MyPurchases {
  const _MyPurchases({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'product') this.product, @JsonKey(name: 'module_access_count') this.moduleAccessCount, @JsonKey(name: 'id') this.id, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'sale_type') this.saleType, @JsonKey(name: 'price') this.price, @JsonKey(name: 'price_coin') this.priceCoin, @JsonKey(name: 'assessment') this.assessment, @JsonKey(name: 'access') this.access});
  factory _MyPurchases.fromJson(Map<String, dynamic> json) => _$MyPurchasesFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'product') final  Products? product;
@override@JsonKey(name: 'module_access_count') final  int? moduleAccessCount;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'student_id') final  int? studentId;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'sale_type') final  String? saleType;
@override@JsonKey(name: 'price') final  String? price;
@override@JsonKey(name: 'price_coin') final  int? priceCoin;
@override@JsonKey(name: 'assessment') final  String? assessment;
@override@JsonKey(name: 'access') final  bool? access;

/// Create a copy of MyPurchases
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyPurchasesCopyWith<_MyPurchases> get copyWith => __$MyPurchasesCopyWithImpl<_MyPurchases>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyPurchasesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyPurchases'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('moduleAccessCount', moduleAccessCount))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('saleType', saleType))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('priceCoin', priceCoin))..add(DiagnosticsProperty('assessment', assessment))..add(DiagnosticsProperty('access', access));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyPurchases&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.product, product) || other.product == product)&&(identical(other.moduleAccessCount, moduleAccessCount) || other.moduleAccessCount == moduleAccessCount)&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.saleType, saleType) || other.saleType == saleType)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceCoin, priceCoin) || other.priceCoin == priceCoin)&&(identical(other.assessment, assessment) || other.assessment == assessment)&&(identical(other.access, access) || other.access == access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,product,moduleAccessCount,id,studentId,userId,saleType,price,priceCoin,assessment,access);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyPurchases(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, product: $product, moduleAccessCount: $moduleAccessCount, id: $id, studentId: $studentId, userId: $userId, saleType: $saleType, price: $price, priceCoin: $priceCoin, assessment: $assessment, access: $access)';
}


}

/// @nodoc
abstract mixin class _$MyPurchasesCopyWith<$Res> implements $MyPurchasesCopyWith<$Res> {
  factory _$MyPurchasesCopyWith(_MyPurchases value, $Res Function(_MyPurchases) _then) = __$MyPurchasesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'product') Products? product,@JsonKey(name: 'module_access_count') int? moduleAccessCount,@JsonKey(name: 'id') int? id,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'sale_type') String? saleType,@JsonKey(name: 'price') String? price,@JsonKey(name: 'price_coin') int? priceCoin,@JsonKey(name: 'assessment') String? assessment,@JsonKey(name: 'access') bool? access
});


@override $ProductsCopyWith<$Res>? get product;

}
/// @nodoc
class __$MyPurchasesCopyWithImpl<$Res>
    implements _$MyPurchasesCopyWith<$Res> {
  __$MyPurchasesCopyWithImpl(this._self, this._then);

  final _MyPurchases _self;
  final $Res Function(_MyPurchases) _then;

/// Create a copy of MyPurchases
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? product = freezed,Object? moduleAccessCount = freezed,Object? id = freezed,Object? studentId = freezed,Object? userId = freezed,Object? saleType = freezed,Object? price = freezed,Object? priceCoin = freezed,Object? assessment = freezed,Object? access = freezed,}) {
  return _then(_MyPurchases(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Products?,moduleAccessCount: freezed == moduleAccessCount ? _self.moduleAccessCount : moduleAccessCount // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,saleType: freezed == saleType ? _self.saleType : saleType // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,priceCoin: freezed == priceCoin ? _self.priceCoin : priceCoin // ignore: cast_nullable_to_non_nullable
as int?,assessment: freezed == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as String?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of MyPurchases
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductsCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
