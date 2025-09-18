// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lang_pro_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LangProListItem implements DiagnosticableTreeMixin {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'short_name') String? get shortName;@JsonKey(name: 'version') int? get version;@JsonKey(name: 'is_active') bool? get isActive;
/// Create a copy of LangProListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LangProListItemCopyWith<LangProListItem> get copyWith => _$LangProListItemCopyWithImpl<LangProListItem>(this as LangProListItem, _$identity);

  /// Serializes this LangProListItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LangProListItem'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortName', shortName))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('isActive', isActive));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangProListItem&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.version, version) || other.version == version)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,shortName,version,isActive);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LangProListItem(name: $name, shortName: $shortName, version: $version, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $LangProListItemCopyWith<$Res>  {
  factory $LangProListItemCopyWith(LangProListItem value, $Res Function(LangProListItem) _then) = _$LangProListItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_name') String? shortName,@JsonKey(name: 'version') int? version,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class _$LangProListItemCopyWithImpl<$Res>
    implements $LangProListItemCopyWith<$Res> {
  _$LangProListItemCopyWithImpl(this._self, this._then);

  final LangProListItem _self;
  final $Res Function(LangProListItem) _then;

/// Create a copy of LangProListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? shortName = freezed,Object? version = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [LangProListItem].
extension LangProListItemPatterns on LangProListItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LangProListItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LangProListItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LangProListItem value)  $default,){
final _that = this;
switch (_that) {
case _LangProListItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LangProListItem value)?  $default,){
final _that = this;
switch (_that) {
case _LangProListItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_name')  String? shortName, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'is_active')  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LangProListItem() when $default != null:
return $default(_that.name,_that.shortName,_that.version,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_name')  String? shortName, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'is_active')  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _LangProListItem():
return $default(_that.name,_that.shortName,_that.version,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_name')  String? shortName, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'is_active')  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _LangProListItem() when $default != null:
return $default(_that.name,_that.shortName,_that.version,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LangProListItem with DiagnosticableTreeMixin implements LangProListItem {
  const _LangProListItem({@JsonKey(name: 'name') this.name, @JsonKey(name: 'short_name') this.shortName, @JsonKey(name: 'version') this.version, @JsonKey(name: 'is_active') this.isActive});
  factory _LangProListItem.fromJson(Map<String, dynamic> json) => _$LangProListItemFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'short_name') final  String? shortName;
@override@JsonKey(name: 'version') final  int? version;
@override@JsonKey(name: 'is_active') final  bool? isActive;

/// Create a copy of LangProListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LangProListItemCopyWith<_LangProListItem> get copyWith => __$LangProListItemCopyWithImpl<_LangProListItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LangProListItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LangProListItem'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortName', shortName))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('isActive', isActive));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LangProListItem&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.version, version) || other.version == version)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,shortName,version,isActive);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LangProListItem(name: $name, shortName: $shortName, version: $version, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$LangProListItemCopyWith<$Res> implements $LangProListItemCopyWith<$Res> {
  factory _$LangProListItemCopyWith(_LangProListItem value, $Res Function(_LangProListItem) _then) = __$LangProListItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_name') String? shortName,@JsonKey(name: 'version') int? version,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class __$LangProListItemCopyWithImpl<$Res>
    implements _$LangProListItemCopyWith<$Res> {
  __$LangProListItemCopyWithImpl(this._self, this._then);

  final _LangProListItem _self;
  final $Res Function(_LangProListItem) _then;

/// Create a copy of LangProListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? shortName = freezed,Object? version = freezed,Object? isActive = freezed,}) {
  return _then(_LangProListItem(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
