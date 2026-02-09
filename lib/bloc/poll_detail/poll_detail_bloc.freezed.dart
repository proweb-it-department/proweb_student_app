// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PollDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PollDetailEvent()';
}


}

/// @nodoc
class $PollDetailEventCopyWith<$Res>  {
$PollDetailEventCopyWith(PollDetailEvent _, $Res Function(PollDetailEvent) __);
}


/// Adds pattern-matching-related methods to [PollDetailEvent].
extension PollDetailEventPatterns on PollDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Send value)?  send,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Send() when send != null:
return send(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Send value)  send,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Send():
return send(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Send value)?  send,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Send() when send != null:
return send(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  started,TResult Function( String form)?  send,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _Send() when send != null:
return send(_that.form);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  started,required TResult Function( String form)  send,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.id);case _Send():
return send(_that.form);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  started,TResult? Function( String form)?  send,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _Send() when send != null:
return send(_that.form);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements PollDetailEvent {
  const _Started({required this.id});
  

 final  int id;

/// Create a copy of PollDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'PollDetailEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $PollDetailEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
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

/// Create a copy of PollDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Send implements PollDetailEvent {
  const _Send({required this.form});
  

 final  String form;

/// Create a copy of PollDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendCopyWith<_Send> get copyWith => __$SendCopyWithImpl<_Send>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Send&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'PollDetailEvent.send(form: $form)';
}


}

/// @nodoc
abstract mixin class _$SendCopyWith<$Res> implements $PollDetailEventCopyWith<$Res> {
  factory _$SendCopyWith(_Send value, $Res Function(_Send) _then) = __$SendCopyWithImpl;
@useResult
$Res call({
 String form
});




}
/// @nodoc
class __$SendCopyWithImpl<$Res>
    implements _$SendCopyWith<$Res> {
  __$SendCopyWithImpl(this._self, this._then);

  final _Send _self;
  final $Res Function(_Send) _then;

/// Create a copy of PollDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(_Send(
form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PollDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PollDetailState()';
}


}

/// @nodoc
class $PollDetailStateCopyWith<$Res>  {
$PollDetailStateCopyWith(PollDetailState _, $Res Function(PollDetailState) __);
}


/// Adds pattern-matching-related methods to [PollDetailState].
extension PollDetailStatePatterns on PollDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PollDetailInitial value)?  initial,TResult Function( PollDetailComplited value)?  complited,TResult Function( PollDetailError value)?  error,TResult Function( PollDetailSender value)?  sender,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PollDetailInitial() when initial != null:
return initial(_that);case PollDetailComplited() when complited != null:
return complited(_that);case PollDetailError() when error != null:
return error(_that);case PollDetailSender() when sender != null:
return sender(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PollDetailInitial value)  initial,required TResult Function( PollDetailComplited value)  complited,required TResult Function( PollDetailError value)  error,required TResult Function( PollDetailSender value)  sender,}){
final _that = this;
switch (_that) {
case PollDetailInitial():
return initial(_that);case PollDetailComplited():
return complited(_that);case PollDetailError():
return error(_that);case PollDetailSender():
return sender(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PollDetailInitial value)?  initial,TResult? Function( PollDetailComplited value)?  complited,TResult? Function( PollDetailError value)?  error,TResult? Function( PollDetailSender value)?  sender,}){
final _that = this;
switch (_that) {
case PollDetailInitial() when initial != null:
return initial(_that);case PollDetailComplited() when complited != null:
return complited(_that);case PollDetailError() when error != null:
return error(_that);case PollDetailSender() when sender != null:
return sender(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( PollDetail poll)?  complited,TResult Function()?  error,TResult Function( bool send)?  sender,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PollDetailInitial() when initial != null:
return initial();case PollDetailComplited() when complited != null:
return complited(_that.poll);case PollDetailError() when error != null:
return error();case PollDetailSender() when sender != null:
return sender(_that.send);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( PollDetail poll)  complited,required TResult Function()  error,required TResult Function( bool send)  sender,}) {final _that = this;
switch (_that) {
case PollDetailInitial():
return initial();case PollDetailComplited():
return complited(_that.poll);case PollDetailError():
return error();case PollDetailSender():
return sender(_that.send);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( PollDetail poll)?  complited,TResult? Function()?  error,TResult? Function( bool send)?  sender,}) {final _that = this;
switch (_that) {
case PollDetailInitial() when initial != null:
return initial();case PollDetailComplited() when complited != null:
return complited(_that.poll);case PollDetailError() when error != null:
return error();case PollDetailSender() when sender != null:
return sender(_that.send);case _:
  return null;

}
}

}

/// @nodoc


class PollDetailInitial implements PollDetailState {
  const PollDetailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollDetailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PollDetailState.initial()';
}


}




/// @nodoc


class PollDetailComplited implements PollDetailState {
  const PollDetailComplited({required this.poll});
  

 final  PollDetail poll;

/// Create a copy of PollDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollDetailComplitedCopyWith<PollDetailComplited> get copyWith => _$PollDetailComplitedCopyWithImpl<PollDetailComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollDetailComplited&&(identical(other.poll, poll) || other.poll == poll));
}


@override
int get hashCode => Object.hash(runtimeType,poll);

@override
String toString() {
  return 'PollDetailState.complited(poll: $poll)';
}


}

/// @nodoc
abstract mixin class $PollDetailComplitedCopyWith<$Res> implements $PollDetailStateCopyWith<$Res> {
  factory $PollDetailComplitedCopyWith(PollDetailComplited value, $Res Function(PollDetailComplited) _then) = _$PollDetailComplitedCopyWithImpl;
@useResult
$Res call({
 PollDetail poll
});


$PollDetailCopyWith<$Res> get poll;

}
/// @nodoc
class _$PollDetailComplitedCopyWithImpl<$Res>
    implements $PollDetailComplitedCopyWith<$Res> {
  _$PollDetailComplitedCopyWithImpl(this._self, this._then);

  final PollDetailComplited _self;
  final $Res Function(PollDetailComplited) _then;

/// Create a copy of PollDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? poll = null,}) {
  return _then(PollDetailComplited(
poll: null == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as PollDetail,
  ));
}

/// Create a copy of PollDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollDetailCopyWith<$Res> get poll {
  
  return $PollDetailCopyWith<$Res>(_self.poll, (value) {
    return _then(_self.copyWith(poll: value));
  });
}
}

/// @nodoc


class PollDetailError implements PollDetailState {
  const PollDetailError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollDetailError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PollDetailState.error()';
}


}




/// @nodoc


class PollDetailSender implements PollDetailState {
  const PollDetailSender({required this.send});
  

 final  bool send;

/// Create a copy of PollDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollDetailSenderCopyWith<PollDetailSender> get copyWith => _$PollDetailSenderCopyWithImpl<PollDetailSender>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollDetailSender&&(identical(other.send, send) || other.send == send));
}


@override
int get hashCode => Object.hash(runtimeType,send);

@override
String toString() {
  return 'PollDetailState.sender(send: $send)';
}


}

/// @nodoc
abstract mixin class $PollDetailSenderCopyWith<$Res> implements $PollDetailStateCopyWith<$Res> {
  factory $PollDetailSenderCopyWith(PollDetailSender value, $Res Function(PollDetailSender) _then) = _$PollDetailSenderCopyWithImpl;
@useResult
$Res call({
 bool send
});




}
/// @nodoc
class _$PollDetailSenderCopyWithImpl<$Res>
    implements $PollDetailSenderCopyWith<$Res> {
  _$PollDetailSenderCopyWithImpl(this._self, this._then);

  final PollDetailSender _self;
  final $Res Function(PollDetailSender) _then;

/// Create a copy of PollDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? send = null,}) {
  return _then(PollDetailSender(
send: null == send ? _self.send : send // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
