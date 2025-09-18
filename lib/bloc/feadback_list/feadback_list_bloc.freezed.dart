// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feadback_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeadbackListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeadbackListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeadbackListEvent()';
}


}

/// @nodoc
class $FeadbackListEventCopyWith<$Res>  {
$FeadbackListEventCopyWith(FeadbackListEvent _, $Res Function(FeadbackListEvent) __);
}


/// Adds pattern-matching-related methods to [FeadbackListEvent].
extension FeadbackListEventPatterns on FeadbackListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Create value)?  create,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Create() when create != null:
return create(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Create value)  create,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Create():
return create(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Create value)?  create,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Create() when create != null:
return create(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int offset)?  started,TResult Function( FeadbackType type,  String text)?  create,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset);case _Create() when create != null:
return create(_that.type,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int offset)  started,required TResult Function( FeadbackType type,  String text)  create,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.offset);case _Create():
return create(_that.type,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int offset)?  started,TResult? Function( FeadbackType type,  String text)?  create,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset);case _Create() when create != null:
return create(_that.type,_that.text);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements FeadbackListEvent {
  const _Started({required this.offset});
  

 final  int offset;

/// Create a copy of FeadbackListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,offset);

@override
String toString() {
  return 'FeadbackListEvent.started(offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $FeadbackListEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 int offset
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of FeadbackListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? offset = null,}) {
  return _then(_Started(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Create implements FeadbackListEvent {
  const _Create({required this.type, required this.text});
  

 final  FeadbackType type;
 final  String text;

/// Create a copy of FeadbackListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCopyWith<_Create> get copyWith => __$CreateCopyWithImpl<_Create>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Create&&(identical(other.type, type) || other.type == type)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,type,text);

@override
String toString() {
  return 'FeadbackListEvent.create(type: $type, text: $text)';
}


}

/// @nodoc
abstract mixin class _$CreateCopyWith<$Res> implements $FeadbackListEventCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) _then) = __$CreateCopyWithImpl;
@useResult
$Res call({
 FeadbackType type, String text
});




}
/// @nodoc
class __$CreateCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(this._self, this._then);

  final _Create _self;
  final $Res Function(_Create) _then;

/// Create a copy of FeadbackListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? text = null,}) {
  return _then(_Create(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FeadbackType,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$FeadbackListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeadbackListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeadbackListState()';
}


}

/// @nodoc
class $FeadbackListStateCopyWith<$Res>  {
$FeadbackListStateCopyWith(FeadbackListState _, $Res Function(FeadbackListState) __);
}


/// Adds pattern-matching-related methods to [FeadbackListState].
extension FeadbackListStatePatterns on FeadbackListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _FeadbackListComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _FeadbackListComplited() when complited != null:
return complited(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _FeadbackListComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _FeadbackListComplited():
return complited(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _FeadbackListComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _FeadbackListComplited() when complited != null:
return complited(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int count,  List<FeadbacksPageItem> feadbacks,  bool created)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _FeadbackListComplited() when complited != null:
return complited(_that.count,_that.feadbacks,_that.created);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int count,  List<FeadbacksPageItem> feadbacks,  bool created)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _FeadbackListComplited():
return complited(_that.count,_that.feadbacks,_that.created);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int count,  List<FeadbacksPageItem> feadbacks,  bool created)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _FeadbackListComplited() when complited != null:
return complited(_that.count,_that.feadbacks,_that.created);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements FeadbackListState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeadbackListState.initial()';
}


}




/// @nodoc


class _FeadbackListComplited implements FeadbackListState {
  const _FeadbackListComplited({required this.count, required final  List<FeadbacksPageItem> feadbacks, required this.created}): _feadbacks = feadbacks;
  

 final  int count;
 final  List<FeadbacksPageItem> _feadbacks;
 List<FeadbacksPageItem> get feadbacks {
  if (_feadbacks is EqualUnmodifiableListView) return _feadbacks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_feadbacks);
}

 final  bool created;

/// Create a copy of FeadbackListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeadbackListComplitedCopyWith<_FeadbackListComplited> get copyWith => __$FeadbackListComplitedCopyWithImpl<_FeadbackListComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeadbackListComplited&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._feadbacks, _feadbacks)&&(identical(other.created, created) || other.created == created));
}


@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(_feadbacks),created);

@override
String toString() {
  return 'FeadbackListState.complited(count: $count, feadbacks: $feadbacks, created: $created)';
}


}

/// @nodoc
abstract mixin class _$FeadbackListComplitedCopyWith<$Res> implements $FeadbackListStateCopyWith<$Res> {
  factory _$FeadbackListComplitedCopyWith(_FeadbackListComplited value, $Res Function(_FeadbackListComplited) _then) = __$FeadbackListComplitedCopyWithImpl;
@useResult
$Res call({
 int count, List<FeadbacksPageItem> feadbacks, bool created
});




}
/// @nodoc
class __$FeadbackListComplitedCopyWithImpl<$Res>
    implements _$FeadbackListComplitedCopyWith<$Res> {
  __$FeadbackListComplitedCopyWithImpl(this._self, this._then);

  final _FeadbackListComplited _self;
  final $Res Function(_FeadbackListComplited) _then;

/// Create a copy of FeadbackListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,Object? feadbacks = null,Object? created = null,}) {
  return _then(_FeadbackListComplited(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,feadbacks: null == feadbacks ? _self._feadbacks : feadbacks // ignore: cast_nullable_to_non_nullable
as List<FeadbacksPageItem>,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
