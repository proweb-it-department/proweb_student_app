// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseListEvent {

 String get language;
/// Create a copy of CourseListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseListEventCopyWith<CourseListEvent> get copyWith => _$CourseListEventCopyWithImpl<CourseListEvent>(this as CourseListEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseListEvent&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,language);

@override
String toString() {
  return 'CourseListEvent(language: $language)';
}


}

/// @nodoc
abstract mixin class $CourseListEventCopyWith<$Res>  {
  factory $CourseListEventCopyWith(CourseListEvent value, $Res Function(CourseListEvent) _then) = _$CourseListEventCopyWithImpl;
@useResult
$Res call({
 String language
});




}
/// @nodoc
class _$CourseListEventCopyWithImpl<$Res>
    implements $CourseListEventCopyWith<$Res> {
  _$CourseListEventCopyWithImpl(this._self, this._then);

  final CourseListEvent _self;
  final $Res Function(CourseListEvent) _then;

/// Create a copy of CourseListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? language = null,}) {
  return _then(_self.copyWith(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseListEvent].
extension CourseListEventPatterns on CourseListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String language)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String language)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String language)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.language);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CourseListEvent {
  const _Started({required this.language});
  

@override final  String language;

/// Create a copy of CourseListEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,language);

@override
String toString() {
  return 'CourseListEvent.started(language: $language)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $CourseListEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 String language
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of CourseListEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? language = null,}) {
  return _then(_Started(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CourseListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseListState()';
}


}

/// @nodoc
class $CourseListStateCopyWith<$Res>  {
$CourseListStateCopyWith(CourseListState _, $Res Function(CourseListState) __);
}


/// Adds pattern-matching-related methods to [CourseListState].
extension CourseListStatePatterns on CourseListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _CourseListLoad value)?  loading,TResult Function( _CourseListComplited value)?  complited,TResult Function( _CourseListError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CourseListLoad() when loading != null:
return loading(_that);case _CourseListComplited() when complited != null:
return complited(_that);case _CourseListError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _CourseListLoad value)  loading,required TResult Function( _CourseListComplited value)  complited,required TResult Function( _CourseListError value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _CourseListLoad():
return loading(_that);case _CourseListComplited():
return complited(_that);case _CourseListError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _CourseListLoad value)?  loading,TResult? Function( _CourseListComplited value)?  complited,TResult? Function( _CourseListError value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CourseListLoad() when loading != null:
return loading(_that);case _CourseListComplited() when complited != null:
return complited(_that);case _CourseListError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<CourseModel> courses)?  complited,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CourseListLoad() when loading != null:
return loading();case _CourseListComplited() when complited != null:
return complited(_that.courses);case _CourseListError() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<CourseModel> courses)  complited,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _CourseListLoad():
return loading();case _CourseListComplited():
return complited(_that.courses);case _CourseListError():
return error();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<CourseModel> courses)?  complited,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CourseListLoad() when loading != null:
return loading();case _CourseListComplited() when complited != null:
return complited(_that.courses);case _CourseListError() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CourseListState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseListState.initial()';
}


}




/// @nodoc


class _CourseListLoad implements CourseListState {
  const _CourseListLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseListLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseListState.loading()';
}


}




/// @nodoc


class _CourseListComplited implements CourseListState {
  const _CourseListComplited({required final  List<CourseModel> courses}): _courses = courses;
  

 final  List<CourseModel> _courses;
 List<CourseModel> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}


/// Create a copy of CourseListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseListComplitedCopyWith<_CourseListComplited> get copyWith => __$CourseListComplitedCopyWithImpl<_CourseListComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseListComplited&&const DeepCollectionEquality().equals(other._courses, _courses));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_courses));

@override
String toString() {
  return 'CourseListState.complited(courses: $courses)';
}


}

/// @nodoc
abstract mixin class _$CourseListComplitedCopyWith<$Res> implements $CourseListStateCopyWith<$Res> {
  factory _$CourseListComplitedCopyWith(_CourseListComplited value, $Res Function(_CourseListComplited) _then) = __$CourseListComplitedCopyWithImpl;
@useResult
$Res call({
 List<CourseModel> courses
});




}
/// @nodoc
class __$CourseListComplitedCopyWithImpl<$Res>
    implements _$CourseListComplitedCopyWith<$Res> {
  __$CourseListComplitedCopyWithImpl(this._self, this._then);

  final _CourseListComplited _self;
  final $Res Function(_CourseListComplited) _then;

/// Create a copy of CourseListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? courses = null,}) {
  return _then(_CourseListComplited(
courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,
  ));
}


}

/// @nodoc


class _CourseListError implements CourseListState {
  const _CourseListError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseListError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseListState.error()';
}


}




// dart format on
