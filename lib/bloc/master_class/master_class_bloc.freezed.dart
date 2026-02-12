// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_class_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MasterClassEvent {

 MasterClassStatus get status; int get offset;
/// Create a copy of MasterClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterClassEventCopyWith<MasterClassEvent> get copyWith => _$MasterClassEventCopyWithImpl<MasterClassEvent>(this as MasterClassEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterClassEvent&&(identical(other.status, status) || other.status == status)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,status,offset);

@override
String toString() {
  return 'MasterClassEvent(status: $status, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $MasterClassEventCopyWith<$Res>  {
  factory $MasterClassEventCopyWith(MasterClassEvent value, $Res Function(MasterClassEvent) _then) = _$MasterClassEventCopyWithImpl;
@useResult
$Res call({
 MasterClassStatus status, int offset
});




}
/// @nodoc
class _$MasterClassEventCopyWithImpl<$Res>
    implements $MasterClassEventCopyWith<$Res> {
  _$MasterClassEventCopyWithImpl(this._self, this._then);

  final MasterClassEvent _self;
  final $Res Function(MasterClassEvent) _then;

/// Create a copy of MasterClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? offset = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MasterClassStatus,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MasterClassEvent].
extension MasterClassEventPatterns on MasterClassEvent {
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
return started(_that);}
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MasterClassStatus status,  int offset)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.status,_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MasterClassStatus status,  int offset)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.status,_that.offset);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MasterClassStatus status,  int offset)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.status,_that.offset);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MasterClassEvent {
  const _Started({required this.status, required this.offset});
  

@override final  MasterClassStatus status;
@override final  int offset;

/// Create a copy of MasterClassEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.status, status) || other.status == status)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,status,offset);

@override
String toString() {
  return 'MasterClassEvent.started(status: $status, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $MasterClassEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 MasterClassStatus status, int offset
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of MasterClassEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? offset = null,}) {
  return _then(_Started(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MasterClassStatus,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MasterClassState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterClassState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MasterClassState()';
}


}

/// @nodoc
class $MasterClassStateCopyWith<$Res>  {
$MasterClassStateCopyWith(MasterClassState _, $Res Function(MasterClassState) __);
}


/// Adds pattern-matching-related methods to [MasterClassState].
extension MasterClassStatePatterns on MasterClassState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MasterClassInitial value)?  initial,TResult Function( MasterClassLazylist value)?  lazylist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MasterClassInitial() when initial != null:
return initial(_that);case MasterClassLazylist() when lazylist != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MasterClassInitial value)  initial,required TResult Function( MasterClassLazylist value)  lazylist,}){
final _that = this;
switch (_that) {
case MasterClassInitial():
return initial(_that);case MasterClassLazylist():
return lazylist(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MasterClassInitial value)?  initial,TResult? Function( MasterClassLazylist value)?  lazylist,}){
final _that = this;
switch (_that) {
case MasterClassInitial() when initial != null:
return initial(_that);case MasterClassLazylist() when lazylist != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<MasterClass> list,  int count)?  lazylist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MasterClassInitial() when initial != null:
return initial();case MasterClassLazylist() when lazylist != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<MasterClass> list,  int count)  lazylist,}) {final _that = this;
switch (_that) {
case MasterClassInitial():
return initial();case MasterClassLazylist():
return lazylist(_that.list,_that.count);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<MasterClass> list,  int count)?  lazylist,}) {final _that = this;
switch (_that) {
case MasterClassInitial() when initial != null:
return initial();case MasterClassLazylist() when lazylist != null:
return lazylist(_that.list,_that.count);case _:
  return null;

}
}

}

/// @nodoc


class MasterClassInitial implements MasterClassState {
  const MasterClassInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterClassInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MasterClassState.initial()';
}


}




/// @nodoc


class MasterClassLazylist implements MasterClassState {
  const MasterClassLazylist({required final  List<MasterClass> list, required this.count}): _list = list;
  

 final  List<MasterClass> _list;
 List<MasterClass> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

 final  int count;

/// Create a copy of MasterClassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterClassLazylistCopyWith<MasterClassLazylist> get copyWith => _$MasterClassLazylistCopyWithImpl<MasterClassLazylist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterClassLazylist&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),count);

@override
String toString() {
  return 'MasterClassState.lazylist(list: $list, count: $count)';
}


}

/// @nodoc
abstract mixin class $MasterClassLazylistCopyWith<$Res> implements $MasterClassStateCopyWith<$Res> {
  factory $MasterClassLazylistCopyWith(MasterClassLazylist value, $Res Function(MasterClassLazylist) _then) = _$MasterClassLazylistCopyWithImpl;
@useResult
$Res call({
 List<MasterClass> list, int count
});




}
/// @nodoc
class _$MasterClassLazylistCopyWithImpl<$Res>
    implements $MasterClassLazylistCopyWith<$Res> {
  _$MasterClassLazylistCopyWithImpl(this._self, this._then);

  final MasterClassLazylist _self;
  final $Res Function(MasterClassLazylist) _then;

/// Create a copy of MasterClassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,Object? count = null,}) {
  return _then(MasterClassLazylist(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<MasterClass>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
