// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feadback_manage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeadbackManageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeadbackManageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeadbackManageEvent()';
}


}

/// @nodoc
class $FeadbackManageEventCopyWith<$Res>  {
$FeadbackManageEventCopyWith(FeadbackManageEvent _, $Res Function(FeadbackManageEvent) __);
}


/// Adds pattern-matching-related methods to [FeadbackManageEvent].
extension FeadbackManageEventPatterns on FeadbackManageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _ReloadWS value)?  reloadWS,TResult Function( _FeadbackManageComment value)?  createComment,TResult Function( _FeadbackManageCloseTicket value)?  closeTicket,TResult Function( _FeadbackManageRejectOffer value)?  rejectOffer,TResult Function( _FeadbackManageScore value)?  score,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ReloadWS() when reloadWS != null:
return reloadWS(_that);case _FeadbackManageComment() when createComment != null:
return createComment(_that);case _FeadbackManageCloseTicket() when closeTicket != null:
return closeTicket(_that);case _FeadbackManageRejectOffer() when rejectOffer != null:
return rejectOffer(_that);case _FeadbackManageScore() when score != null:
return score(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _ReloadWS value)  reloadWS,required TResult Function( _FeadbackManageComment value)  createComment,required TResult Function( _FeadbackManageCloseTicket value)  closeTicket,required TResult Function( _FeadbackManageRejectOffer value)  rejectOffer,required TResult Function( _FeadbackManageScore value)  score,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _ReloadWS():
return reloadWS(_that);case _FeadbackManageComment():
return createComment(_that);case _FeadbackManageCloseTicket():
return closeTicket(_that);case _FeadbackManageRejectOffer():
return rejectOffer(_that);case _FeadbackManageScore():
return score(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _ReloadWS value)?  reloadWS,TResult? Function( _FeadbackManageComment value)?  createComment,TResult? Function( _FeadbackManageCloseTicket value)?  closeTicket,TResult? Function( _FeadbackManageRejectOffer value)?  rejectOffer,TResult? Function( _FeadbackManageScore value)?  score,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ReloadWS() when reloadWS != null:
return reloadWS(_that);case _FeadbackManageComment() when createComment != null:
return createComment(_that);case _FeadbackManageCloseTicket() when closeTicket != null:
return closeTicket(_that);case _FeadbackManageRejectOffer() when rejectOffer != null:
return rejectOffer(_that);case _FeadbackManageScore() when score != null:
return score(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  started,TResult Function( int id)?  reloadWS,TResult Function( List<String> files,  String comment)?  createComment,TResult Function( int? offerId)?  closeTicket,TResult Function( int offerId)?  rejectOffer,TResult Function( int score)?  score,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _ReloadWS() when reloadWS != null:
return reloadWS(_that.id);case _FeadbackManageComment() when createComment != null:
return createComment(_that.files,_that.comment);case _FeadbackManageCloseTicket() when closeTicket != null:
return closeTicket(_that.offerId);case _FeadbackManageRejectOffer() when rejectOffer != null:
return rejectOffer(_that.offerId);case _FeadbackManageScore() when score != null:
return score(_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  started,required TResult Function( int id)  reloadWS,required TResult Function( List<String> files,  String comment)  createComment,required TResult Function( int? offerId)  closeTicket,required TResult Function( int offerId)  rejectOffer,required TResult Function( int score)  score,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.id);case _ReloadWS():
return reloadWS(_that.id);case _FeadbackManageComment():
return createComment(_that.files,_that.comment);case _FeadbackManageCloseTicket():
return closeTicket(_that.offerId);case _FeadbackManageRejectOffer():
return rejectOffer(_that.offerId);case _FeadbackManageScore():
return score(_that.score);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  started,TResult? Function( int id)?  reloadWS,TResult? Function( List<String> files,  String comment)?  createComment,TResult? Function( int? offerId)?  closeTicket,TResult? Function( int offerId)?  rejectOffer,TResult? Function( int score)?  score,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _ReloadWS() when reloadWS != null:
return reloadWS(_that.id);case _FeadbackManageComment() when createComment != null:
return createComment(_that.files,_that.comment);case _FeadbackManageCloseTicket() when closeTicket != null:
return closeTicket(_that.offerId);case _FeadbackManageRejectOffer() when rejectOffer != null:
return rejectOffer(_that.offerId);case _FeadbackManageScore() when score != null:
return score(_that.score);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements FeadbackManageEvent {
  const _Started({required this.id});
  

 final  int id;

/// Create a copy of FeadbackManageEvent
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
  return 'FeadbackManageEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $FeadbackManageEventCopyWith<$Res> {
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

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ReloadWS implements FeadbackManageEvent {
  const _ReloadWS({required this.id});
  

 final  int id;

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReloadWSCopyWith<_ReloadWS> get copyWith => __$ReloadWSCopyWithImpl<_ReloadWS>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReloadWS&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FeadbackManageEvent.reloadWS(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ReloadWSCopyWith<$Res> implements $FeadbackManageEventCopyWith<$Res> {
  factory _$ReloadWSCopyWith(_ReloadWS value, $Res Function(_ReloadWS) _then) = __$ReloadWSCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$ReloadWSCopyWithImpl<$Res>
    implements _$ReloadWSCopyWith<$Res> {
  __$ReloadWSCopyWithImpl(this._self, this._then);

  final _ReloadWS _self;
  final $Res Function(_ReloadWS) _then;

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_ReloadWS(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _FeadbackManageComment implements FeadbackManageEvent {
  const _FeadbackManageComment({required final  List<String> files, required this.comment}): _files = files;
  

 final  List<String> _files;
 List<String> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

 final  String comment;

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeadbackManageCommentCopyWith<_FeadbackManageComment> get copyWith => __$FeadbackManageCommentCopyWithImpl<_FeadbackManageComment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeadbackManageComment&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_files),comment);

@override
String toString() {
  return 'FeadbackManageEvent.createComment(files: $files, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$FeadbackManageCommentCopyWith<$Res> implements $FeadbackManageEventCopyWith<$Res> {
  factory _$FeadbackManageCommentCopyWith(_FeadbackManageComment value, $Res Function(_FeadbackManageComment) _then) = __$FeadbackManageCommentCopyWithImpl;
@useResult
$Res call({
 List<String> files, String comment
});




}
/// @nodoc
class __$FeadbackManageCommentCopyWithImpl<$Res>
    implements _$FeadbackManageCommentCopyWith<$Res> {
  __$FeadbackManageCommentCopyWithImpl(this._self, this._then);

  final _FeadbackManageComment _self;
  final $Res Function(_FeadbackManageComment) _then;

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? files = null,Object? comment = null,}) {
  return _then(_FeadbackManageComment(
files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<String>,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FeadbackManageCloseTicket implements FeadbackManageEvent {
  const _FeadbackManageCloseTicket({this.offerId});
  

 final  int? offerId;

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeadbackManageCloseTicketCopyWith<_FeadbackManageCloseTicket> get copyWith => __$FeadbackManageCloseTicketCopyWithImpl<_FeadbackManageCloseTicket>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeadbackManageCloseTicket&&(identical(other.offerId, offerId) || other.offerId == offerId));
}


@override
int get hashCode => Object.hash(runtimeType,offerId);

@override
String toString() {
  return 'FeadbackManageEvent.closeTicket(offerId: $offerId)';
}


}

/// @nodoc
abstract mixin class _$FeadbackManageCloseTicketCopyWith<$Res> implements $FeadbackManageEventCopyWith<$Res> {
  factory _$FeadbackManageCloseTicketCopyWith(_FeadbackManageCloseTicket value, $Res Function(_FeadbackManageCloseTicket) _then) = __$FeadbackManageCloseTicketCopyWithImpl;
@useResult
$Res call({
 int? offerId
});




}
/// @nodoc
class __$FeadbackManageCloseTicketCopyWithImpl<$Res>
    implements _$FeadbackManageCloseTicketCopyWith<$Res> {
  __$FeadbackManageCloseTicketCopyWithImpl(this._self, this._then);

  final _FeadbackManageCloseTicket _self;
  final $Res Function(_FeadbackManageCloseTicket) _then;

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? offerId = freezed,}) {
  return _then(_FeadbackManageCloseTicket(
offerId: freezed == offerId ? _self.offerId : offerId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _FeadbackManageRejectOffer implements FeadbackManageEvent {
  const _FeadbackManageRejectOffer({required this.offerId});
  

 final  int offerId;

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeadbackManageRejectOfferCopyWith<_FeadbackManageRejectOffer> get copyWith => __$FeadbackManageRejectOfferCopyWithImpl<_FeadbackManageRejectOffer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeadbackManageRejectOffer&&(identical(other.offerId, offerId) || other.offerId == offerId));
}


@override
int get hashCode => Object.hash(runtimeType,offerId);

@override
String toString() {
  return 'FeadbackManageEvent.rejectOffer(offerId: $offerId)';
}


}

/// @nodoc
abstract mixin class _$FeadbackManageRejectOfferCopyWith<$Res> implements $FeadbackManageEventCopyWith<$Res> {
  factory _$FeadbackManageRejectOfferCopyWith(_FeadbackManageRejectOffer value, $Res Function(_FeadbackManageRejectOffer) _then) = __$FeadbackManageRejectOfferCopyWithImpl;
@useResult
$Res call({
 int offerId
});




}
/// @nodoc
class __$FeadbackManageRejectOfferCopyWithImpl<$Res>
    implements _$FeadbackManageRejectOfferCopyWith<$Res> {
  __$FeadbackManageRejectOfferCopyWithImpl(this._self, this._then);

  final _FeadbackManageRejectOffer _self;
  final $Res Function(_FeadbackManageRejectOffer) _then;

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? offerId = null,}) {
  return _then(_FeadbackManageRejectOffer(
offerId: null == offerId ? _self.offerId : offerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _FeadbackManageScore implements FeadbackManageEvent {
  const _FeadbackManageScore({required this.score});
  

 final  int score;

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeadbackManageScoreCopyWith<_FeadbackManageScore> get copyWith => __$FeadbackManageScoreCopyWithImpl<_FeadbackManageScore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeadbackManageScore&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'FeadbackManageEvent.score(score: $score)';
}


}

/// @nodoc
abstract mixin class _$FeadbackManageScoreCopyWith<$Res> implements $FeadbackManageEventCopyWith<$Res> {
  factory _$FeadbackManageScoreCopyWith(_FeadbackManageScore value, $Res Function(_FeadbackManageScore) _then) = __$FeadbackManageScoreCopyWithImpl;
@useResult
$Res call({
 int score
});




}
/// @nodoc
class __$FeadbackManageScoreCopyWithImpl<$Res>
    implements _$FeadbackManageScoreCopyWith<$Res> {
  __$FeadbackManageScoreCopyWithImpl(this._self, this._then);

  final _FeadbackManageScore _self;
  final $Res Function(_FeadbackManageScore) _then;

/// Create a copy of FeadbackManageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? score = null,}) {
  return _then(_FeadbackManageScore(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FeadbackManageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeadbackManageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeadbackManageState()';
}


}

/// @nodoc
class $FeadbackManageStateCopyWith<$Res>  {
$FeadbackManageStateCopyWith(FeadbackManageState _, $Res Function(FeadbackManageState) __);
}


/// Adds pattern-matching-related methods to [FeadbackManageState].
extension FeadbackManageStatePatterns on FeadbackManageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _FeadbackManageError value)?  error,TResult Function( _FeadbackManageComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _FeadbackManageError() when error != null:
return error(_that);case _FeadbackManageComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _FeadbackManageError value)  error,required TResult Function( _FeadbackManageComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _FeadbackManageError():
return error(_that);case _FeadbackManageComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _FeadbackManageError value)?  error,TResult? Function( _FeadbackManageComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _FeadbackManageError() when error != null:
return error(_that);case _FeadbackManageComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  error,TResult Function( Ticket ticket,  List<GlobalComment> comments,  bool loadComments,  bool loadClosed,  bool rejectOffer)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _FeadbackManageError() when error != null:
return error();case _FeadbackManageComplited() when complited != null:
return complited(_that.ticket,_that.comments,_that.loadComments,_that.loadClosed,_that.rejectOffer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  error,required TResult Function( Ticket ticket,  List<GlobalComment> comments,  bool loadComments,  bool loadClosed,  bool rejectOffer)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _FeadbackManageError():
return error();case _FeadbackManageComplited():
return complited(_that.ticket,_that.comments,_that.loadComments,_that.loadClosed,_that.rejectOffer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  error,TResult? Function( Ticket ticket,  List<GlobalComment> comments,  bool loadComments,  bool loadClosed,  bool rejectOffer)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _FeadbackManageError() when error != null:
return error();case _FeadbackManageComplited() when complited != null:
return complited(_that.ticket,_that.comments,_that.loadComments,_that.loadClosed,_that.rejectOffer);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements FeadbackManageState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeadbackManageState.initial()';
}


}




/// @nodoc


class _FeadbackManageError implements FeadbackManageState {
  const _FeadbackManageError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeadbackManageError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeadbackManageState.error()';
}


}




/// @nodoc


class _FeadbackManageComplited implements FeadbackManageState {
  const _FeadbackManageComplited({required this.ticket, required final  List<GlobalComment> comments, required this.loadComments, required this.loadClosed, required this.rejectOffer}): _comments = comments;
  

 final  Ticket ticket;
 final  List<GlobalComment> _comments;
 List<GlobalComment> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

 final  bool loadComments;
 final  bool loadClosed;
 final  bool rejectOffer;

/// Create a copy of FeadbackManageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeadbackManageComplitedCopyWith<_FeadbackManageComplited> get copyWith => __$FeadbackManageComplitedCopyWithImpl<_FeadbackManageComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeadbackManageComplited&&(identical(other.ticket, ticket) || other.ticket == ticket)&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.loadComments, loadComments) || other.loadComments == loadComments)&&(identical(other.loadClosed, loadClosed) || other.loadClosed == loadClosed)&&(identical(other.rejectOffer, rejectOffer) || other.rejectOffer == rejectOffer));
}


@override
int get hashCode => Object.hash(runtimeType,ticket,const DeepCollectionEquality().hash(_comments),loadComments,loadClosed,rejectOffer);

@override
String toString() {
  return 'FeadbackManageState.complited(ticket: $ticket, comments: $comments, loadComments: $loadComments, loadClosed: $loadClosed, rejectOffer: $rejectOffer)';
}


}

/// @nodoc
abstract mixin class _$FeadbackManageComplitedCopyWith<$Res> implements $FeadbackManageStateCopyWith<$Res> {
  factory _$FeadbackManageComplitedCopyWith(_FeadbackManageComplited value, $Res Function(_FeadbackManageComplited) _then) = __$FeadbackManageComplitedCopyWithImpl;
@useResult
$Res call({
 Ticket ticket, List<GlobalComment> comments, bool loadComments, bool loadClosed, bool rejectOffer
});


$TicketCopyWith<$Res> get ticket;

}
/// @nodoc
class __$FeadbackManageComplitedCopyWithImpl<$Res>
    implements _$FeadbackManageComplitedCopyWith<$Res> {
  __$FeadbackManageComplitedCopyWithImpl(this._self, this._then);

  final _FeadbackManageComplited _self;
  final $Res Function(_FeadbackManageComplited) _then;

/// Create a copy of FeadbackManageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ticket = null,Object? comments = null,Object? loadComments = null,Object? loadClosed = null,Object? rejectOffer = null,}) {
  return _then(_FeadbackManageComplited(
ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as Ticket,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<GlobalComment>,loadComments: null == loadComments ? _self.loadComments : loadComments // ignore: cast_nullable_to_non_nullable
as bool,loadClosed: null == loadClosed ? _self.loadClosed : loadClosed // ignore: cast_nullable_to_non_nullable
as bool,rejectOffer: null == rejectOffer ? _self.rejectOffer : rejectOffer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of FeadbackManageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketCopyWith<$Res> get ticket {
  
  return $TicketCopyWith<$Res>(_self.ticket, (value) {
    return _then(_self.copyWith(ticket: value));
  });
}
}

// dart format on
