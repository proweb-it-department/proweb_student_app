// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'servise_for_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiseForSale implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'days') int? get days;@JsonKey(name: 'type') ServiceType? get type;@JsonKey(name: 'price') String? get price;@JsonKey(name: 'disposable') bool? get disposable;@JsonKey(name: 'status') ServiceStatus? get status;@JsonKey(name: 'purchase_available') bool? get purchaseAvailable;@JsonKey(name: 'cover') String? get cover;
/// Create a copy of ServiseForSale
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiseForSaleCopyWith<ServiseForSale> get copyWith => _$ServiseForSaleCopyWithImpl<ServiseForSale>(this as ServiseForSale, _$identity);

  /// Serializes this ServiseForSale to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiseForSale'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('disposable', disposable))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('purchaseAvailable', purchaseAvailable))..add(DiagnosticsProperty('cover', cover));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiseForSale&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.days, days) || other.days == days)&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price)&&(identical(other.disposable, disposable) || other.disposable == disposable)&&(identical(other.status, status) || other.status == status)&&(identical(other.purchaseAvailable, purchaseAvailable) || other.purchaseAvailable == purchaseAvailable)&&(identical(other.cover, cover) || other.cover == cover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,id,name,description,days,type,price,disposable,status,purchaseAvailable,cover);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiseForSale(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, name: $name, description: $description, days: $days, type: $type, price: $price, disposable: $disposable, status: $status, purchaseAvailable: $purchaseAvailable, cover: $cover)';
}


}

/// @nodoc
abstract mixin class $ServiseForSaleCopyWith<$Res>  {
  factory $ServiseForSaleCopyWith(ServiseForSale value, $Res Function(ServiseForSale) _then) = _$ServiseForSaleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'days') int? days,@JsonKey(name: 'type') ServiceType? type,@JsonKey(name: 'price') String? price,@JsonKey(name: 'disposable') bool? disposable,@JsonKey(name: 'status') ServiceStatus? status,@JsonKey(name: 'purchase_available') bool? purchaseAvailable,@JsonKey(name: 'cover') String? cover
});




}
/// @nodoc
class _$ServiseForSaleCopyWithImpl<$Res>
    implements $ServiseForSaleCopyWith<$Res> {
  _$ServiseForSaleCopyWithImpl(this._self, this._then);

  final ServiseForSale _self;
  final $Res Function(ServiseForSale) _then;

/// Create a copy of ServiseForSale
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? days = freezed,Object? type = freezed,Object? price = freezed,Object? disposable = freezed,Object? status = freezed,Object? purchaseAvailable = freezed,Object? cover = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ServiceType?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,disposable: freezed == disposable ? _self.disposable : disposable // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ServiceStatus?,purchaseAvailable: freezed == purchaseAvailable ? _self.purchaseAvailable : purchaseAvailable // ignore: cast_nullable_to_non_nullable
as bool?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiseForSale].
extension ServiseForSalePatterns on ServiseForSale {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiseForSale value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiseForSale() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiseForSale value)  $default,){
final _that = this;
switch (_that) {
case _ServiseForSale():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiseForSale value)?  $default,){
final _that = this;
switch (_that) {
case _ServiseForSale() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'type')  ServiceType? type, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'disposable')  bool? disposable, @JsonKey(name: 'status')  ServiceStatus? status, @JsonKey(name: 'purchase_available')  bool? purchaseAvailable, @JsonKey(name: 'cover')  String? cover)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiseForSale() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.name,_that.description,_that.days,_that.type,_that.price,_that.disposable,_that.status,_that.purchaseAvailable,_that.cover);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'type')  ServiceType? type, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'disposable')  bool? disposable, @JsonKey(name: 'status')  ServiceStatus? status, @JsonKey(name: 'purchase_available')  bool? purchaseAvailable, @JsonKey(name: 'cover')  String? cover)  $default,) {final _that = this;
switch (_that) {
case _ServiseForSale():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.name,_that.description,_that.days,_that.type,_that.price,_that.disposable,_that.status,_that.purchaseAvailable,_that.cover);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'type')  ServiceType? type, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'disposable')  bool? disposable, @JsonKey(name: 'status')  ServiceStatus? status, @JsonKey(name: 'purchase_available')  bool? purchaseAvailable, @JsonKey(name: 'cover')  String? cover)?  $default,) {final _that = this;
switch (_that) {
case _ServiseForSale() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.name,_that.description,_that.days,_that.type,_that.price,_that.disposable,_that.status,_that.purchaseAvailable,_that.cover);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiseForSale with DiagnosticableTreeMixin implements ServiseForSale {
  const _ServiseForSale({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'days') this.days, @JsonKey(name: 'type') this.type, @JsonKey(name: 'price') this.price, @JsonKey(name: 'disposable') this.disposable, @JsonKey(name: 'status') this.status, @JsonKey(name: 'purchase_available') this.purchaseAvailable, @JsonKey(name: 'cover') this.cover});
  factory _ServiseForSale.fromJson(Map<String, dynamic> json) => _$ServiseForSaleFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'days') final  int? days;
@override@JsonKey(name: 'type') final  ServiceType? type;
@override@JsonKey(name: 'price') final  String? price;
@override@JsonKey(name: 'disposable') final  bool? disposable;
@override@JsonKey(name: 'status') final  ServiceStatus? status;
@override@JsonKey(name: 'purchase_available') final  bool? purchaseAvailable;
@override@JsonKey(name: 'cover') final  String? cover;

/// Create a copy of ServiseForSale
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiseForSaleCopyWith<_ServiseForSale> get copyWith => __$ServiseForSaleCopyWithImpl<_ServiseForSale>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiseForSaleToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiseForSale'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('disposable', disposable))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('purchaseAvailable', purchaseAvailable))..add(DiagnosticsProperty('cover', cover));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiseForSale&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.days, days) || other.days == days)&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price)&&(identical(other.disposable, disposable) || other.disposable == disposable)&&(identical(other.status, status) || other.status == status)&&(identical(other.purchaseAvailable, purchaseAvailable) || other.purchaseAvailable == purchaseAvailable)&&(identical(other.cover, cover) || other.cover == cover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,id,name,description,days,type,price,disposable,status,purchaseAvailable,cover);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiseForSale(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, name: $name, description: $description, days: $days, type: $type, price: $price, disposable: $disposable, status: $status, purchaseAvailable: $purchaseAvailable, cover: $cover)';
}


}

/// @nodoc
abstract mixin class _$ServiseForSaleCopyWith<$Res> implements $ServiseForSaleCopyWith<$Res> {
  factory _$ServiseForSaleCopyWith(_ServiseForSale value, $Res Function(_ServiseForSale) _then) = __$ServiseForSaleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'days') int? days,@JsonKey(name: 'type') ServiceType? type,@JsonKey(name: 'price') String? price,@JsonKey(name: 'disposable') bool? disposable,@JsonKey(name: 'status') ServiceStatus? status,@JsonKey(name: 'purchase_available') bool? purchaseAvailable,@JsonKey(name: 'cover') String? cover
});




}
/// @nodoc
class __$ServiseForSaleCopyWithImpl<$Res>
    implements _$ServiseForSaleCopyWith<$Res> {
  __$ServiseForSaleCopyWithImpl(this._self, this._then);

  final _ServiseForSale _self;
  final $Res Function(_ServiseForSale) _then;

/// Create a copy of ServiseForSale
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? days = freezed,Object? type = freezed,Object? price = freezed,Object? disposable = freezed,Object? status = freezed,Object? purchaseAvailable = freezed,Object? cover = freezed,}) {
  return _then(_ServiseForSale(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ServiceType?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,disposable: freezed == disposable ? _self.disposable : disposable // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ServiceStatus?,purchaseAvailable: freezed == purchaseAvailable ? _self.purchaseAvailable : purchaseAvailable // ignore: cast_nullable_to_non_nullable
as bool?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
