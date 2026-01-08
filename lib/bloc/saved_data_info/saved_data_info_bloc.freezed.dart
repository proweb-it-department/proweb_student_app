// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_data_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedDataInfoEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedDataInfoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavedDataInfoEvent()';
}


}

/// @nodoc
class $SavedDataInfoEventCopyWith<$Res>  {
$SavedDataInfoEventCopyWith(SavedDataInfoEvent _, $Res Function(SavedDataInfoEvent) __);
}


/// Adds pattern-matching-related methods to [SavedDataInfoEvent].
extension SavedDataInfoEventPatterns on SavedDataInfoEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _DeleteEvent value)?  delete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DeleteEvent() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _DeleteEvent value)  delete,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _DeleteEvent():
return delete(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _DeleteEvent value)?  delete,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DeleteEvent() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String type)?  delete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DeleteEvent() when delete != null:
return delete(_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String type)  delete,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _DeleteEvent():
return delete(_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String type)?  delete,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DeleteEvent() when delete != null:
return delete(_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SavedDataInfoEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavedDataInfoEvent.started()';
}


}




/// @nodoc


class _DeleteEvent implements SavedDataInfoEvent {
  const _DeleteEvent(this.type);
  

 final  String type;

/// Create a copy of SavedDataInfoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteEventCopyWith<_DeleteEvent> get copyWith => __$DeleteEventCopyWithImpl<_DeleteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteEvent&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'SavedDataInfoEvent.delete(type: $type)';
}


}

/// @nodoc
abstract mixin class _$DeleteEventCopyWith<$Res> implements $SavedDataInfoEventCopyWith<$Res> {
  factory _$DeleteEventCopyWith(_DeleteEvent value, $Res Function(_DeleteEvent) _then) = __$DeleteEventCopyWithImpl;
@useResult
$Res call({
 String type
});




}
/// @nodoc
class __$DeleteEventCopyWithImpl<$Res>
    implements _$DeleteEventCopyWith<$Res> {
  __$DeleteEventCopyWithImpl(this._self, this._then);

  final _DeleteEvent _self;
  final $Res Function(_DeleteEvent) _then;

/// Create a copy of SavedDataInfoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_DeleteEvent(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SavedDataInfoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedDataInfoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavedDataInfoState()';
}


}

/// @nodoc
class $SavedDataInfoStateCopyWith<$Res>  {
$SavedDataInfoStateCopyWith(SavedDataInfoState _, $Res Function(SavedDataInfoState) __);
}


/// Adds pattern-matching-related methods to [SavedDataInfoState].
extension SavedDataInfoStatePatterns on SavedDataInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SavedDataInfoInition value)?  initial,TResult Function( SavedDataInfoComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SavedDataInfoInition() when initial != null:
return initial(_that);case SavedDataInfoComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SavedDataInfoInition value)  initial,required TResult Function( SavedDataInfoComplited value)  complited,}){
final _that = this;
switch (_that) {
case SavedDataInfoInition():
return initial(_that);case SavedDataInfoComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SavedDataInfoInition value)?  initial,TResult? Function( SavedDataInfoComplited value)?  complited,}){
final _that = this;
switch (_that) {
case SavedDataInfoInition() when initial != null:
return initial(_that);case SavedDataInfoComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( SavedDataInfoModel data)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SavedDataInfoInition() when initial != null:
return initial();case SavedDataInfoComplited() when complited != null:
return complited(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( SavedDataInfoModel data)  complited,}) {final _that = this;
switch (_that) {
case SavedDataInfoInition():
return initial();case SavedDataInfoComplited():
return complited(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( SavedDataInfoModel data)?  complited,}) {final _that = this;
switch (_that) {
case SavedDataInfoInition() when initial != null:
return initial();case SavedDataInfoComplited() when complited != null:
return complited(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class SavedDataInfoInition implements SavedDataInfoState {
  const SavedDataInfoInition();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedDataInfoInition);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavedDataInfoState.initial()';
}


}




/// @nodoc


class SavedDataInfoComplited implements SavedDataInfoState {
  const SavedDataInfoComplited({required this.data});
  

 final  SavedDataInfoModel data;

/// Create a copy of SavedDataInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedDataInfoComplitedCopyWith<SavedDataInfoComplited> get copyWith => _$SavedDataInfoComplitedCopyWithImpl<SavedDataInfoComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedDataInfoComplited&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'SavedDataInfoState.complited(data: $data)';
}


}

/// @nodoc
abstract mixin class $SavedDataInfoComplitedCopyWith<$Res> implements $SavedDataInfoStateCopyWith<$Res> {
  factory $SavedDataInfoComplitedCopyWith(SavedDataInfoComplited value, $Res Function(SavedDataInfoComplited) _then) = _$SavedDataInfoComplitedCopyWithImpl;
@useResult
$Res call({
 SavedDataInfoModel data
});


$SavedDataInfoModelCopyWith<$Res> get data;

}
/// @nodoc
class _$SavedDataInfoComplitedCopyWithImpl<$Res>
    implements $SavedDataInfoComplitedCopyWith<$Res> {
  _$SavedDataInfoComplitedCopyWithImpl(this._self, this._then);

  final SavedDataInfoComplited _self;
  final $Res Function(SavedDataInfoComplited) _then;

/// Create a copy of SavedDataInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(SavedDataInfoComplited(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SavedDataInfoModel,
  ));
}

/// Create a copy of SavedDataInfoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SavedDataInfoModelCopyWith<$Res> get data {
  
  return $SavedDataInfoModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
