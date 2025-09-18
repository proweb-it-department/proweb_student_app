// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lang_pro_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LangProItem implements DiagnosticableTreeMixin {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'short_name') String? get shortName;@JsonKey(name: 'version') int? get version;@JsonKey(name: 'categories') Map<String, dynamic>? get categories;@JsonKey(name: 'childrens') List<Map<String, dynamic>>? get childrens;
/// Create a copy of LangProItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LangProItemCopyWith<LangProItem> get copyWith => _$LangProItemCopyWithImpl<LangProItem>(this as LangProItem, _$identity);

  /// Serializes this LangProItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LangProItem'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortName', shortName))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('categories', categories))..add(DiagnosticsProperty('childrens', childrens));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangProItem&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.childrens, childrens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,shortName,version,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(childrens));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LangProItem(name: $name, shortName: $shortName, version: $version, categories: $categories, childrens: $childrens)';
}


}

/// @nodoc
abstract mixin class $LangProItemCopyWith<$Res>  {
  factory $LangProItemCopyWith(LangProItem value, $Res Function(LangProItem) _then) = _$LangProItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_name') String? shortName,@JsonKey(name: 'version') int? version,@JsonKey(name: 'categories') Map<String, dynamic>? categories,@JsonKey(name: 'childrens') List<Map<String, dynamic>>? childrens
});




}
/// @nodoc
class _$LangProItemCopyWithImpl<$Res>
    implements $LangProItemCopyWith<$Res> {
  _$LangProItemCopyWithImpl(this._self, this._then);

  final LangProItem _self;
  final $Res Function(LangProItem) _then;

/// Create a copy of LangProItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? shortName = freezed,Object? version = freezed,Object? categories = freezed,Object? childrens = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,childrens: freezed == childrens ? _self.childrens : childrens // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LangProItem].
extension LangProItemPatterns on LangProItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LangProItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LangProItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LangProItem value)  $default,){
final _that = this;
switch (_that) {
case _LangProItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LangProItem value)?  $default,){
final _that = this;
switch (_that) {
case _LangProItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_name')  String? shortName, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'categories')  Map<String, dynamic>? categories, @JsonKey(name: 'childrens')  List<Map<String, dynamic>>? childrens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LangProItem() when $default != null:
return $default(_that.name,_that.shortName,_that.version,_that.categories,_that.childrens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_name')  String? shortName, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'categories')  Map<String, dynamic>? categories, @JsonKey(name: 'childrens')  List<Map<String, dynamic>>? childrens)  $default,) {final _that = this;
switch (_that) {
case _LangProItem():
return $default(_that.name,_that.shortName,_that.version,_that.categories,_that.childrens);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_name')  String? shortName, @JsonKey(name: 'version')  int? version, @JsonKey(name: 'categories')  Map<String, dynamic>? categories, @JsonKey(name: 'childrens')  List<Map<String, dynamic>>? childrens)?  $default,) {final _that = this;
switch (_that) {
case _LangProItem() when $default != null:
return $default(_that.name,_that.shortName,_that.version,_that.categories,_that.childrens);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LangProItem with DiagnosticableTreeMixin implements LangProItem {
  const _LangProItem({@JsonKey(name: 'name') this.name, @JsonKey(name: 'short_name') this.shortName, @JsonKey(name: 'version') this.version, @JsonKey(name: 'categories') final  Map<String, dynamic>? categories, @JsonKey(name: 'childrens') final  List<Map<String, dynamic>>? childrens}): _categories = categories,_childrens = childrens;
  factory _LangProItem.fromJson(Map<String, dynamic> json) => _$LangProItemFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'short_name') final  String? shortName;
@override@JsonKey(name: 'version') final  int? version;
 final  Map<String, dynamic>? _categories;
@override@JsonKey(name: 'categories') Map<String, dynamic>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableMapView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<Map<String, dynamic>>? _childrens;
@override@JsonKey(name: 'childrens') List<Map<String, dynamic>>? get childrens {
  final value = _childrens;
  if (value == null) return null;
  if (_childrens is EqualUnmodifiableListView) return _childrens;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LangProItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LangProItemCopyWith<_LangProItem> get copyWith => __$LangProItemCopyWithImpl<_LangProItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LangProItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LangProItem'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortName', shortName))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('categories', categories))..add(DiagnosticsProperty('childrens', childrens));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LangProItem&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._childrens, _childrens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,shortName,version,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_childrens));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LangProItem(name: $name, shortName: $shortName, version: $version, categories: $categories, childrens: $childrens)';
}


}

/// @nodoc
abstract mixin class _$LangProItemCopyWith<$Res> implements $LangProItemCopyWith<$Res> {
  factory _$LangProItemCopyWith(_LangProItem value, $Res Function(_LangProItem) _then) = __$LangProItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_name') String? shortName,@JsonKey(name: 'version') int? version,@JsonKey(name: 'categories') Map<String, dynamic>? categories,@JsonKey(name: 'childrens') List<Map<String, dynamic>>? childrens
});




}
/// @nodoc
class __$LangProItemCopyWithImpl<$Res>
    implements _$LangProItemCopyWith<$Res> {
  __$LangProItemCopyWithImpl(this._self, this._then);

  final _LangProItem _self;
  final $Res Function(_LangProItem) _then;

/// Create a copy of LangProItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? shortName = freezed,Object? version = freezed,Object? categories = freezed,Object? childrens = freezed,}) {
  return _then(_LangProItem(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,childrens: freezed == childrens ? _self._childrens : childrens // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}


}

// dart format on
