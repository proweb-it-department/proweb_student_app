// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nps_poll_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NpsPollEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NpsPollEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NpsPollEvent()';
}


}

/// @nodoc
class $NpsPollEventCopyWith<$Res>  {
$NpsPollEventCopyWith(NpsPollEvent _, $Res Function(NpsPollEvent) __);
}


/// Adds pattern-matching-related methods to [NpsPollEvent].
extension NpsPollEventPatterns on NpsPollEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements NpsPollEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NpsPollEvent.started()';
}


}




/// @nodoc
mixin _$NpsPollState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NpsPollState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NpsPollState()';
}


}

/// @nodoc
class $NpsPollStateCopyWith<$Res>  {
$NpsPollStateCopyWith(NpsPollState _, $Res Function(NpsPollState) __);
}


/// Adds pattern-matching-related methods to [NpsPollState].
extension NpsPollStatePatterns on NpsPollState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NpsPollInitial value)?  initial,TResult Function( NpsPollComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NpsPollInitial() when initial != null:
return initial(_that);case NpsPollComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NpsPollInitial value)  initial,required TResult Function( NpsPollComplited value)  complited,}){
final _that = this;
switch (_that) {
case NpsPollInitial():
return initial(_that);case NpsPollComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NpsPollInitial value)?  initial,TResult? Function( NpsPollComplited value)?  complited,}){
final _that = this;
switch (_that) {
case NpsPollInitial() when initial != null:
return initial(_that);case NpsPollComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( ResponseLazeList<NpsPoll> nps)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NpsPollInitial() when initial != null:
return initial();case NpsPollComplited() when complited != null:
return complited(_that.nps);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( ResponseLazeList<NpsPoll> nps)  complited,}) {final _that = this;
switch (_that) {
case NpsPollInitial():
return initial();case NpsPollComplited():
return complited(_that.nps);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( ResponseLazeList<NpsPoll> nps)?  complited,}) {final _that = this;
switch (_that) {
case NpsPollInitial() when initial != null:
return initial();case NpsPollComplited() when complited != null:
return complited(_that.nps);case _:
  return null;

}
}

}

/// @nodoc


class NpsPollInitial implements NpsPollState {
  const NpsPollInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NpsPollInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NpsPollState.initial()';
}


}




/// @nodoc


class NpsPollComplited implements NpsPollState {
  const NpsPollComplited({required this.nps});
  

 final  ResponseLazeList<NpsPoll> nps;

/// Create a copy of NpsPollState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NpsPollComplitedCopyWith<NpsPollComplited> get copyWith => _$NpsPollComplitedCopyWithImpl<NpsPollComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NpsPollComplited&&(identical(other.nps, nps) || other.nps == nps));
}


@override
int get hashCode => Object.hash(runtimeType,nps);

@override
String toString() {
  return 'NpsPollState.complited(nps: $nps)';
}


}

/// @nodoc
abstract mixin class $NpsPollComplitedCopyWith<$Res> implements $NpsPollStateCopyWith<$Res> {
  factory $NpsPollComplitedCopyWith(NpsPollComplited value, $Res Function(NpsPollComplited) _then) = _$NpsPollComplitedCopyWithImpl;
@useResult
$Res call({
 ResponseLazeList<NpsPoll> nps
});




}
/// @nodoc
class _$NpsPollComplitedCopyWithImpl<$Res>
    implements $NpsPollComplitedCopyWith<$Res> {
  _$NpsPollComplitedCopyWithImpl(this._self, this._then);

  final NpsPollComplited _self;
  final $Res Function(NpsPollComplited) _then;

/// Create a copy of NpsPollState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nps = null,}) {
  return _then(NpsPollComplited(
nps: null == nps ? _self.nps : nps // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<NpsPoll>,
  ));
}


}

// dart format on
