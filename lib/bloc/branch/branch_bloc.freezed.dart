// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BranchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchEvent()';
}


}

/// @nodoc
class $BranchEventCopyWith<$Res>  {
$BranchEventCopyWith(BranchEvent _, $Res Function(BranchEvent) __);
}


/// Adds pattern-matching-related methods to [BranchEvent].
extension BranchEventPatterns on BranchEvent {
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
return started();}
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


class _Started implements BranchEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchEvent.started()';
}


}




/// @nodoc
mixin _$BranchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchState()';
}


}

/// @nodoc
class $BranchStateCopyWith<$Res>  {
$BranchStateCopyWith(BranchState _, $Res Function(BranchState) __);
}


/// Adds pattern-matching-related methods to [BranchState].
extension BranchStatePatterns on BranchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BranchInitial value)?  initial,TResult Function( BranchError value)?  error,TResult Function( BranchComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BranchInitial() when initial != null:
return initial(_that);case BranchError() when error != null:
return error(_that);case BranchComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BranchInitial value)  initial,required TResult Function( BranchError value)  error,required TResult Function( BranchComplited value)  complited,}){
final _that = this;
switch (_that) {
case BranchInitial():
return initial(_that);case BranchError():
return error(_that);case BranchComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BranchInitial value)?  initial,TResult? Function( BranchError value)?  error,TResult? Function( BranchComplited value)?  complited,}){
final _that = this;
switch (_that) {
case BranchInitial() when initial != null:
return initial(_that);case BranchError() when error != null:
return error(_that);case BranchComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  error,TResult Function( List<Branche> branch)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BranchInitial() when initial != null:
return initial();case BranchError() when error != null:
return error();case BranchComplited() when complited != null:
return complited(_that.branch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  error,required TResult Function( List<Branche> branch)  complited,}) {final _that = this;
switch (_that) {
case BranchInitial():
return initial();case BranchError():
return error();case BranchComplited():
return complited(_that.branch);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  error,TResult? Function( List<Branche> branch)?  complited,}) {final _that = this;
switch (_that) {
case BranchInitial() when initial != null:
return initial();case BranchError() when error != null:
return error();case BranchComplited() when complited != null:
return complited(_that.branch);case _:
  return null;

}
}

}

/// @nodoc


class BranchInitial implements BranchState {
  const BranchInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchState.initial()';
}


}




/// @nodoc


class BranchError implements BranchState {
  const BranchError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchState.error()';
}


}




/// @nodoc


class BranchComplited implements BranchState {
  const BranchComplited({required final  List<Branche> branch}): _branch = branch;
  

 final  List<Branche> _branch;
 List<Branche> get branch {
  if (_branch is EqualUnmodifiableListView) return _branch;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_branch);
}


/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchComplitedCopyWith<BranchComplited> get copyWith => _$BranchComplitedCopyWithImpl<BranchComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchComplited&&const DeepCollectionEquality().equals(other._branch, _branch));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_branch));

@override
String toString() {
  return 'BranchState.complited(branch: $branch)';
}


}

/// @nodoc
abstract mixin class $BranchComplitedCopyWith<$Res> implements $BranchStateCopyWith<$Res> {
  factory $BranchComplitedCopyWith(BranchComplited value, $Res Function(BranchComplited) _then) = _$BranchComplitedCopyWithImpl;
@useResult
$Res call({
 List<Branche> branch
});




}
/// @nodoc
class _$BranchComplitedCopyWithImpl<$Res>
    implements $BranchComplitedCopyWith<$Res> {
  _$BranchComplitedCopyWithImpl(this._self, this._then);

  final BranchComplited _self;
  final $Res Function(BranchComplited) _then;

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? branch = null,}) {
  return _then(BranchComplited(
branch: null == branch ? _self._branch : branch // ignore: cast_nullable_to_non_nullable
as List<Branche>,
  ));
}


}

// dart format on
