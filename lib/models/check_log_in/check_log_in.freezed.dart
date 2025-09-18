// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_log_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckLogIn implements DiagnosticableTreeMixin {

// ignore: invalid_annotation_target
@JsonKey(name: 'has_usable_password') bool get hasUsablePassword;@JsonKey(name: 'sended') dynamic get sended;
/// Create a copy of CheckLogIn
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckLogInCopyWith<CheckLogIn> get copyWith => _$CheckLogInCopyWithImpl<CheckLogIn>(this as CheckLogIn, _$identity);

  /// Serializes this CheckLogIn to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CheckLogIn'))
    ..add(DiagnosticsProperty('hasUsablePassword', hasUsablePassword))..add(DiagnosticsProperty('sended', sended));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckLogIn&&(identical(other.hasUsablePassword, hasUsablePassword) || other.hasUsablePassword == hasUsablePassword)&&const DeepCollectionEquality().equals(other.sended, sended));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasUsablePassword,const DeepCollectionEquality().hash(sended));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CheckLogIn(hasUsablePassword: $hasUsablePassword, sended: $sended)';
}


}

/// @nodoc
abstract mixin class $CheckLogInCopyWith<$Res>  {
  factory $CheckLogInCopyWith(CheckLogIn value, $Res Function(CheckLogIn) _then) = _$CheckLogInCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'has_usable_password') bool hasUsablePassword,@JsonKey(name: 'sended') dynamic sended
});




}
/// @nodoc
class _$CheckLogInCopyWithImpl<$Res>
    implements $CheckLogInCopyWith<$Res> {
  _$CheckLogInCopyWithImpl(this._self, this._then);

  final CheckLogIn _self;
  final $Res Function(CheckLogIn) _then;

/// Create a copy of CheckLogIn
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasUsablePassword = null,Object? sended = freezed,}) {
  return _then(_self.copyWith(
hasUsablePassword: null == hasUsablePassword ? _self.hasUsablePassword : hasUsablePassword // ignore: cast_nullable_to_non_nullable
as bool,sended: freezed == sended ? _self.sended : sended // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckLogIn].
extension CheckLogInPatterns on CheckLogIn {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckLogIn value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckLogIn() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckLogIn value)  $default,){
final _that = this;
switch (_that) {
case _CheckLogIn():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckLogIn value)?  $default,){
final _that = this;
switch (_that) {
case _CheckLogIn() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_usable_password')  bool hasUsablePassword, @JsonKey(name: 'sended')  dynamic sended)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckLogIn() when $default != null:
return $default(_that.hasUsablePassword,_that.sended);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_usable_password')  bool hasUsablePassword, @JsonKey(name: 'sended')  dynamic sended)  $default,) {final _that = this;
switch (_that) {
case _CheckLogIn():
return $default(_that.hasUsablePassword,_that.sended);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'has_usable_password')  bool hasUsablePassword, @JsonKey(name: 'sended')  dynamic sended)?  $default,) {final _that = this;
switch (_that) {
case _CheckLogIn() when $default != null:
return $default(_that.hasUsablePassword,_that.sended);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckLogIn with DiagnosticableTreeMixin implements CheckLogIn {
  const _CheckLogIn({@JsonKey(name: 'has_usable_password') required this.hasUsablePassword, @JsonKey(name: 'sended') this.sended});
  factory _CheckLogIn.fromJson(Map<String, dynamic> json) => _$CheckLogInFromJson(json);

// ignore: invalid_annotation_target
@override@JsonKey(name: 'has_usable_password') final  bool hasUsablePassword;
@override@JsonKey(name: 'sended') final  dynamic sended;

/// Create a copy of CheckLogIn
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckLogInCopyWith<_CheckLogIn> get copyWith => __$CheckLogInCopyWithImpl<_CheckLogIn>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckLogInToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CheckLogIn'))
    ..add(DiagnosticsProperty('hasUsablePassword', hasUsablePassword))..add(DiagnosticsProperty('sended', sended));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckLogIn&&(identical(other.hasUsablePassword, hasUsablePassword) || other.hasUsablePassword == hasUsablePassword)&&const DeepCollectionEquality().equals(other.sended, sended));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasUsablePassword,const DeepCollectionEquality().hash(sended));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CheckLogIn(hasUsablePassword: $hasUsablePassword, sended: $sended)';
}


}

/// @nodoc
abstract mixin class _$CheckLogInCopyWith<$Res> implements $CheckLogInCopyWith<$Res> {
  factory _$CheckLogInCopyWith(_CheckLogIn value, $Res Function(_CheckLogIn) _then) = __$CheckLogInCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'has_usable_password') bool hasUsablePassword,@JsonKey(name: 'sended') dynamic sended
});




}
/// @nodoc
class __$CheckLogInCopyWithImpl<$Res>
    implements _$CheckLogInCopyWith<$Res> {
  __$CheckLogInCopyWithImpl(this._self, this._then);

  final _CheckLogIn _self;
  final $Res Function(_CheckLogIn) _then;

/// Create a copy of CheckLogIn
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasUsablePassword = null,Object? sended = freezed,}) {
  return _then(_CheckLogIn(
hasUsablePassword: null == hasUsablePassword ? _self.hasUsablePassword : hasUsablePassword // ignore: cast_nullable_to_non_nullable
as bool,sended: freezed == sended ? _self.sended : sended // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
