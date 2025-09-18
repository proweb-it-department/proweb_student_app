// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionsStudentEvent {

 int get offset;
/// Create a copy of TransactionsStudentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionsStudentEventCopyWith<TransactionsStudentEvent> get copyWith => _$TransactionsStudentEventCopyWithImpl<TransactionsStudentEvent>(this as TransactionsStudentEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionsStudentEvent&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,offset);

@override
String toString() {
  return 'TransactionsStudentEvent(offset: $offset)';
}


}

/// @nodoc
abstract mixin class $TransactionsStudentEventCopyWith<$Res>  {
  factory $TransactionsStudentEventCopyWith(TransactionsStudentEvent value, $Res Function(TransactionsStudentEvent) _then) = _$TransactionsStudentEventCopyWithImpl;
@useResult
$Res call({
 int offset
});




}
/// @nodoc
class _$TransactionsStudentEventCopyWithImpl<$Res>
    implements $TransactionsStudentEventCopyWith<$Res> {
  _$TransactionsStudentEventCopyWithImpl(this._self, this._then);

  final TransactionsStudentEvent _self;
  final $Res Function(TransactionsStudentEvent) _then;

/// Create a copy of TransactionsStudentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionsStudentEvent].
extension TransactionsStudentEventPatterns on TransactionsStudentEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int offset)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int offset)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.offset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int offset)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements TransactionsStudentEvent {
  const _Started({required this.offset});
  

@override final  int offset;

/// Create a copy of TransactionsStudentEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'TransactionsStudentEvent.started(offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $TransactionsStudentEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
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

/// Create a copy of TransactionsStudentEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,}) {
  return _then(_Started(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TransactionsStudentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionsStudentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsStudentState()';
}


}

/// @nodoc
class $TransactionsStudentStateCopyWith<$Res>  {
$TransactionsStudentStateCopyWith(TransactionsStudentState _, $Res Function(TransactionsStudentState) __);
}


/// Adds pattern-matching-related methods to [TransactionsStudentState].
extension TransactionsStudentStatePatterns on TransactionsStudentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _TransactionsStudentLazyList value)?  lazylist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _TransactionsStudentLazyList() when lazylist != null:
return lazylist(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _TransactionsStudentLazyList value)  lazylist,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _TransactionsStudentLazyList():
return lazylist(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _TransactionsStudentLazyList value)?  lazylist,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _TransactionsStudentLazyList() when lazylist != null:
return lazylist(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<TransactionsStudent> list,  int count)?  lazylist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _TransactionsStudentLazyList() when lazylist != null:
return lazylist(_that.list,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<TransactionsStudent> list,  int count)  lazylist,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _TransactionsStudentLazyList():
return lazylist(_that.list,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<TransactionsStudent> list,  int count)?  lazylist,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _TransactionsStudentLazyList() when lazylist != null:
return lazylist(_that.list,_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TransactionsStudentState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsStudentState.initial()';
}


}




/// @nodoc


class _TransactionsStudentLazyList implements TransactionsStudentState {
  const _TransactionsStudentLazyList({required final  List<TransactionsStudent> list, required this.count}): _list = list;
  

 final  List<TransactionsStudent> _list;
 List<TransactionsStudent> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

 final  int count;

/// Create a copy of TransactionsStudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionsStudentLazyListCopyWith<_TransactionsStudentLazyList> get copyWith => __$TransactionsStudentLazyListCopyWithImpl<_TransactionsStudentLazyList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsStudentLazyList&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),count);

@override
String toString() {
  return 'TransactionsStudentState.lazylist(list: $list, count: $count)';
}


}

/// @nodoc
abstract mixin class _$TransactionsStudentLazyListCopyWith<$Res> implements $TransactionsStudentStateCopyWith<$Res> {
  factory _$TransactionsStudentLazyListCopyWith(_TransactionsStudentLazyList value, $Res Function(_TransactionsStudentLazyList) _then) = __$TransactionsStudentLazyListCopyWithImpl;
@useResult
$Res call({
 List<TransactionsStudent> list, int count
});




}
/// @nodoc
class __$TransactionsStudentLazyListCopyWithImpl<$Res>
    implements _$TransactionsStudentLazyListCopyWith<$Res> {
  __$TransactionsStudentLazyListCopyWithImpl(this._self, this._then);

  final _TransactionsStudentLazyList _self;
  final $Res Function(_TransactionsStudentLazyList) _then;

/// Create a copy of TransactionsStudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,Object? count = null,}) {
  return _then(_TransactionsStudentLazyList(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<TransactionsStudent>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
