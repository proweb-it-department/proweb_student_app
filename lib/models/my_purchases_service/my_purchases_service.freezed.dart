// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_purchases_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyPurchasesService implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'student') Student? get student;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'main_id') int? get mainId;@JsonKey(name: 'package_id') int? get packageId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'days') int? get days;@JsonKey(name: 'type') ServiceType? get type;@JsonKey(name: 'price') String? get price;@JsonKey(name: 'disposable') bool? get disposable;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'purchase_available') bool? get purchaseAvailable;@JsonKey(name: 'access') bool? get access;@JsonKey(name: 'processed') bool? get processed;@JsonKey(name: 'cover') String? get cover;
/// Create a copy of MyPurchasesService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyPurchasesServiceCopyWith<MyPurchasesService> get copyWith => _$MyPurchasesServiceCopyWithImpl<MyPurchasesService>(this as MyPurchasesService, _$identity);

  /// Serializes this MyPurchasesService to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyPurchasesService'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('student', student))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('mainId', mainId))..add(DiagnosticsProperty('packageId', packageId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('disposable', disposable))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('purchaseAvailable', purchaseAvailable))..add(DiagnosticsProperty('access', access))..add(DiagnosticsProperty('processed', processed))..add(DiagnosticsProperty('cover', cover));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPurchasesService&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.student, student) || other.student == student)&&(identical(other.id, id) || other.id == id)&&(identical(other.mainId, mainId) || other.mainId == mainId)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.days, days) || other.days == days)&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price)&&(identical(other.disposable, disposable) || other.disposable == disposable)&&(identical(other.status, status) || other.status == status)&&(identical(other.purchaseAvailable, purchaseAvailable) || other.purchaseAvailable == purchaseAvailable)&&(identical(other.access, access) || other.access == access)&&(identical(other.processed, processed) || other.processed == processed)&&(identical(other.cover, cover) || other.cover == cover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdById,updatedById,student,id,mainId,packageId,name,description,days,type,price,disposable,status,purchaseAvailable,access,processed,cover]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyPurchasesService(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, student: $student, id: $id, mainId: $mainId, packageId: $packageId, name: $name, description: $description, days: $days, type: $type, price: $price, disposable: $disposable, status: $status, purchaseAvailable: $purchaseAvailable, access: $access, processed: $processed, cover: $cover)';
}


}

/// @nodoc
abstract mixin class $MyPurchasesServiceCopyWith<$Res>  {
  factory $MyPurchasesServiceCopyWith(MyPurchasesService value, $Res Function(MyPurchasesService) _then) = _$MyPurchasesServiceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'student') Student? student,@JsonKey(name: 'id') int? id,@JsonKey(name: 'main_id') int? mainId,@JsonKey(name: 'package_id') int? packageId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'days') int? days,@JsonKey(name: 'type') ServiceType? type,@JsonKey(name: 'price') String? price,@JsonKey(name: 'disposable') bool? disposable,@JsonKey(name: 'status') String? status,@JsonKey(name: 'purchase_available') bool? purchaseAvailable,@JsonKey(name: 'access') bool? access,@JsonKey(name: 'processed') bool? processed,@JsonKey(name: 'cover') String? cover
});


$StudentCopyWith<$Res>? get student;

}
/// @nodoc
class _$MyPurchasesServiceCopyWithImpl<$Res>
    implements $MyPurchasesServiceCopyWith<$Res> {
  _$MyPurchasesServiceCopyWithImpl(this._self, this._then);

  final MyPurchasesService _self;
  final $Res Function(MyPurchasesService) _then;

/// Create a copy of MyPurchasesService
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? student = freezed,Object? id = freezed,Object? mainId = freezed,Object? packageId = freezed,Object? name = freezed,Object? description = freezed,Object? days = freezed,Object? type = freezed,Object? price = freezed,Object? disposable = freezed,Object? status = freezed,Object? purchaseAvailable = freezed,Object? access = freezed,Object? processed = freezed,Object? cover = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,mainId: freezed == mainId ? _self.mainId : mainId // ignore: cast_nullable_to_non_nullable
as int?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ServiceType?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,disposable: freezed == disposable ? _self.disposable : disposable // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,purchaseAvailable: freezed == purchaseAvailable ? _self.purchaseAvailable : purchaseAvailable // ignore: cast_nullable_to_non_nullable
as bool?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as bool?,processed: freezed == processed ? _self.processed : processed // ignore: cast_nullable_to_non_nullable
as bool?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MyPurchasesService
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyPurchasesService].
extension MyPurchasesServicePatterns on MyPurchasesService {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyPurchasesService value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyPurchasesService() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyPurchasesService value)  $default,){
final _that = this;
switch (_that) {
case _MyPurchasesService():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyPurchasesService value)?  $default,){
final _that = this;
switch (_that) {
case _MyPurchasesService() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'main_id')  int? mainId, @JsonKey(name: 'package_id')  int? packageId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'type')  ServiceType? type, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'disposable')  bool? disposable, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'purchase_available')  bool? purchaseAvailable, @JsonKey(name: 'access')  bool? access, @JsonKey(name: 'processed')  bool? processed, @JsonKey(name: 'cover')  String? cover)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyPurchasesService() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.student,_that.id,_that.mainId,_that.packageId,_that.name,_that.description,_that.days,_that.type,_that.price,_that.disposable,_that.status,_that.purchaseAvailable,_that.access,_that.processed,_that.cover);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'main_id')  int? mainId, @JsonKey(name: 'package_id')  int? packageId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'type')  ServiceType? type, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'disposable')  bool? disposable, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'purchase_available')  bool? purchaseAvailable, @JsonKey(name: 'access')  bool? access, @JsonKey(name: 'processed')  bool? processed, @JsonKey(name: 'cover')  String? cover)  $default,) {final _that = this;
switch (_that) {
case _MyPurchasesService():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.student,_that.id,_that.mainId,_that.packageId,_that.name,_that.description,_that.days,_that.type,_that.price,_that.disposable,_that.status,_that.purchaseAvailable,_that.access,_that.processed,_that.cover);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'main_id')  int? mainId, @JsonKey(name: 'package_id')  int? packageId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'type')  ServiceType? type, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'disposable')  bool? disposable, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'purchase_available')  bool? purchaseAvailable, @JsonKey(name: 'access')  bool? access, @JsonKey(name: 'processed')  bool? processed, @JsonKey(name: 'cover')  String? cover)?  $default,) {final _that = this;
switch (_that) {
case _MyPurchasesService() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.student,_that.id,_that.mainId,_that.packageId,_that.name,_that.description,_that.days,_that.type,_that.price,_that.disposable,_that.status,_that.purchaseAvailable,_that.access,_that.processed,_that.cover);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyPurchasesService with DiagnosticableTreeMixin implements MyPurchasesService {
  const _MyPurchasesService({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'student') this.student, @JsonKey(name: 'id') this.id, @JsonKey(name: 'main_id') this.mainId, @JsonKey(name: 'package_id') this.packageId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'days') this.days, @JsonKey(name: 'type') this.type, @JsonKey(name: 'price') this.price, @JsonKey(name: 'disposable') this.disposable, @JsonKey(name: 'status') this.status, @JsonKey(name: 'purchase_available') this.purchaseAvailable, @JsonKey(name: 'access') this.access, @JsonKey(name: 'processed') this.processed, @JsonKey(name: 'cover') this.cover});
  factory _MyPurchasesService.fromJson(Map<String, dynamic> json) => _$MyPurchasesServiceFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'student') final  Student? student;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'main_id') final  int? mainId;
@override@JsonKey(name: 'package_id') final  int? packageId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'days') final  int? days;
@override@JsonKey(name: 'type') final  ServiceType? type;
@override@JsonKey(name: 'price') final  String? price;
@override@JsonKey(name: 'disposable') final  bool? disposable;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'purchase_available') final  bool? purchaseAvailable;
@override@JsonKey(name: 'access') final  bool? access;
@override@JsonKey(name: 'processed') final  bool? processed;
@override@JsonKey(name: 'cover') final  String? cover;

/// Create a copy of MyPurchasesService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyPurchasesServiceCopyWith<_MyPurchasesService> get copyWith => __$MyPurchasesServiceCopyWithImpl<_MyPurchasesService>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyPurchasesServiceToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyPurchasesService'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('student', student))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('mainId', mainId))..add(DiagnosticsProperty('packageId', packageId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('disposable', disposable))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('purchaseAvailable', purchaseAvailable))..add(DiagnosticsProperty('access', access))..add(DiagnosticsProperty('processed', processed))..add(DiagnosticsProperty('cover', cover));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyPurchasesService&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.student, student) || other.student == student)&&(identical(other.id, id) || other.id == id)&&(identical(other.mainId, mainId) || other.mainId == mainId)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.days, days) || other.days == days)&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price)&&(identical(other.disposable, disposable) || other.disposable == disposable)&&(identical(other.status, status) || other.status == status)&&(identical(other.purchaseAvailable, purchaseAvailable) || other.purchaseAvailable == purchaseAvailable)&&(identical(other.access, access) || other.access == access)&&(identical(other.processed, processed) || other.processed == processed)&&(identical(other.cover, cover) || other.cover == cover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdById,updatedById,student,id,mainId,packageId,name,description,days,type,price,disposable,status,purchaseAvailable,access,processed,cover]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyPurchasesService(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, student: $student, id: $id, mainId: $mainId, packageId: $packageId, name: $name, description: $description, days: $days, type: $type, price: $price, disposable: $disposable, status: $status, purchaseAvailable: $purchaseAvailable, access: $access, processed: $processed, cover: $cover)';
}


}

/// @nodoc
abstract mixin class _$MyPurchasesServiceCopyWith<$Res> implements $MyPurchasesServiceCopyWith<$Res> {
  factory _$MyPurchasesServiceCopyWith(_MyPurchasesService value, $Res Function(_MyPurchasesService) _then) = __$MyPurchasesServiceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'student') Student? student,@JsonKey(name: 'id') int? id,@JsonKey(name: 'main_id') int? mainId,@JsonKey(name: 'package_id') int? packageId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'days') int? days,@JsonKey(name: 'type') ServiceType? type,@JsonKey(name: 'price') String? price,@JsonKey(name: 'disposable') bool? disposable,@JsonKey(name: 'status') String? status,@JsonKey(name: 'purchase_available') bool? purchaseAvailable,@JsonKey(name: 'access') bool? access,@JsonKey(name: 'processed') bool? processed,@JsonKey(name: 'cover') String? cover
});


@override $StudentCopyWith<$Res>? get student;

}
/// @nodoc
class __$MyPurchasesServiceCopyWithImpl<$Res>
    implements _$MyPurchasesServiceCopyWith<$Res> {
  __$MyPurchasesServiceCopyWithImpl(this._self, this._then);

  final _MyPurchasesService _self;
  final $Res Function(_MyPurchasesService) _then;

/// Create a copy of MyPurchasesService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? student = freezed,Object? id = freezed,Object? mainId = freezed,Object? packageId = freezed,Object? name = freezed,Object? description = freezed,Object? days = freezed,Object? type = freezed,Object? price = freezed,Object? disposable = freezed,Object? status = freezed,Object? purchaseAvailable = freezed,Object? access = freezed,Object? processed = freezed,Object? cover = freezed,}) {
  return _then(_MyPurchasesService(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,mainId: freezed == mainId ? _self.mainId : mainId // ignore: cast_nullable_to_non_nullable
as int?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ServiceType?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,disposable: freezed == disposable ? _self.disposable : disposable // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,purchaseAvailable: freezed == purchaseAvailable ? _self.purchaseAvailable : purchaseAvailable // ignore: cast_nullable_to_non_nullable
as bool?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as bool?,processed: freezed == processed ? _self.processed : processed // ignore: cast_nullable_to_non_nullable
as bool?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MyPurchasesService
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// @nodoc
mixin _$Student implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'group') Group? get group;
/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentCopyWith<Student> get copyWith => _$StudentCopyWithImpl<Student>(this as Student, _$identity);

  /// Serializes this Student to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Student'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('group', group));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Student&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.group, group) || other.group == group));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,group);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Student(id: $id, userId: $userId, group: $group)';
}


}

/// @nodoc
abstract mixin class $StudentCopyWith<$Res>  {
  factory $StudentCopyWith(Student value, $Res Function(Student) _then) = _$StudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'group') Group? group
});


$GroupCopyWith<$Res>? get group;

}
/// @nodoc
class _$StudentCopyWithImpl<$Res>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._self, this._then);

  final Student _self;
  final $Res Function(Student) _then;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? group = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group?,
  ));
}
/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupCopyWith<$Res>? get group {
    if (_self.group == null) {
    return null;
  }

  return $GroupCopyWith<$Res>(_self.group!, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}


/// Adds pattern-matching-related methods to [Student].
extension StudentPatterns on Student {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Student value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Student() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Student value)  $default,){
final _that = this;
switch (_that) {
case _Student():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Student value)?  $default,){
final _that = this;
switch (_that) {
case _Student() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'group')  Group? group)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that.id,_that.userId,_that.group);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'group')  Group? group)  $default,) {final _that = this;
switch (_that) {
case _Student():
return $default(_that.id,_that.userId,_that.group);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'group')  Group? group)?  $default,) {final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that.id,_that.userId,_that.group);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Student with DiagnosticableTreeMixin implements Student {
  const _Student({@JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'group') this.group});
  factory _Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'group') final  Group? group;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentCopyWith<_Student> get copyWith => __$StudentCopyWithImpl<_Student>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Student'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('group', group));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Student&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.group, group) || other.group == group));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,group);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Student(id: $id, userId: $userId, group: $group)';
}


}

/// @nodoc
abstract mixin class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) _then) = __$StudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'group') Group? group
});


@override $GroupCopyWith<$Res>? get group;

}
/// @nodoc
class __$StudentCopyWithImpl<$Res>
    implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(this._self, this._then);

  final _Student _self;
  final $Res Function(_Student) _then;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? group = freezed,}) {
  return _then(_Student(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group?,
  ));
}

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupCopyWith<$Res>? get group {
    if (_self.group == null) {
    return null;
  }

  return $GroupCopyWith<$Res>(_self.group!, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}


/// @nodoc
mixin _$Group implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'course') Course? get course;
/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupCopyWith<Group> get copyWith => _$GroupCopyWithImpl<Group>(this as Group, _$identity);

  /// Serializes this Group to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Group'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('course', course));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Group&&(identical(other.id, id) || other.id == id)&&(identical(other.course, course) || other.course == course));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,course);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Group(id: $id, course: $course)';
}


}

/// @nodoc
abstract mixin class $GroupCopyWith<$Res>  {
  factory $GroupCopyWith(Group value, $Res Function(Group) _then) = _$GroupCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'course') Course? course
});


$CourseCopyWith<$Res>? get course;

}
/// @nodoc
class _$GroupCopyWithImpl<$Res>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._self, this._then);

  final Group _self;
  final $Res Function(Group) _then;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? course = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,
  ));
}
/// Create a copy of Group
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


/// Adds pattern-matching-related methods to [Group].
extension GroupPatterns on Group {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Group value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Group() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Group value)  $default,){
final _that = this;
switch (_that) {
case _Group():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Group value)?  $default,){
final _that = this;
switch (_that) {
case _Group() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'course')  Course? course)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Group() when $default != null:
return $default(_that.id,_that.course);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'course')  Course? course)  $default,) {final _that = this;
switch (_that) {
case _Group():
return $default(_that.id,_that.course);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'course')  Course? course)?  $default,) {final _that = this;
switch (_that) {
case _Group() when $default != null:
return $default(_that.id,_that.course);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Group with DiagnosticableTreeMixin implements Group {
  const _Group({@JsonKey(name: 'id') this.id, @JsonKey(name: 'course') this.course});
  factory _Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'course') final  Course? course;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupCopyWith<_Group> get copyWith => __$GroupCopyWithImpl<_Group>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Group'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('course', course));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Group&&(identical(other.id, id) || other.id == id)&&(identical(other.course, course) || other.course == course));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,course);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Group(id: $id, course: $course)';
}


}

/// @nodoc
abstract mixin class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) _then) = __$GroupCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'course') Course? course
});


@override $CourseCopyWith<$Res>? get course;

}
/// @nodoc
class __$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(this._self, this._then);

  final _Group _self;
  final $Res Function(_Group) _then;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? course = freezed,}) {
  return _then(_Group(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,
  ));
}

/// Create a copy of Group
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

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'banner') String? get banner;@JsonKey(name: 'ads_banner') String? get adsBanner;@JsonKey(name: 'color') String? get color;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'language') String? get language;
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
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('adsBanner', adsBanner))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('language', language));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.adsBanner, adsBanner) || other.adsBanner == adsBanner)&&(identical(other.color, color) || other.color == color)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,banner,adsBanner,color,slug,language);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, icon: $icon, banner: $banner, adsBanner: $adsBanner, color: $color, slug: $slug, language: $language)';
}


}

/// @nodoc
abstract mixin class $CourseCopyWith<$Res>  {
  factory $CourseCopyWith(Course value, $Res Function(Course) _then) = _$CourseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'ads_banner') String? adsBanner,@JsonKey(name: 'color') String? color,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'language') String? language
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? banner = freezed,Object? adsBanner = freezed,Object? color = freezed,Object? slug = freezed,Object? language = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,adsBanner: freezed == adsBanner ? _self.adsBanner : adsBanner // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'ads_banner')  String? adsBanner, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'language')  String? language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.banner,_that.adsBanner,_that.color,_that.slug,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'ads_banner')  String? adsBanner, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'language')  String? language)  $default,) {final _that = this;
switch (_that) {
case _Course():
return $default(_that.id,_that.name,_that.icon,_that.banner,_that.adsBanner,_that.color,_that.slug,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'ads_banner')  String? adsBanner, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'language')  String? language)?  $default,) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.banner,_that.adsBanner,_that.color,_that.slug,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Course with DiagnosticableTreeMixin implements Course {
  const _Course({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'banner') this.banner, @JsonKey(name: 'ads_banner') this.adsBanner, @JsonKey(name: 'color') this.color, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'language') this.language});
  factory _Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'banner') final  String? banner;
@override@JsonKey(name: 'ads_banner') final  String? adsBanner;
@override@JsonKey(name: 'color') final  String? color;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'language') final  String? language;

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
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('adsBanner', adsBanner))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('language', language));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.adsBanner, adsBanner) || other.adsBanner == adsBanner)&&(identical(other.color, color) || other.color == color)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,banner,adsBanner,color,slug,language);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, icon: $icon, banner: $banner, adsBanner: $adsBanner, color: $color, slug: $slug, language: $language)';
}


}

/// @nodoc
abstract mixin class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) _then) = __$CourseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'ads_banner') String? adsBanner,@JsonKey(name: 'color') String? color,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'language') String? language
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? banner = freezed,Object? adsBanner = freezed,Object? color = freezed,Object? slug = freezed,Object? language = freezed,}) {
  return _then(_Course(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,adsBanner: freezed == adsBanner ? _self.adsBanner : adsBanner // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
