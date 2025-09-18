// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coworking_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoworkingInfo implements DiagnosticableTreeMixin {

@JsonKey(name: 'video_key') String? get videoKey;@JsonKey(name: 'rules') List<Rules>? get rules;
/// Create a copy of CoworkingInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoworkingInfoCopyWith<CoworkingInfo> get copyWith => _$CoworkingInfoCopyWithImpl<CoworkingInfo>(this as CoworkingInfo, _$identity);

  /// Serializes this CoworkingInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CoworkingInfo'))
    ..add(DiagnosticsProperty('videoKey', videoKey))..add(DiagnosticsProperty('rules', rules));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoworkingInfo&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey)&&const DeepCollectionEquality().equals(other.rules, rules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,videoKey,const DeepCollectionEquality().hash(rules));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CoworkingInfo(videoKey: $videoKey, rules: $rules)';
}


}

/// @nodoc
abstract mixin class $CoworkingInfoCopyWith<$Res>  {
  factory $CoworkingInfoCopyWith(CoworkingInfo value, $Res Function(CoworkingInfo) _then) = _$CoworkingInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'video_key') String? videoKey,@JsonKey(name: 'rules') List<Rules>? rules
});




}
/// @nodoc
class _$CoworkingInfoCopyWithImpl<$Res>
    implements $CoworkingInfoCopyWith<$Res> {
  _$CoworkingInfoCopyWithImpl(this._self, this._then);

  final CoworkingInfo _self;
  final $Res Function(CoworkingInfo) _then;

/// Create a copy of CoworkingInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videoKey = freezed,Object? rules = freezed,}) {
  return _then(_self.copyWith(
videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,rules: freezed == rules ? _self.rules : rules // ignore: cast_nullable_to_non_nullable
as List<Rules>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CoworkingInfo].
extension CoworkingInfoPatterns on CoworkingInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoworkingInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoworkingInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoworkingInfo value)  $default,){
final _that = this;
switch (_that) {
case _CoworkingInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoworkingInfo value)?  $default,){
final _that = this;
switch (_that) {
case _CoworkingInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'rules')  List<Rules>? rules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoworkingInfo() when $default != null:
return $default(_that.videoKey,_that.rules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'rules')  List<Rules>? rules)  $default,) {final _that = this;
switch (_that) {
case _CoworkingInfo():
return $default(_that.videoKey,_that.rules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'rules')  List<Rules>? rules)?  $default,) {final _that = this;
switch (_that) {
case _CoworkingInfo() when $default != null:
return $default(_that.videoKey,_that.rules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoworkingInfo with DiagnosticableTreeMixin implements CoworkingInfo {
  const _CoworkingInfo({@JsonKey(name: 'video_key') this.videoKey, @JsonKey(name: 'rules') final  List<Rules>? rules}): _rules = rules;
  factory _CoworkingInfo.fromJson(Map<String, dynamic> json) => _$CoworkingInfoFromJson(json);

@override@JsonKey(name: 'video_key') final  String? videoKey;
 final  List<Rules>? _rules;
@override@JsonKey(name: 'rules') List<Rules>? get rules {
  final value = _rules;
  if (value == null) return null;
  if (_rules is EqualUnmodifiableListView) return _rules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CoworkingInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoworkingInfoCopyWith<_CoworkingInfo> get copyWith => __$CoworkingInfoCopyWithImpl<_CoworkingInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoworkingInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CoworkingInfo'))
    ..add(DiagnosticsProperty('videoKey', videoKey))..add(DiagnosticsProperty('rules', rules));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoworkingInfo&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey)&&const DeepCollectionEquality().equals(other._rules, _rules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,videoKey,const DeepCollectionEquality().hash(_rules));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CoworkingInfo(videoKey: $videoKey, rules: $rules)';
}


}

/// @nodoc
abstract mixin class _$CoworkingInfoCopyWith<$Res> implements $CoworkingInfoCopyWith<$Res> {
  factory _$CoworkingInfoCopyWith(_CoworkingInfo value, $Res Function(_CoworkingInfo) _then) = __$CoworkingInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'video_key') String? videoKey,@JsonKey(name: 'rules') List<Rules>? rules
});




}
/// @nodoc
class __$CoworkingInfoCopyWithImpl<$Res>
    implements _$CoworkingInfoCopyWith<$Res> {
  __$CoworkingInfoCopyWithImpl(this._self, this._then);

  final _CoworkingInfo _self;
  final $Res Function(_CoworkingInfo) _then;

/// Create a copy of CoworkingInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videoKey = freezed,Object? rules = freezed,}) {
  return _then(_CoworkingInfo(
videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,rules: freezed == rules ? _self._rules : rules // ignore: cast_nullable_to_non_nullable
as List<Rules>?,
  ));
}


}


/// @nodoc
mixin _$Rules implements DiagnosticableTreeMixin {

@JsonKey(name: 'title') String? get title;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'order') int? get order;
/// Create a copy of Rules
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RulesCopyWith<Rules> get copyWith => _$RulesCopyWithImpl<Rules>(this as Rules, _$identity);

  /// Serializes this Rules to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Rules'))
    ..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('order', order));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rules&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,order);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Rules(title: $title, description: $description, order: $order)';
}


}

/// @nodoc
abstract mixin class $RulesCopyWith<$Res>  {
  factory $RulesCopyWith(Rules value, $Res Function(Rules) _then) = _$RulesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'order') int? order
});




}
/// @nodoc
class _$RulesCopyWithImpl<$Res>
    implements $RulesCopyWith<$Res> {
  _$RulesCopyWithImpl(this._self, this._then);

  final Rules _self;
  final $Res Function(Rules) _then;

/// Create a copy of Rules
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,Object? order = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Rules].
extension RulesPatterns on Rules {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rules value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rules() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rules value)  $default,){
final _that = this;
switch (_that) {
case _Rules():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rules value)?  $default,){
final _that = this;
switch (_that) {
case _Rules() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'order')  int? order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rules() when $default != null:
return $default(_that.title,_that.description,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'order')  int? order)  $default,) {final _that = this;
switch (_that) {
case _Rules():
return $default(_that.title,_that.description,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'order')  int? order)?  $default,) {final _that = this;
switch (_that) {
case _Rules() when $default != null:
return $default(_that.title,_that.description,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Rules with DiagnosticableTreeMixin implements Rules {
  const _Rules({@JsonKey(name: 'title') this.title, @JsonKey(name: 'description') this.description, @JsonKey(name: 'order') this.order});
  factory _Rules.fromJson(Map<String, dynamic> json) => _$RulesFromJson(json);

@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'order') final  int? order;

/// Create a copy of Rules
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RulesCopyWith<_Rules> get copyWith => __$RulesCopyWithImpl<_Rules>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RulesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Rules'))
    ..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('order', order));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rules&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,order);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Rules(title: $title, description: $description, order: $order)';
}


}

/// @nodoc
abstract mixin class _$RulesCopyWith<$Res> implements $RulesCopyWith<$Res> {
  factory _$RulesCopyWith(_Rules value, $Res Function(_Rules) _then) = __$RulesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'order') int? order
});




}
/// @nodoc
class __$RulesCopyWithImpl<$Res>
    implements _$RulesCopyWith<$Res> {
  __$RulesCopyWithImpl(this._self, this._then);

  final _Rules _self;
  final $Res Function(_Rules) _then;

/// Create a copy of Rules
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,Object? order = freezed,}) {
  return _then(_Rules(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
