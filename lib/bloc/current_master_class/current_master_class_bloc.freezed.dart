// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_master_class_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrentMasterClassEvent {

 int get id;
/// Create a copy of CurrentMasterClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentMasterClassEventCopyWith<CurrentMasterClassEvent> get copyWith => _$CurrentMasterClassEventCopyWithImpl<CurrentMasterClassEvent>(this as CurrentMasterClassEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentMasterClassEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CurrentMasterClassEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $CurrentMasterClassEventCopyWith<$Res>  {
  factory $CurrentMasterClassEventCopyWith(CurrentMasterClassEvent value, $Res Function(CurrentMasterClassEvent) _then) = _$CurrentMasterClassEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$CurrentMasterClassEventCopyWithImpl<$Res>
    implements $CurrentMasterClassEventCopyWith<$Res> {
  _$CurrentMasterClassEventCopyWithImpl(this._self, this._then);

  final CurrentMasterClassEvent _self;
  final $Res Function(CurrentMasterClassEvent) _then;

/// Create a copy of CurrentMasterClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrentMasterClassEvent].
extension CurrentMasterClassEventPatterns on CurrentMasterClassEvent {
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
return started(_that.id);}
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


class _Started implements CurrentMasterClassEvent {
  const _Started({required this.id});
  

@override final  int id;

/// Create a copy of CurrentMasterClassEvent
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
  return 'CurrentMasterClassEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $CurrentMasterClassEventCopyWith<$Res> {
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

/// Create a copy of CurrentMasterClassEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CurrentMasterClassState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentMasterClassState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentMasterClassState()';
}


}

/// @nodoc
class $CurrentMasterClassStateCopyWith<$Res>  {
$CurrentMasterClassStateCopyWith(CurrentMasterClassState _, $Res Function(CurrentMasterClassState) __);
}


/// Adds pattern-matching-related methods to [CurrentMasterClassState].
extension CurrentMasterClassStatePatterns on CurrentMasterClassState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CurrentMasterClassInitial value)?  initial,TResult Function( CurrentMasterClassLoad value)?  load,TResult Function( CurrentMasterClassError value)?  error,TResult Function( CurrentMasterClassComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CurrentMasterClassInitial() when initial != null:
return initial(_that);case CurrentMasterClassLoad() when load != null:
return load(_that);case CurrentMasterClassError() when error != null:
return error(_that);case CurrentMasterClassComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CurrentMasterClassInitial value)  initial,required TResult Function( CurrentMasterClassLoad value)  load,required TResult Function( CurrentMasterClassError value)  error,required TResult Function( CurrentMasterClassComplited value)  complited,}){
final _that = this;
switch (_that) {
case CurrentMasterClassInitial():
return initial(_that);case CurrentMasterClassLoad():
return load(_that);case CurrentMasterClassError():
return error(_that);case CurrentMasterClassComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CurrentMasterClassInitial value)?  initial,TResult? Function( CurrentMasterClassLoad value)?  load,TResult? Function( CurrentMasterClassError value)?  error,TResult? Function( CurrentMasterClassComplited value)?  complited,}){
final _that = this;
switch (_that) {
case CurrentMasterClassInitial() when initial != null:
return initial(_that);case CurrentMasterClassLoad() when load != null:
return load(_that);case CurrentMasterClassError() when error != null:
return error(_that);case CurrentMasterClassComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( MasterClass masterClass,  MyReservMasterClass? reserv,  VideoModel? video)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CurrentMasterClassInitial() when initial != null:
return initial();case CurrentMasterClassLoad() when load != null:
return load();case CurrentMasterClassError() when error != null:
return error();case CurrentMasterClassComplited() when complited != null:
return complited(_that.masterClass,_that.reserv,_that.video);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( MasterClass masterClass,  MyReservMasterClass? reserv,  VideoModel? video)  complited,}) {final _that = this;
switch (_that) {
case CurrentMasterClassInitial():
return initial();case CurrentMasterClassLoad():
return load();case CurrentMasterClassError():
return error();case CurrentMasterClassComplited():
return complited(_that.masterClass,_that.reserv,_that.video);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( MasterClass masterClass,  MyReservMasterClass? reserv,  VideoModel? video)?  complited,}) {final _that = this;
switch (_that) {
case CurrentMasterClassInitial() when initial != null:
return initial();case CurrentMasterClassLoad() when load != null:
return load();case CurrentMasterClassError() when error != null:
return error();case CurrentMasterClassComplited() when complited != null:
return complited(_that.masterClass,_that.reserv,_that.video);case _:
  return null;

}
}

}

/// @nodoc


class CurrentMasterClassInitial implements CurrentMasterClassState {
  const CurrentMasterClassInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentMasterClassInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentMasterClassState.initial()';
}


}




/// @nodoc


class CurrentMasterClassLoad implements CurrentMasterClassState {
  const CurrentMasterClassLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentMasterClassLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentMasterClassState.load()';
}


}




/// @nodoc


class CurrentMasterClassError implements CurrentMasterClassState {
  const CurrentMasterClassError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentMasterClassError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentMasterClassState.error()';
}


}




/// @nodoc


class CurrentMasterClassComplited implements CurrentMasterClassState {
  const CurrentMasterClassComplited({required this.masterClass, required this.reserv, required this.video});
  

 final  MasterClass masterClass;
 final  MyReservMasterClass? reserv;
 final  VideoModel? video;

/// Create a copy of CurrentMasterClassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentMasterClassComplitedCopyWith<CurrentMasterClassComplited> get copyWith => _$CurrentMasterClassComplitedCopyWithImpl<CurrentMasterClassComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentMasterClassComplited&&(identical(other.masterClass, masterClass) || other.masterClass == masterClass)&&(identical(other.reserv, reserv) || other.reserv == reserv)&&(identical(other.video, video) || other.video == video));
}


@override
int get hashCode => Object.hash(runtimeType,masterClass,reserv,video);

@override
String toString() {
  return 'CurrentMasterClassState.complited(masterClass: $masterClass, reserv: $reserv, video: $video)';
}


}

/// @nodoc
abstract mixin class $CurrentMasterClassComplitedCopyWith<$Res> implements $CurrentMasterClassStateCopyWith<$Res> {
  factory $CurrentMasterClassComplitedCopyWith(CurrentMasterClassComplited value, $Res Function(CurrentMasterClassComplited) _then) = _$CurrentMasterClassComplitedCopyWithImpl;
@useResult
$Res call({
 MasterClass masterClass, MyReservMasterClass? reserv, VideoModel? video
});


$MasterClassCopyWith<$Res> get masterClass;$MyReservMasterClassCopyWith<$Res>? get reserv;$VideoModelCopyWith<$Res>? get video;

}
/// @nodoc
class _$CurrentMasterClassComplitedCopyWithImpl<$Res>
    implements $CurrentMasterClassComplitedCopyWith<$Res> {
  _$CurrentMasterClassComplitedCopyWithImpl(this._self, this._then);

  final CurrentMasterClassComplited _self;
  final $Res Function(CurrentMasterClassComplited) _then;

/// Create a copy of CurrentMasterClassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? masterClass = null,Object? reserv = freezed,Object? video = freezed,}) {
  return _then(CurrentMasterClassComplited(
masterClass: null == masterClass ? _self.masterClass : masterClass // ignore: cast_nullable_to_non_nullable
as MasterClass,reserv: freezed == reserv ? _self.reserv : reserv // ignore: cast_nullable_to_non_nullable
as MyReservMasterClass?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as VideoModel?,
  ));
}

/// Create a copy of CurrentMasterClassState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MasterClassCopyWith<$Res> get masterClass {
  
  return $MasterClassCopyWith<$Res>(_self.masterClass, (value) {
    return _then(_self.copyWith(masterClass: value));
  });
}/// Create a copy of CurrentMasterClassState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyReservMasterClassCopyWith<$Res>? get reserv {
    if (_self.reserv == null) {
    return null;
  }

  return $MyReservMasterClassCopyWith<$Res>(_self.reserv!, (value) {
    return _then(_self.copyWith(reserv: value));
  });
}/// Create a copy of CurrentMasterClassState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoModelCopyWith<$Res>? get video {
    if (_self.video == null) {
    return null;
  }

  return $VideoModelCopyWith<$Res>(_self.video!, (value) {
    return _then(_self.copyWith(video: value));
  });
}
}

// dart format on
