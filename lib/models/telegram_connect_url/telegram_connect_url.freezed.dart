// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_connect_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TelegramConnectUrl implements DiagnosticableTreeMixin {

@JsonKey(name: 'url') String? get url;
/// Create a copy of TelegramConnectUrl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelegramConnectUrlCopyWith<TelegramConnectUrl> get copyWith => _$TelegramConnectUrlCopyWithImpl<TelegramConnectUrl>(this as TelegramConnectUrl, _$identity);

  /// Serializes this TelegramConnectUrl to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TelegramConnectUrl'))
    ..add(DiagnosticsProperty('url', url));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelegramConnectUrl&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TelegramConnectUrl(url: $url)';
}


}

/// @nodoc
abstract mixin class $TelegramConnectUrlCopyWith<$Res>  {
  factory $TelegramConnectUrlCopyWith(TelegramConnectUrl value, $Res Function(TelegramConnectUrl) _then) = _$TelegramConnectUrlCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'url') String? url
});




}
/// @nodoc
class _$TelegramConnectUrlCopyWithImpl<$Res>
    implements $TelegramConnectUrlCopyWith<$Res> {
  _$TelegramConnectUrlCopyWithImpl(this._self, this._then);

  final TelegramConnectUrl _self;
  final $Res Function(TelegramConnectUrl) _then;

/// Create a copy of TelegramConnectUrl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TelegramConnectUrl].
extension TelegramConnectUrlPatterns on TelegramConnectUrl {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelegramConnectUrl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelegramConnectUrl() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelegramConnectUrl value)  $default,){
final _that = this;
switch (_that) {
case _TelegramConnectUrl():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelegramConnectUrl value)?  $default,){
final _that = this;
switch (_that) {
case _TelegramConnectUrl() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'url')  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelegramConnectUrl() when $default != null:
return $default(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'url')  String? url)  $default,) {final _that = this;
switch (_that) {
case _TelegramConnectUrl():
return $default(_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'url')  String? url)?  $default,) {final _that = this;
switch (_that) {
case _TelegramConnectUrl() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelegramConnectUrl with DiagnosticableTreeMixin implements TelegramConnectUrl {
  const _TelegramConnectUrl({@JsonKey(name: 'url') this.url});
  factory _TelegramConnectUrl.fromJson(Map<String, dynamic> json) => _$TelegramConnectUrlFromJson(json);

@override@JsonKey(name: 'url') final  String? url;

/// Create a copy of TelegramConnectUrl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelegramConnectUrlCopyWith<_TelegramConnectUrl> get copyWith => __$TelegramConnectUrlCopyWithImpl<_TelegramConnectUrl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelegramConnectUrlToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TelegramConnectUrl'))
    ..add(DiagnosticsProperty('url', url));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelegramConnectUrl&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TelegramConnectUrl(url: $url)';
}


}

/// @nodoc
abstract mixin class _$TelegramConnectUrlCopyWith<$Res> implements $TelegramConnectUrlCopyWith<$Res> {
  factory _$TelegramConnectUrlCopyWith(_TelegramConnectUrl value, $Res Function(_TelegramConnectUrl) _then) = __$TelegramConnectUrlCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'url') String? url
});




}
/// @nodoc
class __$TelegramConnectUrlCopyWithImpl<$Res>
    implements _$TelegramConnectUrlCopyWith<$Res> {
  __$TelegramConnectUrlCopyWithImpl(this._self, this._then);

  final _TelegramConnectUrl _self;
  final $Res Function(_TelegramConnectUrl) _then;

/// Create a copy of TelegramConnectUrl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,}) {
  return _then(_TelegramConnectUrl(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
