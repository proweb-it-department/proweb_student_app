// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentsProviderModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'percent') int? get percent;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'provider') String? get provider;
/// Create a copy of PaymentsProviderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentsProviderModelCopyWith<PaymentsProviderModel> get copyWith => _$PaymentsProviderModelCopyWithImpl<PaymentsProviderModel>(this as PaymentsProviderModel, _$identity);

  /// Serializes this PaymentsProviderModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentsProviderModel'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('percent', percent))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('provider', provider));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsProviderModel&&(identical(other.name, name) || other.name == name)&&(identical(other.percent, percent) || other.percent == percent)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,percent,icon,provider);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentsProviderModel(name: $name, percent: $percent, icon: $icon, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $PaymentsProviderModelCopyWith<$Res>  {
  factory $PaymentsProviderModelCopyWith(PaymentsProviderModel value, $Res Function(PaymentsProviderModel) _then) = _$PaymentsProviderModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'percent') int? percent,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'provider') String? provider
});




}
/// @nodoc
class _$PaymentsProviderModelCopyWithImpl<$Res>
    implements $PaymentsProviderModelCopyWith<$Res> {
  _$PaymentsProviderModelCopyWithImpl(this._self, this._then);

  final PaymentsProviderModel _self;
  final $Res Function(PaymentsProviderModel) _then;

/// Create a copy of PaymentsProviderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? percent = freezed,Object? icon = freezed,Object? provider = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as int?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentsProviderModel].
extension PaymentsProviderModelPatterns on PaymentsProviderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentsProviderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentsProviderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentsProviderModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentsProviderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentsProviderModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentsProviderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'percent')  int? percent, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'provider')  String? provider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentsProviderModel() when $default != null:
return $default(_that.name,_that.percent,_that.icon,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'percent')  int? percent, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'provider')  String? provider)  $default,) {final _that = this;
switch (_that) {
case _PaymentsProviderModel():
return $default(_that.name,_that.percent,_that.icon,_that.provider);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'percent')  int? percent, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'provider')  String? provider)?  $default,) {final _that = this;
switch (_that) {
case _PaymentsProviderModel() when $default != null:
return $default(_that.name,_that.percent,_that.icon,_that.provider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentsProviderModel with DiagnosticableTreeMixin implements PaymentsProviderModel {
  const _PaymentsProviderModel({@JsonKey(name: 'name') this.name, @JsonKey(name: 'percent') this.percent, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'provider') this.provider});
  factory _PaymentsProviderModel.fromJson(Map<String, dynamic> json) => _$PaymentsProviderModelFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'percent') final  int? percent;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'provider') final  String? provider;

/// Create a copy of PaymentsProviderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentsProviderModelCopyWith<_PaymentsProviderModel> get copyWith => __$PaymentsProviderModelCopyWithImpl<_PaymentsProviderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentsProviderModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentsProviderModel'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('percent', percent))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('provider', provider));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentsProviderModel&&(identical(other.name, name) || other.name == name)&&(identical(other.percent, percent) || other.percent == percent)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,percent,icon,provider);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentsProviderModel(name: $name, percent: $percent, icon: $icon, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$PaymentsProviderModelCopyWith<$Res> implements $PaymentsProviderModelCopyWith<$Res> {
  factory _$PaymentsProviderModelCopyWith(_PaymentsProviderModel value, $Res Function(_PaymentsProviderModel) _then) = __$PaymentsProviderModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'percent') int? percent,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'provider') String? provider
});




}
/// @nodoc
class __$PaymentsProviderModelCopyWithImpl<$Res>
    implements _$PaymentsProviderModelCopyWith<$Res> {
  __$PaymentsProviderModelCopyWithImpl(this._self, this._then);

  final _PaymentsProviderModel _self;
  final $Res Function(_PaymentsProviderModel) _then;

/// Create a copy of PaymentsProviderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? percent = freezed,Object? icon = freezed,Object? provider = freezed,}) {
  return _then(_PaymentsProviderModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as int?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
