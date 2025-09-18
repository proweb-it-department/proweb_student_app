// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade_book_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GradeBookEvent {

 int get groupId;
/// Create a copy of GradeBookEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GradeBookEventCopyWith<GradeBookEvent> get copyWith => _$GradeBookEventCopyWithImpl<GradeBookEvent>(this as GradeBookEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GradeBookEvent&&(identical(other.groupId, groupId) || other.groupId == groupId));
}


@override
int get hashCode => Object.hash(runtimeType,groupId);

@override
String toString() {
  return 'GradeBookEvent(groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class $GradeBookEventCopyWith<$Res>  {
  factory $GradeBookEventCopyWith(GradeBookEvent value, $Res Function(GradeBookEvent) _then) = _$GradeBookEventCopyWithImpl;
@useResult
$Res call({
 int groupId
});




}
/// @nodoc
class _$GradeBookEventCopyWithImpl<$Res>
    implements $GradeBookEventCopyWith<$Res> {
  _$GradeBookEventCopyWithImpl(this._self, this._then);

  final GradeBookEvent _self;
  final $Res Function(GradeBookEvent) _then;

/// Create a copy of GradeBookEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = null,}) {
  return _then(_self.copyWith(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GradeBookEvent].
extension GradeBookEventPatterns on GradeBookEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int groupId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int groupId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.groupId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int groupId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements GradeBookEvent {
  const _Started({required this.groupId});
  

@override final  int groupId;

/// Create a copy of GradeBookEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.groupId, groupId) || other.groupId == groupId));
}


@override
int get hashCode => Object.hash(runtimeType,groupId);

@override
String toString() {
  return 'GradeBookEvent.started(groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $GradeBookEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int groupId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of GradeBookEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = null,}) {
  return _then(_Started(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$GradeBookState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GradeBookState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GradeBookState()';
}


}

/// @nodoc
class $GradeBookStateCopyWith<$Res>  {
$GradeBookStateCopyWith(GradeBookState _, $Res Function(GradeBookState) __);
}


/// Adds pattern-matching-related methods to [GradeBookState].
extension GradeBookStatePatterns on GradeBookState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _GradeBookError value)?  error,TResult Function( _GradeBookLoad value)?  load,TResult Function( _GradeBookComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _GradeBookError() when error != null:
return error(_that);case _GradeBookLoad() when load != null:
return load(_that);case _GradeBookComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _GradeBookError value)  error,required TResult Function( _GradeBookLoad value)  load,required TResult Function( _GradeBookComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _GradeBookError():
return error(_that);case _GradeBookLoad():
return load(_that);case _GradeBookComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _GradeBookError value)?  error,TResult? Function( _GradeBookLoad value)?  load,TResult? Function( _GradeBookComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _GradeBookError() when error != null:
return error(_that);case _GradeBookLoad() when load != null:
return load(_that);case _GradeBookComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  error,TResult Function()?  load,TResult Function( List<GroupUser> groupUsers,  List<GradeBookModelWork> works,  List<GradeBookModel> studentsWork)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _GradeBookError() when error != null:
return error();case _GradeBookLoad() when load != null:
return load();case _GradeBookComplited() when complited != null:
return complited(_that.groupUsers,_that.works,_that.studentsWork);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  error,required TResult Function()  load,required TResult Function( List<GroupUser> groupUsers,  List<GradeBookModelWork> works,  List<GradeBookModel> studentsWork)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _GradeBookError():
return error();case _GradeBookLoad():
return load();case _GradeBookComplited():
return complited(_that.groupUsers,_that.works,_that.studentsWork);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  error,TResult? Function()?  load,TResult? Function( List<GroupUser> groupUsers,  List<GradeBookModelWork> works,  List<GradeBookModel> studentsWork)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _GradeBookError() when error != null:
return error();case _GradeBookLoad() when load != null:
return load();case _GradeBookComplited() when complited != null:
return complited(_that.groupUsers,_that.works,_that.studentsWork);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GradeBookState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GradeBookState.initial()';
}


}




/// @nodoc


class _GradeBookError implements GradeBookState {
  const _GradeBookError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GradeBookError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GradeBookState.error()';
}


}




/// @nodoc


class _GradeBookLoad implements GradeBookState {
  const _GradeBookLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GradeBookLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GradeBookState.load()';
}


}




/// @nodoc


class _GradeBookComplited implements GradeBookState {
  const _GradeBookComplited({required final  List<GroupUser> groupUsers, required final  List<GradeBookModelWork> works, required final  List<GradeBookModel> studentsWork}): _groupUsers = groupUsers,_works = works,_studentsWork = studentsWork;
  

 final  List<GroupUser> _groupUsers;
 List<GroupUser> get groupUsers {
  if (_groupUsers is EqualUnmodifiableListView) return _groupUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groupUsers);
}

 final  List<GradeBookModelWork> _works;
 List<GradeBookModelWork> get works {
  if (_works is EqualUnmodifiableListView) return _works;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_works);
}

 final  List<GradeBookModel> _studentsWork;
 List<GradeBookModel> get studentsWork {
  if (_studentsWork is EqualUnmodifiableListView) return _studentsWork;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_studentsWork);
}


/// Create a copy of GradeBookState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GradeBookComplitedCopyWith<_GradeBookComplited> get copyWith => __$GradeBookComplitedCopyWithImpl<_GradeBookComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GradeBookComplited&&const DeepCollectionEquality().equals(other._groupUsers, _groupUsers)&&const DeepCollectionEquality().equals(other._works, _works)&&const DeepCollectionEquality().equals(other._studentsWork, _studentsWork));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_groupUsers),const DeepCollectionEquality().hash(_works),const DeepCollectionEquality().hash(_studentsWork));

@override
String toString() {
  return 'GradeBookState.complited(groupUsers: $groupUsers, works: $works, studentsWork: $studentsWork)';
}


}

/// @nodoc
abstract mixin class _$GradeBookComplitedCopyWith<$Res> implements $GradeBookStateCopyWith<$Res> {
  factory _$GradeBookComplitedCopyWith(_GradeBookComplited value, $Res Function(_GradeBookComplited) _then) = __$GradeBookComplitedCopyWithImpl;
@useResult
$Res call({
 List<GroupUser> groupUsers, List<GradeBookModelWork> works, List<GradeBookModel> studentsWork
});




}
/// @nodoc
class __$GradeBookComplitedCopyWithImpl<$Res>
    implements _$GradeBookComplitedCopyWith<$Res> {
  __$GradeBookComplitedCopyWithImpl(this._self, this._then);

  final _GradeBookComplited _self;
  final $Res Function(_GradeBookComplited) _then;

/// Create a copy of GradeBookState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupUsers = null,Object? works = null,Object? studentsWork = null,}) {
  return _then(_GradeBookComplited(
groupUsers: null == groupUsers ? _self._groupUsers : groupUsers // ignore: cast_nullable_to_non_nullable
as List<GroupUser>,works: null == works ? _self._works : works // ignore: cast_nullable_to_non_nullable
as List<GradeBookModelWork>,studentsWork: null == studentsWork ? _self._studentsWork : studentsWork // ignore: cast_nullable_to_non_nullable
as List<GradeBookModel>,
  ));
}


}

// dart format on
