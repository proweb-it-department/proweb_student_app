// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlatformInfo implements DiagnosticableTreeMixin {

@JsonKey(name: 'device_name') String get deviceName;@JsonKey(name: 'device_type') String get deviceType;
/// Create a copy of PlatformInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlatformInfoCopyWith<PlatformInfo> get copyWith => _$PlatformInfoCopyWithImpl<PlatformInfo>(this as PlatformInfo, _$identity);

  /// Serializes this PlatformInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PlatformInfo'))
    ..add(DiagnosticsProperty('deviceName', deviceName))..add(DiagnosticsProperty('deviceType', deviceType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlatformInfo&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceName,deviceType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PlatformInfo(deviceName: $deviceName, deviceType: $deviceType)';
}


}

/// @nodoc
abstract mixin class $PlatformInfoCopyWith<$Res>  {
  factory $PlatformInfoCopyWith(PlatformInfo value, $Res Function(PlatformInfo) _then) = _$PlatformInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device_name') String deviceName,@JsonKey(name: 'device_type') String deviceType
});




}
/// @nodoc
class _$PlatformInfoCopyWithImpl<$Res>
    implements $PlatformInfoCopyWith<$Res> {
  _$PlatformInfoCopyWithImpl(this._self, this._then);

  final PlatformInfo _self;
  final $Res Function(PlatformInfo) _then;

/// Create a copy of PlatformInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceName = null,Object? deviceType = null,}) {
  return _then(_self.copyWith(
deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlatformInfo].
extension PlatformInfoPatterns on PlatformInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlatformInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlatformInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlatformInfo value)  $default,){
final _that = this;
switch (_that) {
case _PlatformInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlatformInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PlatformInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_type')  String deviceType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlatformInfo() when $default != null:
return $default(_that.deviceName,_that.deviceType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_type')  String deviceType)  $default,) {final _that = this;
switch (_that) {
case _PlatformInfo():
return $default(_that.deviceName,_that.deviceType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_type')  String deviceType)?  $default,) {final _that = this;
switch (_that) {
case _PlatformInfo() when $default != null:
return $default(_that.deviceName,_that.deviceType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlatformInfo with DiagnosticableTreeMixin implements PlatformInfo {
  const _PlatformInfo({@JsonKey(name: 'device_name') required this.deviceName, @JsonKey(name: 'device_type') required this.deviceType});
  factory _PlatformInfo.fromJson(Map<String, dynamic> json) => _$PlatformInfoFromJson(json);

@override@JsonKey(name: 'device_name') final  String deviceName;
@override@JsonKey(name: 'device_type') final  String deviceType;

/// Create a copy of PlatformInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlatformInfoCopyWith<_PlatformInfo> get copyWith => __$PlatformInfoCopyWithImpl<_PlatformInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlatformInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PlatformInfo'))
    ..add(DiagnosticsProperty('deviceName', deviceName))..add(DiagnosticsProperty('deviceType', deviceType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlatformInfo&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceName,deviceType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PlatformInfo(deviceName: $deviceName, deviceType: $deviceType)';
}


}

/// @nodoc
abstract mixin class _$PlatformInfoCopyWith<$Res> implements $PlatformInfoCopyWith<$Res> {
  factory _$PlatformInfoCopyWith(_PlatformInfo value, $Res Function(_PlatformInfo) _then) = __$PlatformInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device_name') String deviceName,@JsonKey(name: 'device_type') String deviceType
});




}
/// @nodoc
class __$PlatformInfoCopyWithImpl<$Res>
    implements _$PlatformInfoCopyWith<$Res> {
  __$PlatformInfoCopyWithImpl(this._self, this._then);

  final _PlatformInfo _self;
  final $Res Function(_PlatformInfo) _then;

/// Create a copy of PlatformInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceName = null,Object? deviceType = null,}) {
  return _then(_PlatformInfo(
deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
