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

@JsonKey(name: 'current_version') int? get currentVersion;@JsonKey(name: 'languages') List<Languages>? get languages;
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
    ..add(DiagnosticsProperty('currentVersion', currentVersion))..add(DiagnosticsProperty('languages', languages));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangProListItem&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&const DeepCollectionEquality().equals(other.languages, languages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentVersion,const DeepCollectionEquality().hash(languages));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LangProListItem(currentVersion: $currentVersion, languages: $languages)';
}


}

/// @nodoc
abstract mixin class $LangProListItemCopyWith<$Res>  {
  factory $LangProListItemCopyWith(LangProListItem value, $Res Function(LangProListItem) _then) = _$LangProListItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_version') int? currentVersion,@JsonKey(name: 'languages') List<Languages>? languages
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
@pragma('vm:prefer-inline') @override $Res call({Object? currentVersion = freezed,Object? languages = freezed,}) {
  return _then(_self.copyWith(
currentVersion: freezed == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as int?,languages: freezed == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<Languages>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_version')  int? currentVersion, @JsonKey(name: 'languages')  List<Languages>? languages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LangProListItem() when $default != null:
return $default(_that.currentVersion,_that.languages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_version')  int? currentVersion, @JsonKey(name: 'languages')  List<Languages>? languages)  $default,) {final _that = this;
switch (_that) {
case _LangProListItem():
return $default(_that.currentVersion,_that.languages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_version')  int? currentVersion, @JsonKey(name: 'languages')  List<Languages>? languages)?  $default,) {final _that = this;
switch (_that) {
case _LangProListItem() when $default != null:
return $default(_that.currentVersion,_that.languages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LangProListItem with DiagnosticableTreeMixin implements LangProListItem {
  const _LangProListItem({@JsonKey(name: 'current_version') this.currentVersion, @JsonKey(name: 'languages') final  List<Languages>? languages}): _languages = languages;
  factory _LangProListItem.fromJson(Map<String, dynamic> json) => _$LangProListItemFromJson(json);

@override@JsonKey(name: 'current_version') final  int? currentVersion;
 final  List<Languages>? _languages;
@override@JsonKey(name: 'languages') List<Languages>? get languages {
  final value = _languages;
  if (value == null) return null;
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
    ..add(DiagnosticsProperty('currentVersion', currentVersion))..add(DiagnosticsProperty('languages', languages));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LangProListItem&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&const DeepCollectionEquality().equals(other._languages, _languages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentVersion,const DeepCollectionEquality().hash(_languages));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LangProListItem(currentVersion: $currentVersion, languages: $languages)';
}


}

/// @nodoc
abstract mixin class _$LangProListItemCopyWith<$Res> implements $LangProListItemCopyWith<$Res> {
  factory _$LangProListItemCopyWith(_LangProListItem value, $Res Function(_LangProListItem) _then) = __$LangProListItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_version') int? currentVersion,@JsonKey(name: 'languages') List<Languages>? languages
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
@override @pragma('vm:prefer-inline') $Res call({Object? currentVersion = freezed,Object? languages = freezed,}) {
  return _then(_LangProListItem(
currentVersion: freezed == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as int?,languages: freezed == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<Languages>?,
  ));
}


}


/// @nodoc
mixin _$Languages implements DiagnosticableTreeMixin {

@JsonKey(name: 'json_file') String? get jsonFile;@JsonKey(name: 'code') String? get code;@JsonKey(name: 'name') String? get name;
/// Create a copy of Languages
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguagesCopyWith<Languages> get copyWith => _$LanguagesCopyWithImpl<Languages>(this as Languages, _$identity);

  /// Serializes this Languages to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Languages'))
    ..add(DiagnosticsProperty('jsonFile', jsonFile))..add(DiagnosticsProperty('code', code))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Languages&&(identical(other.jsonFile, jsonFile) || other.jsonFile == jsonFile)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jsonFile,code,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Languages(jsonFile: $jsonFile, code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class $LanguagesCopyWith<$Res>  {
  factory $LanguagesCopyWith(Languages value, $Res Function(Languages) _then) = _$LanguagesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'json_file') String? jsonFile,@JsonKey(name: 'code') String? code,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$LanguagesCopyWithImpl<$Res>
    implements $LanguagesCopyWith<$Res> {
  _$LanguagesCopyWithImpl(this._self, this._then);

  final Languages _self;
  final $Res Function(Languages) _then;

/// Create a copy of Languages
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jsonFile = freezed,Object? code = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
jsonFile: freezed == jsonFile ? _self.jsonFile : jsonFile // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Languages].
extension LanguagesPatterns on Languages {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Languages value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Languages() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Languages value)  $default,){
final _that = this;
switch (_that) {
case _Languages():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Languages value)?  $default,){
final _that = this;
switch (_that) {
case _Languages() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'json_file')  String? jsonFile, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Languages() when $default != null:
return $default(_that.jsonFile,_that.code,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'json_file')  String? jsonFile, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _Languages():
return $default(_that.jsonFile,_that.code,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'json_file')  String? jsonFile, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Languages() when $default != null:
return $default(_that.jsonFile,_that.code,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Languages with DiagnosticableTreeMixin implements Languages {
  const _Languages({@JsonKey(name: 'json_file') this.jsonFile, @JsonKey(name: 'code') this.code, @JsonKey(name: 'name') this.name});
  factory _Languages.fromJson(Map<String, dynamic> json) => _$LanguagesFromJson(json);

@override@JsonKey(name: 'json_file') final  String? jsonFile;
@override@JsonKey(name: 'code') final  String? code;
@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of Languages
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguagesCopyWith<_Languages> get copyWith => __$LanguagesCopyWithImpl<_Languages>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LanguagesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Languages'))
    ..add(DiagnosticsProperty('jsonFile', jsonFile))..add(DiagnosticsProperty('code', code))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Languages&&(identical(other.jsonFile, jsonFile) || other.jsonFile == jsonFile)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jsonFile,code,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Languages(jsonFile: $jsonFile, code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class _$LanguagesCopyWith<$Res> implements $LanguagesCopyWith<$Res> {
  factory _$LanguagesCopyWith(_Languages value, $Res Function(_Languages) _then) = __$LanguagesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'json_file') String? jsonFile,@JsonKey(name: 'code') String? code,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$LanguagesCopyWithImpl<$Res>
    implements _$LanguagesCopyWith<$Res> {
  __$LanguagesCopyWithImpl(this._self, this._then);

  final _Languages _self;
  final $Res Function(_Languages) _then;

/// Create a copy of Languages
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jsonFile = freezed,Object? code = freezed,Object? name = freezed,}) {
  return _then(_Languages(
jsonFile: freezed == jsonFile ? _self.jsonFile : jsonFile // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
