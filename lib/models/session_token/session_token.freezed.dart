// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionToken implements DiagnosticableTreeMixin {

@JsonKey(name: 'access_token') String get accessToken;@JsonKey(name: 'refresh_token') String get refreshToken;@JsonKey(name: 'since_epoch_end') int get sinceEpochEnd;@JsonKey(name: 'length_time') int get lengthTime;
/// Create a copy of SessionToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionTokenCopyWith<SessionToken> get copyWith => _$SessionTokenCopyWithImpl<SessionToken>(this as SessionToken, _$identity);

  /// Serializes this SessionToken to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SessionToken'))
    ..add(DiagnosticsProperty('accessToken', accessToken))..add(DiagnosticsProperty('refreshToken', refreshToken))..add(DiagnosticsProperty('sinceEpochEnd', sinceEpochEnd))..add(DiagnosticsProperty('lengthTime', lengthTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionToken&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.sinceEpochEnd, sinceEpochEnd) || other.sinceEpochEnd == sinceEpochEnd)&&(identical(other.lengthTime, lengthTime) || other.lengthTime == lengthTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,sinceEpochEnd,lengthTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SessionToken(accessToken: $accessToken, refreshToken: $refreshToken, sinceEpochEnd: $sinceEpochEnd, lengthTime: $lengthTime)';
}


}

/// @nodoc
abstract mixin class $SessionTokenCopyWith<$Res>  {
  factory $SessionTokenCopyWith(SessionToken value, $Res Function(SessionToken) _then) = _$SessionTokenCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'access_token') String accessToken,@JsonKey(name: 'refresh_token') String refreshToken,@JsonKey(name: 'since_epoch_end') int sinceEpochEnd,@JsonKey(name: 'length_time') int lengthTime
});




}
/// @nodoc
class _$SessionTokenCopyWithImpl<$Res>
    implements $SessionTokenCopyWith<$Res> {
  _$SessionTokenCopyWithImpl(this._self, this._then);

  final SessionToken _self;
  final $Res Function(SessionToken) _then;

/// Create a copy of SessionToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? sinceEpochEnd = null,Object? lengthTime = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,sinceEpochEnd: null == sinceEpochEnd ? _self.sinceEpochEnd : sinceEpochEnd // ignore: cast_nullable_to_non_nullable
as int,lengthTime: null == lengthTime ? _self.lengthTime : lengthTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionToken].
extension SessionTokenPatterns on SessionToken {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionToken value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionToken() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionToken value)  $default,){
final _that = this;
switch (_that) {
case _SessionToken():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionToken value)?  $default,){
final _that = this;
switch (_that) {
case _SessionToken() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'refresh_token')  String refreshToken, @JsonKey(name: 'since_epoch_end')  int sinceEpochEnd, @JsonKey(name: 'length_time')  int lengthTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionToken() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.sinceEpochEnd,_that.lengthTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'refresh_token')  String refreshToken, @JsonKey(name: 'since_epoch_end')  int sinceEpochEnd, @JsonKey(name: 'length_time')  int lengthTime)  $default,) {final _that = this;
switch (_that) {
case _SessionToken():
return $default(_that.accessToken,_that.refreshToken,_that.sinceEpochEnd,_that.lengthTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'refresh_token')  String refreshToken, @JsonKey(name: 'since_epoch_end')  int sinceEpochEnd, @JsonKey(name: 'length_time')  int lengthTime)?  $default,) {final _that = this;
switch (_that) {
case _SessionToken() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.sinceEpochEnd,_that.lengthTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionToken with DiagnosticableTreeMixin implements SessionToken {
  const _SessionToken({@JsonKey(name: 'access_token') required this.accessToken, @JsonKey(name: 'refresh_token') required this.refreshToken, @JsonKey(name: 'since_epoch_end') required this.sinceEpochEnd, @JsonKey(name: 'length_time') required this.lengthTime});
  factory _SessionToken.fromJson(Map<String, dynamic> json) => _$SessionTokenFromJson(json);

@override@JsonKey(name: 'access_token') final  String accessToken;
@override@JsonKey(name: 'refresh_token') final  String refreshToken;
@override@JsonKey(name: 'since_epoch_end') final  int sinceEpochEnd;
@override@JsonKey(name: 'length_time') final  int lengthTime;

/// Create a copy of SessionToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionTokenCopyWith<_SessionToken> get copyWith => __$SessionTokenCopyWithImpl<_SessionToken>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionTokenToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SessionToken'))
    ..add(DiagnosticsProperty('accessToken', accessToken))..add(DiagnosticsProperty('refreshToken', refreshToken))..add(DiagnosticsProperty('sinceEpochEnd', sinceEpochEnd))..add(DiagnosticsProperty('lengthTime', lengthTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionToken&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.sinceEpochEnd, sinceEpochEnd) || other.sinceEpochEnd == sinceEpochEnd)&&(identical(other.lengthTime, lengthTime) || other.lengthTime == lengthTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,sinceEpochEnd,lengthTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SessionToken(accessToken: $accessToken, refreshToken: $refreshToken, sinceEpochEnd: $sinceEpochEnd, lengthTime: $lengthTime)';
}


}

/// @nodoc
abstract mixin class _$SessionTokenCopyWith<$Res> implements $SessionTokenCopyWith<$Res> {
  factory _$SessionTokenCopyWith(_SessionToken value, $Res Function(_SessionToken) _then) = __$SessionTokenCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'access_token') String accessToken,@JsonKey(name: 'refresh_token') String refreshToken,@JsonKey(name: 'since_epoch_end') int sinceEpochEnd,@JsonKey(name: 'length_time') int lengthTime
});




}
/// @nodoc
class __$SessionTokenCopyWithImpl<$Res>
    implements _$SessionTokenCopyWith<$Res> {
  __$SessionTokenCopyWithImpl(this._self, this._then);

  final _SessionToken _self;
  final $Res Function(_SessionToken) _then;

/// Create a copy of SessionToken
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? sinceEpochEnd = null,Object? lengthTime = null,}) {
  return _then(_SessionToken(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,sinceEpochEnd: null == sinceEpochEnd ? _self.sinceEpochEnd : sinceEpochEnd // ignore: cast_nullable_to_non_nullable
as int,lengthTime: null == lengthTime ? _self.lengthTime : lengthTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
