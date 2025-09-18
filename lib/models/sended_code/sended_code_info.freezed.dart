// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sended_code_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendedCodeInfo implements DiagnosticableTreeMixin {

@JsonKey(name: 'sended') dynamic get sended;
/// Create a copy of SendedCodeInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendedCodeInfoCopyWith<SendedCodeInfo> get copyWith => _$SendedCodeInfoCopyWithImpl<SendedCodeInfo>(this as SendedCodeInfo, _$identity);

  /// Serializes this SendedCodeInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendedCodeInfo'))
    ..add(DiagnosticsProperty('sended', sended));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendedCodeInfo&&const DeepCollectionEquality().equals(other.sended, sended));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sended));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendedCodeInfo(sended: $sended)';
}


}

/// @nodoc
abstract mixin class $SendedCodeInfoCopyWith<$Res>  {
  factory $SendedCodeInfoCopyWith(SendedCodeInfo value, $Res Function(SendedCodeInfo) _then) = _$SendedCodeInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sended') dynamic sended
});




}
/// @nodoc
class _$SendedCodeInfoCopyWithImpl<$Res>
    implements $SendedCodeInfoCopyWith<$Res> {
  _$SendedCodeInfoCopyWithImpl(this._self, this._then);

  final SendedCodeInfo _self;
  final $Res Function(SendedCodeInfo) _then;

/// Create a copy of SendedCodeInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sended = freezed,}) {
  return _then(_self.copyWith(
sended: freezed == sended ? _self.sended : sended // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [SendedCodeInfo].
extension SendedCodeInfoPatterns on SendedCodeInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendedCodeInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendedCodeInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendedCodeInfo value)  $default,){
final _that = this;
switch (_that) {
case _SendedCodeInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendedCodeInfo value)?  $default,){
final _that = this;
switch (_that) {
case _SendedCodeInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sended')  dynamic sended)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendedCodeInfo() when $default != null:
return $default(_that.sended);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sended')  dynamic sended)  $default,) {final _that = this;
switch (_that) {
case _SendedCodeInfo():
return $default(_that.sended);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sended')  dynamic sended)?  $default,) {final _that = this;
switch (_that) {
case _SendedCodeInfo() when $default != null:
return $default(_that.sended);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendedCodeInfo with DiagnosticableTreeMixin implements SendedCodeInfo {
  const _SendedCodeInfo({@JsonKey(name: 'sended') this.sended});
  factory _SendedCodeInfo.fromJson(Map<String, dynamic> json) => _$SendedCodeInfoFromJson(json);

@override@JsonKey(name: 'sended') final  dynamic sended;

/// Create a copy of SendedCodeInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendedCodeInfoCopyWith<_SendedCodeInfo> get copyWith => __$SendedCodeInfoCopyWithImpl<_SendedCodeInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendedCodeInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendedCodeInfo'))
    ..add(DiagnosticsProperty('sended', sended));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendedCodeInfo&&const DeepCollectionEquality().equals(other.sended, sended));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sended));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendedCodeInfo(sended: $sended)';
}


}

/// @nodoc
abstract mixin class _$SendedCodeInfoCopyWith<$Res> implements $SendedCodeInfoCopyWith<$Res> {
  factory _$SendedCodeInfoCopyWith(_SendedCodeInfo value, $Res Function(_SendedCodeInfo) _then) = __$SendedCodeInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sended') dynamic sended
});




}
/// @nodoc
class __$SendedCodeInfoCopyWithImpl<$Res>
    implements _$SendedCodeInfoCopyWith<$Res> {
  __$SendedCodeInfoCopyWithImpl(this._self, this._then);

  final _SendedCodeInfo _self;
  final $Res Function(_SendedCodeInfo) _then;

/// Create a copy of SendedCodeInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sended = freezed,}) {
  return _then(_SendedCodeInfo(
sended: freezed == sended ? _self.sended : sended // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
