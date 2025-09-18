// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoryGroupsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoryGroupsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoryGroupsEvent()';
}


}

/// @nodoc
class $StoryGroupsEventCopyWith<$Res>  {
$StoryGroupsEventCopyWith(StoryGroupsEvent _, $Res Function(StoryGroupsEvent) __);
}


/// Adds pattern-matching-related methods to [StoryGroupsEvent].
extension StoryGroupsEventPatterns on StoryGroupsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _StoryGroupsEventSorted value)?  sorted,TResult Function( _StoryGroupsEventaction value)?  action,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _StoryGroupsEventSorted() when sorted != null:
return sorted(_that);case _StoryGroupsEventaction() when action != null:
return action(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _StoryGroupsEventSorted value)  sorted,required TResult Function( _StoryGroupsEventaction value)  action,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _StoryGroupsEventSorted():
return sorted(_that);case _StoryGroupsEventaction():
return action(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _StoryGroupsEventSorted value)?  sorted,TResult? Function( _StoryGroupsEventaction value)?  action,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _StoryGroupsEventSorted() when sorted != null:
return sorted(_that);case _StoryGroupsEventaction() when action != null:
return action(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String languageCode)?  started,TResult Function()?  sorted,TResult Function( int storyId,  int groupId,  bool? liked,  bool? followed,  int? optionId)?  action,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.languageCode);case _StoryGroupsEventSorted() when sorted != null:
return sorted();case _StoryGroupsEventaction() when action != null:
return action(_that.storyId,_that.groupId,_that.liked,_that.followed,_that.optionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String languageCode)  started,required TResult Function()  sorted,required TResult Function( int storyId,  int groupId,  bool? liked,  bool? followed,  int? optionId)  action,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.languageCode);case _StoryGroupsEventSorted():
return sorted();case _StoryGroupsEventaction():
return action(_that.storyId,_that.groupId,_that.liked,_that.followed,_that.optionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String languageCode)?  started,TResult? Function()?  sorted,TResult? Function( int storyId,  int groupId,  bool? liked,  bool? followed,  int? optionId)?  action,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.languageCode);case _StoryGroupsEventSorted() when sorted != null:
return sorted();case _StoryGroupsEventaction() when action != null:
return action(_that.storyId,_that.groupId,_that.liked,_that.followed,_that.optionId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements StoryGroupsEvent {
  const _Started({required this.languageCode});
  

 final  String languageCode;

/// Create a copy of StoryGroupsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'StoryGroupsEvent.started(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $StoryGroupsEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of StoryGroupsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(_Started(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _StoryGroupsEventSorted implements StoryGroupsEvent {
  const _StoryGroupsEventSorted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoryGroupsEventSorted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoryGroupsEvent.sorted()';
}


}




/// @nodoc


class _StoryGroupsEventaction implements StoryGroupsEvent {
  const _StoryGroupsEventaction({required this.storyId, required this.groupId, this.liked, this.followed, this.optionId});
  

 final  int storyId;
 final  int groupId;
 final  bool? liked;
 final  bool? followed;
 final  int? optionId;

/// Create a copy of StoryGroupsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoryGroupsEventactionCopyWith<_StoryGroupsEventaction> get copyWith => __$StoryGroupsEventactionCopyWithImpl<_StoryGroupsEventaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoryGroupsEventaction&&(identical(other.storyId, storyId) || other.storyId == storyId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.liked, liked) || other.liked == liked)&&(identical(other.followed, followed) || other.followed == followed)&&(identical(other.optionId, optionId) || other.optionId == optionId));
}


@override
int get hashCode => Object.hash(runtimeType,storyId,groupId,liked,followed,optionId);

@override
String toString() {
  return 'StoryGroupsEvent.action(storyId: $storyId, groupId: $groupId, liked: $liked, followed: $followed, optionId: $optionId)';
}


}

/// @nodoc
abstract mixin class _$StoryGroupsEventactionCopyWith<$Res> implements $StoryGroupsEventCopyWith<$Res> {
  factory _$StoryGroupsEventactionCopyWith(_StoryGroupsEventaction value, $Res Function(_StoryGroupsEventaction) _then) = __$StoryGroupsEventactionCopyWithImpl;
@useResult
$Res call({
 int storyId, int groupId, bool? liked, bool? followed, int? optionId
});




}
/// @nodoc
class __$StoryGroupsEventactionCopyWithImpl<$Res>
    implements _$StoryGroupsEventactionCopyWith<$Res> {
  __$StoryGroupsEventactionCopyWithImpl(this._self, this._then);

  final _StoryGroupsEventaction _self;
  final $Res Function(_StoryGroupsEventaction) _then;

/// Create a copy of StoryGroupsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? storyId = null,Object? groupId = null,Object? liked = freezed,Object? followed = freezed,Object? optionId = freezed,}) {
  return _then(_StoryGroupsEventaction(
storyId: null == storyId ? _self.storyId : storyId // ignore: cast_nullable_to_non_nullable
as int,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,liked: freezed == liked ? _self.liked : liked // ignore: cast_nullable_to_non_nullable
as bool?,followed: freezed == followed ? _self.followed : followed // ignore: cast_nullable_to_non_nullable
as bool?,optionId: freezed == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$StoryGroupsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoryGroupsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoryGroupsState()';
}


}

/// @nodoc
class $StoryGroupsStateCopyWith<$Res>  {
$StoryGroupsStateCopyWith(StoryGroupsState _, $Res Function(StoryGroupsState) __);
}


/// Adds pattern-matching-related methods to [StoryGroupsState].
extension StoryGroupsStatePatterns on StoryGroupsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _StoryGroupsStateComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _StoryGroupsStateComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _StoryGroupsStateComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _StoryGroupsStateComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _StoryGroupsStateComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _StoryGroupsStateComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<StoryGroupsForStudent> story,  bool isLoad,  bool isError)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _StoryGroupsStateComplited() when complited != null:
return complited(_that.story,_that.isLoad,_that.isError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<StoryGroupsForStudent> story,  bool isLoad,  bool isError)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _StoryGroupsStateComplited():
return complited(_that.story,_that.isLoad,_that.isError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<StoryGroupsForStudent> story,  bool isLoad,  bool isError)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _StoryGroupsStateComplited() when complited != null:
return complited(_that.story,_that.isLoad,_that.isError);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements StoryGroupsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoryGroupsState.initial()';
}


}




/// @nodoc


class _StoryGroupsStateComplited implements StoryGroupsState {
  const _StoryGroupsStateComplited({required final  List<StoryGroupsForStudent> story, required this.isLoad, required this.isError}): _story = story;
  

 final  List<StoryGroupsForStudent> _story;
 List<StoryGroupsForStudent> get story {
  if (_story is EqualUnmodifiableListView) return _story;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_story);
}

 final  bool isLoad;
 final  bool isError;

/// Create a copy of StoryGroupsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoryGroupsStateComplitedCopyWith<_StoryGroupsStateComplited> get copyWith => __$StoryGroupsStateComplitedCopyWithImpl<_StoryGroupsStateComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoryGroupsStateComplited&&const DeepCollectionEquality().equals(other._story, _story)&&(identical(other.isLoad, isLoad) || other.isLoad == isLoad)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_story),isLoad,isError);

@override
String toString() {
  return 'StoryGroupsState.complited(story: $story, isLoad: $isLoad, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$StoryGroupsStateComplitedCopyWith<$Res> implements $StoryGroupsStateCopyWith<$Res> {
  factory _$StoryGroupsStateComplitedCopyWith(_StoryGroupsStateComplited value, $Res Function(_StoryGroupsStateComplited) _then) = __$StoryGroupsStateComplitedCopyWithImpl;
@useResult
$Res call({
 List<StoryGroupsForStudent> story, bool isLoad, bool isError
});




}
/// @nodoc
class __$StoryGroupsStateComplitedCopyWithImpl<$Res>
    implements _$StoryGroupsStateComplitedCopyWith<$Res> {
  __$StoryGroupsStateComplitedCopyWithImpl(this._self, this._then);

  final _StoryGroupsStateComplited _self;
  final $Res Function(_StoryGroupsStateComplited) _then;

/// Create a copy of StoryGroupsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? story = null,Object? isLoad = null,Object? isError = null,}) {
  return _then(_StoryGroupsStateComplited(
story: null == story ? _self._story : story // ignore: cast_nullable_to_non_nullable
as List<StoryGroupsForStudent>,isLoad: null == isLoad ? _self.isLoad : isLoad // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
