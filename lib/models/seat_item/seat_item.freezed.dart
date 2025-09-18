// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SeatItem implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'cabinet_id') int? get cabinetId;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'number') int? get number;@JsonKey(name: 'status') String? get status;
/// Create a copy of SeatItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeatItemCopyWith<SeatItem> get copyWith => _$SeatItemCopyWithImpl<SeatItem>(this as SeatItem, _$identity);

  /// Serializes this SeatItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SeatItem'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('cabinetId', cabinetId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeatItem&&(identical(other.id, id) || other.id == id)&&(identical(other.cabinetId, cabinetId) || other.cabinetId == cabinetId)&&(identical(other.type, type) || other.type == type)&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,cabinetId,type,number,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SeatItem(id: $id, cabinetId: $cabinetId, type: $type, number: $number, status: $status)';
}


}

/// @nodoc
abstract mixin class $SeatItemCopyWith<$Res>  {
  factory $SeatItemCopyWith(SeatItem value, $Res Function(SeatItem) _then) = _$SeatItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'cabinet_id') int? cabinetId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'number') int? number,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class _$SeatItemCopyWithImpl<$Res>
    implements $SeatItemCopyWith<$Res> {
  _$SeatItemCopyWithImpl(this._self, this._then);

  final SeatItem _self;
  final $Res Function(SeatItem) _then;

/// Create a copy of SeatItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? cabinetId = freezed,Object? type = freezed,Object? number = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,cabinetId: freezed == cabinetId ? _self.cabinetId : cabinetId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SeatItem].
extension SeatItemPatterns on SeatItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeatItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeatItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeatItem value)  $default,){
final _that = this;
switch (_that) {
case _SeatItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeatItem value)?  $default,){
final _that = this;
switch (_that) {
case _SeatItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'cabinet_id')  int? cabinetId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'status')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeatItem() when $default != null:
return $default(_that.id,_that.cabinetId,_that.type,_that.number,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'cabinet_id')  int? cabinetId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'status')  String? status)  $default,) {final _that = this;
switch (_that) {
case _SeatItem():
return $default(_that.id,_that.cabinetId,_that.type,_that.number,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'cabinet_id')  int? cabinetId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'status')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _SeatItem() when $default != null:
return $default(_that.id,_that.cabinetId,_that.type,_that.number,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeatItem with DiagnosticableTreeMixin implements SeatItem {
  const _SeatItem({@JsonKey(name: 'id') this.id, @JsonKey(name: 'cabinet_id') this.cabinetId, @JsonKey(name: 'type') this.type, @JsonKey(name: 'number') this.number, @JsonKey(name: 'status') this.status});
  factory _SeatItem.fromJson(Map<String, dynamic> json) => _$SeatItemFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'cabinet_id') final  int? cabinetId;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'number') final  int? number;
@override@JsonKey(name: 'status') final  String? status;

/// Create a copy of SeatItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeatItemCopyWith<_SeatItem> get copyWith => __$SeatItemCopyWithImpl<_SeatItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeatItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SeatItem'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('cabinetId', cabinetId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeatItem&&(identical(other.id, id) || other.id == id)&&(identical(other.cabinetId, cabinetId) || other.cabinetId == cabinetId)&&(identical(other.type, type) || other.type == type)&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,cabinetId,type,number,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SeatItem(id: $id, cabinetId: $cabinetId, type: $type, number: $number, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SeatItemCopyWith<$Res> implements $SeatItemCopyWith<$Res> {
  factory _$SeatItemCopyWith(_SeatItem value, $Res Function(_SeatItem) _then) = __$SeatItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'cabinet_id') int? cabinetId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'number') int? number,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class __$SeatItemCopyWithImpl<$Res>
    implements _$SeatItemCopyWith<$Res> {
  __$SeatItemCopyWithImpl(this._self, this._then);

  final _SeatItem _self;
  final $Res Function(_SeatItem) _then;

/// Create a copy of SeatItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? cabinetId = freezed,Object? type = freezed,Object? number = freezed,Object? status = freezed,}) {
  return _then(_SeatItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,cabinetId: freezed == cabinetId ? _self.cabinetId : cabinetId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
