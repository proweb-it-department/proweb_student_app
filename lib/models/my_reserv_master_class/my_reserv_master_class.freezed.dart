// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_reserv_master_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyReservMasterClass implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'master_class_id') int? get masterClassId;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'visited') bool? get visited;
/// Create a copy of MyReservMasterClass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyReservMasterClassCopyWith<MyReservMasterClass> get copyWith => _$MyReservMasterClassCopyWithImpl<MyReservMasterClass>(this as MyReservMasterClass, _$identity);

  /// Serializes this MyReservMasterClass to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyReservMasterClass'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('masterClassId', masterClassId))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('visited', visited));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyReservMasterClass&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.masterClassId, masterClassId) || other.masterClassId == masterClassId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.visited, visited) || other.visited == visited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,id,masterClassId,userId,visited);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyReservMasterClass(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, masterClassId: $masterClassId, userId: $userId, visited: $visited)';
}


}

/// @nodoc
abstract mixin class $MyReservMasterClassCopyWith<$Res>  {
  factory $MyReservMasterClassCopyWith(MyReservMasterClass value, $Res Function(MyReservMasterClass) _then) = _$MyReservMasterClassCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'master_class_id') int? masterClassId,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'visited') bool? visited
});




}
/// @nodoc
class _$MyReservMasterClassCopyWithImpl<$Res>
    implements $MyReservMasterClassCopyWith<$Res> {
  _$MyReservMasterClassCopyWithImpl(this._self, this._then);

  final MyReservMasterClass _self;
  final $Res Function(MyReservMasterClass) _then;

/// Create a copy of MyReservMasterClass
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? masterClassId = freezed,Object? userId = freezed,Object? visited = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,masterClassId: freezed == masterClassId ? _self.masterClassId : masterClassId // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,visited: freezed == visited ? _self.visited : visited // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyReservMasterClass].
extension MyReservMasterClassPatterns on MyReservMasterClass {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyReservMasterClass value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyReservMasterClass() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyReservMasterClass value)  $default,){
final _that = this;
switch (_that) {
case _MyReservMasterClass():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyReservMasterClass value)?  $default,){
final _that = this;
switch (_that) {
case _MyReservMasterClass() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'master_class_id')  int? masterClassId, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'visited')  bool? visited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyReservMasterClass() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.masterClassId,_that.userId,_that.visited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'master_class_id')  int? masterClassId, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'visited')  bool? visited)  $default,) {final _that = this;
switch (_that) {
case _MyReservMasterClass():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.masterClassId,_that.userId,_that.visited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'master_class_id')  int? masterClassId, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'visited')  bool? visited)?  $default,) {final _that = this;
switch (_that) {
case _MyReservMasterClass() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.masterClassId,_that.userId,_that.visited);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyReservMasterClass with DiagnosticableTreeMixin implements MyReservMasterClass {
  const _MyReservMasterClass({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'id') this.id, @JsonKey(name: 'master_class_id') this.masterClassId, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'visited') this.visited});
  factory _MyReservMasterClass.fromJson(Map<String, dynamic> json) => _$MyReservMasterClassFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'master_class_id') final  int? masterClassId;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'visited') final  bool? visited;

/// Create a copy of MyReservMasterClass
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyReservMasterClassCopyWith<_MyReservMasterClass> get copyWith => __$MyReservMasterClassCopyWithImpl<_MyReservMasterClass>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyReservMasterClassToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyReservMasterClass'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('masterClassId', masterClassId))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('visited', visited));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyReservMasterClass&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.masterClassId, masterClassId) || other.masterClassId == masterClassId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.visited, visited) || other.visited == visited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,id,masterClassId,userId,visited);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyReservMasterClass(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, masterClassId: $masterClassId, userId: $userId, visited: $visited)';
}


}

/// @nodoc
abstract mixin class _$MyReservMasterClassCopyWith<$Res> implements $MyReservMasterClassCopyWith<$Res> {
  factory _$MyReservMasterClassCopyWith(_MyReservMasterClass value, $Res Function(_MyReservMasterClass) _then) = __$MyReservMasterClassCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'master_class_id') int? masterClassId,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'visited') bool? visited
});




}
/// @nodoc
class __$MyReservMasterClassCopyWithImpl<$Res>
    implements _$MyReservMasterClassCopyWith<$Res> {
  __$MyReservMasterClassCopyWithImpl(this._self, this._then);

  final _MyReservMasterClass _self;
  final $Res Function(_MyReservMasterClass) _then;

/// Create a copy of MyReservMasterClass
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? masterClassId = freezed,Object? userId = freezed,Object? visited = freezed,}) {
  return _then(_MyReservMasterClass(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,masterClassId: freezed == masterClassId ? _self.masterClassId : masterClassId // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,visited: freezed == visited ? _self.visited : visited // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
