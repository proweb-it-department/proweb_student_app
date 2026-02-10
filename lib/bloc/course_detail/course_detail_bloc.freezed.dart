// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseDetailEvent {

 int get id;
/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseDetailEventCopyWith<CourseDetailEvent> get copyWith => _$CourseDetailEventCopyWithImpl<CourseDetailEvent>(this as CourseDetailEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseDetailEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CourseDetailEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $CourseDetailEventCopyWith<$Res>  {
  factory $CourseDetailEventCopyWith(CourseDetailEvent value, $Res Function(CourseDetailEvent) _then) = _$CourseDetailEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$CourseDetailEventCopyWithImpl<$Res>
    implements $CourseDetailEventCopyWith<$Res> {
  _$CourseDetailEventCopyWithImpl(this._self, this._then);

  final CourseDetailEvent _self;
  final $Res Function(CourseDetailEvent) _then;

/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseDetailEvent].
extension CourseDetailEventPatterns on CourseDetailEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CourseDetailEvent {
  const _Started({required this.id});
  

@override final  int id;

/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CourseDetailEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $CourseDetailEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CourseDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseDetailState()';
}


}

/// @nodoc
class $CourseDetailStateCopyWith<$Res>  {
$CourseDetailStateCopyWith(CourseDetailState _, $Res Function(CourseDetailState) __);
}


/// Adds pattern-matching-related methods to [CourseDetailState].
extension CourseDetailStatePatterns on CourseDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CourseDetailInitial value)?  initial,TResult Function( CourseDetailError value)?  error,TResult Function( CourseDetailComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CourseDetailInitial() when initial != null:
return initial(_that);case CourseDetailError() when error != null:
return error(_that);case CourseDetailComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CourseDetailInitial value)  initial,required TResult Function( CourseDetailError value)  error,required TResult Function( CourseDetailComplited value)  complited,}){
final _that = this;
switch (_that) {
case CourseDetailInitial():
return initial(_that);case CourseDetailError():
return error(_that);case CourseDetailComplited():
return complited(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CourseDetailInitial value)?  initial,TResult? Function( CourseDetailError value)?  error,TResult? Function( CourseDetailComplited value)?  complited,}){
final _that = this;
switch (_that) {
case CourseDetailInitial() when initial != null:
return initial(_that);case CourseDetailError() when error != null:
return error(_that);case CourseDetailComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  error,TResult Function( CourseModel course)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CourseDetailInitial() when initial != null:
return initial();case CourseDetailError() when error != null:
return error();case CourseDetailComplited() when complited != null:
return complited(_that.course);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  error,required TResult Function( CourseModel course)  complited,}) {final _that = this;
switch (_that) {
case CourseDetailInitial():
return initial();case CourseDetailError():
return error();case CourseDetailComplited():
return complited(_that.course);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  error,TResult? Function( CourseModel course)?  complited,}) {final _that = this;
switch (_that) {
case CourseDetailInitial() when initial != null:
return initial();case CourseDetailError() when error != null:
return error();case CourseDetailComplited() when complited != null:
return complited(_that.course);case _:
  return null;

}
}

}

/// @nodoc


class CourseDetailInitial implements CourseDetailState {
  const CourseDetailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseDetailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseDetailState.initial()';
}


}




/// @nodoc


class CourseDetailError implements CourseDetailState {
  const CourseDetailError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseDetailError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseDetailState.error()';
}


}




/// @nodoc


class CourseDetailComplited implements CourseDetailState {
  const CourseDetailComplited({required this.course});
  

 final  CourseModel course;

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseDetailComplitedCopyWith<CourseDetailComplited> get copyWith => _$CourseDetailComplitedCopyWithImpl<CourseDetailComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseDetailComplited&&(identical(other.course, course) || other.course == course));
}


@override
int get hashCode => Object.hash(runtimeType,course);

@override
String toString() {
  return 'CourseDetailState.complited(course: $course)';
}


}

/// @nodoc
abstract mixin class $CourseDetailComplitedCopyWith<$Res> implements $CourseDetailStateCopyWith<$Res> {
  factory $CourseDetailComplitedCopyWith(CourseDetailComplited value, $Res Function(CourseDetailComplited) _then) = _$CourseDetailComplitedCopyWithImpl;
@useResult
$Res call({
 CourseModel course
});


$CourseModelCopyWith<$Res> get course;

}
/// @nodoc
class _$CourseDetailComplitedCopyWithImpl<$Res>
    implements $CourseDetailComplitedCopyWith<$Res> {
  _$CourseDetailComplitedCopyWithImpl(this._self, this._then);

  final CourseDetailComplited _self;
  final $Res Function(CourseDetailComplited) _then;

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? course = null,}) {
  return _then(CourseDetailComplited(
course: null == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as CourseModel,
  ));
}

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseModelCopyWith<$Res> get course {
  
  return $CourseModelCopyWith<$Res>(_self.course, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}

// dart format on
