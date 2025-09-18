// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_relation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TestRelationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestRelationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TestRelationEvent()';
}


}

/// @nodoc
class $TestRelationEventCopyWith<$Res>  {
$TestRelationEventCopyWith(TestRelationEvent _, $Res Function(TestRelationEvent) __);
}


/// Adds pattern-matching-related methods to [TestRelationEvent].
extension TestRelationEventPatterns on TestRelationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _TestRelationSendReloadWs value)?  reloadWS,TResult Function( _TestRelationSendAnswer value)?  sendAnswer,TResult Function( _TestRelationComment value)?  createComment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _TestRelationSendReloadWs() when reloadWS != null:
return reloadWS(_that);case _TestRelationSendAnswer() when sendAnswer != null:
return sendAnswer(_that);case _TestRelationComment() when createComment != null:
return createComment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _TestRelationSendReloadWs value)  reloadWS,required TResult Function( _TestRelationSendAnswer value)  sendAnswer,required TResult Function( _TestRelationComment value)  createComment,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _TestRelationSendReloadWs():
return reloadWS(_that);case _TestRelationSendAnswer():
return sendAnswer(_that);case _TestRelationComment():
return createComment(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _TestRelationSendReloadWs value)?  reloadWS,TResult? Function( _TestRelationSendAnswer value)?  sendAnswer,TResult? Function( _TestRelationComment value)?  createComment,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _TestRelationSendReloadWs() when reloadWS != null:
return reloadWS(_that);case _TestRelationSendAnswer() when sendAnswer != null:
return sendAnswer(_that);case _TestRelationComment() when createComment != null:
return createComment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int relationId)?  started,TResult Function( int relationId)?  reloadWS,TResult Function( double totlaScore,  List<Map<String, dynamic>> answers,  int relationId)?  sendAnswer,TResult Function( List<String> files,  String comment)?  createComment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.relationId);case _TestRelationSendReloadWs() when reloadWS != null:
return reloadWS(_that.relationId);case _TestRelationSendAnswer() when sendAnswer != null:
return sendAnswer(_that.totlaScore,_that.answers,_that.relationId);case _TestRelationComment() when createComment != null:
return createComment(_that.files,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int relationId)  started,required TResult Function( int relationId)  reloadWS,required TResult Function( double totlaScore,  List<Map<String, dynamic>> answers,  int relationId)  sendAnswer,required TResult Function( List<String> files,  String comment)  createComment,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.relationId);case _TestRelationSendReloadWs():
return reloadWS(_that.relationId);case _TestRelationSendAnswer():
return sendAnswer(_that.totlaScore,_that.answers,_that.relationId);case _TestRelationComment():
return createComment(_that.files,_that.comment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int relationId)?  started,TResult? Function( int relationId)?  reloadWS,TResult? Function( double totlaScore,  List<Map<String, dynamic>> answers,  int relationId)?  sendAnswer,TResult? Function( List<String> files,  String comment)?  createComment,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.relationId);case _TestRelationSendReloadWs() when reloadWS != null:
return reloadWS(_that.relationId);case _TestRelationSendAnswer() when sendAnswer != null:
return sendAnswer(_that.totlaScore,_that.answers,_that.relationId);case _TestRelationComment() when createComment != null:
return createComment(_that.files,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements TestRelationEvent {
  const _Started({required this.relationId});
  

 final  int relationId;

/// Create a copy of TestRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.relationId, relationId) || other.relationId == relationId));
}


@override
int get hashCode => Object.hash(runtimeType,relationId);

@override
String toString() {
  return 'TestRelationEvent.started(relationId: $relationId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $TestRelationEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 int relationId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of TestRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? relationId = null,}) {
  return _then(_Started(
relationId: null == relationId ? _self.relationId : relationId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _TestRelationSendReloadWs implements TestRelationEvent {
  const _TestRelationSendReloadWs({required this.relationId});
  

 final  int relationId;

/// Create a copy of TestRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestRelationSendReloadWsCopyWith<_TestRelationSendReloadWs> get copyWith => __$TestRelationSendReloadWsCopyWithImpl<_TestRelationSendReloadWs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestRelationSendReloadWs&&(identical(other.relationId, relationId) || other.relationId == relationId));
}


@override
int get hashCode => Object.hash(runtimeType,relationId);

@override
String toString() {
  return 'TestRelationEvent.reloadWS(relationId: $relationId)';
}


}

/// @nodoc
abstract mixin class _$TestRelationSendReloadWsCopyWith<$Res> implements $TestRelationEventCopyWith<$Res> {
  factory _$TestRelationSendReloadWsCopyWith(_TestRelationSendReloadWs value, $Res Function(_TestRelationSendReloadWs) _then) = __$TestRelationSendReloadWsCopyWithImpl;
@useResult
$Res call({
 int relationId
});




}
/// @nodoc
class __$TestRelationSendReloadWsCopyWithImpl<$Res>
    implements _$TestRelationSendReloadWsCopyWith<$Res> {
  __$TestRelationSendReloadWsCopyWithImpl(this._self, this._then);

  final _TestRelationSendReloadWs _self;
  final $Res Function(_TestRelationSendReloadWs) _then;

/// Create a copy of TestRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? relationId = null,}) {
  return _then(_TestRelationSendReloadWs(
relationId: null == relationId ? _self.relationId : relationId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _TestRelationSendAnswer implements TestRelationEvent {
  const _TestRelationSendAnswer({required this.totlaScore, required final  List<Map<String, dynamic>> answers, required this.relationId}): _answers = answers;
  

 final  double totlaScore;
 final  List<Map<String, dynamic>> _answers;
 List<Map<String, dynamic>> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}

 final  int relationId;

/// Create a copy of TestRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestRelationSendAnswerCopyWith<_TestRelationSendAnswer> get copyWith => __$TestRelationSendAnswerCopyWithImpl<_TestRelationSendAnswer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestRelationSendAnswer&&(identical(other.totlaScore, totlaScore) || other.totlaScore == totlaScore)&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.relationId, relationId) || other.relationId == relationId));
}


@override
int get hashCode => Object.hash(runtimeType,totlaScore,const DeepCollectionEquality().hash(_answers),relationId);

@override
String toString() {
  return 'TestRelationEvent.sendAnswer(totlaScore: $totlaScore, answers: $answers, relationId: $relationId)';
}


}

/// @nodoc
abstract mixin class _$TestRelationSendAnswerCopyWith<$Res> implements $TestRelationEventCopyWith<$Res> {
  factory _$TestRelationSendAnswerCopyWith(_TestRelationSendAnswer value, $Res Function(_TestRelationSendAnswer) _then) = __$TestRelationSendAnswerCopyWithImpl;
@useResult
$Res call({
 double totlaScore, List<Map<String, dynamic>> answers, int relationId
});




}
/// @nodoc
class __$TestRelationSendAnswerCopyWithImpl<$Res>
    implements _$TestRelationSendAnswerCopyWith<$Res> {
  __$TestRelationSendAnswerCopyWithImpl(this._self, this._then);

  final _TestRelationSendAnswer _self;
  final $Res Function(_TestRelationSendAnswer) _then;

/// Create a copy of TestRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? totlaScore = null,Object? answers = null,Object? relationId = null,}) {
  return _then(_TestRelationSendAnswer(
totlaScore: null == totlaScore ? _self.totlaScore : totlaScore // ignore: cast_nullable_to_non_nullable
as double,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,relationId: null == relationId ? _self.relationId : relationId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _TestRelationComment implements TestRelationEvent {
  const _TestRelationComment({required final  List<String> files, required this.comment}): _files = files;
  

 final  List<String> _files;
 List<String> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

 final  String comment;

/// Create a copy of TestRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestRelationCommentCopyWith<_TestRelationComment> get copyWith => __$TestRelationCommentCopyWithImpl<_TestRelationComment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestRelationComment&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_files),comment);

@override
String toString() {
  return 'TestRelationEvent.createComment(files: $files, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$TestRelationCommentCopyWith<$Res> implements $TestRelationEventCopyWith<$Res> {
  factory _$TestRelationCommentCopyWith(_TestRelationComment value, $Res Function(_TestRelationComment) _then) = __$TestRelationCommentCopyWithImpl;
@useResult
$Res call({
 List<String> files, String comment
});




}
/// @nodoc
class __$TestRelationCommentCopyWithImpl<$Res>
    implements _$TestRelationCommentCopyWith<$Res> {
  __$TestRelationCommentCopyWithImpl(this._self, this._then);

  final _TestRelationComment _self;
  final $Res Function(_TestRelationComment) _then;

/// Create a copy of TestRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? files = null,Object? comment = null,}) {
  return _then(_TestRelationComment(
files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<String>,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TestRelationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestRelationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TestRelationState()';
}


}

/// @nodoc
class $TestRelationStateCopyWith<$Res>  {
$TestRelationStateCopyWith(TestRelationState _, $Res Function(TestRelationState) __);
}


/// Adds pattern-matching-related methods to [TestRelationState].
extension TestRelationStatePatterns on TestRelationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _TestRelationLoad value)?  load,TResult Function( _TestRelationError value)?  error,TResult Function( _TestRelationComplited value)?  complite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _TestRelationLoad() when load != null:
return load(_that);case _TestRelationError() when error != null:
return error(_that);case _TestRelationComplited() when complite != null:
return complite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _TestRelationLoad value)  load,required TResult Function( _TestRelationError value)  error,required TResult Function( _TestRelationComplited value)  complite,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _TestRelationLoad():
return load(_that);case _TestRelationError():
return error(_that);case _TestRelationComplited():
return complite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _TestRelationLoad value)?  load,TResult? Function( _TestRelationError value)?  error,TResult? Function( _TestRelationComplited value)?  complite,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _TestRelationLoad() when load != null:
return load(_that);case _TestRelationError() when error != null:
return error(_that);case _TestRelationComplited() when complite != null:
return complite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( TestStudentRelation relation,  List<GlobalComment> comments,  bool isLoadComment,  bool isLoadAnswers)?  complite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _TestRelationLoad() when load != null:
return load();case _TestRelationError() when error != null:
return error();case _TestRelationComplited() when complite != null:
return complite(_that.relation,_that.comments,_that.isLoadComment,_that.isLoadAnswers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( TestStudentRelation relation,  List<GlobalComment> comments,  bool isLoadComment,  bool isLoadAnswers)  complite,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _TestRelationLoad():
return load();case _TestRelationError():
return error();case _TestRelationComplited():
return complite(_that.relation,_that.comments,_that.isLoadComment,_that.isLoadAnswers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( TestStudentRelation relation,  List<GlobalComment> comments,  bool isLoadComment,  bool isLoadAnswers)?  complite,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _TestRelationLoad() when load != null:
return load();case _TestRelationError() when error != null:
return error();case _TestRelationComplited() when complite != null:
return complite(_that.relation,_that.comments,_that.isLoadComment,_that.isLoadAnswers);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TestRelationState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TestRelationState.initial()';
}


}




/// @nodoc


class _TestRelationLoad implements TestRelationState {
  const _TestRelationLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestRelationLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TestRelationState.load()';
}


}




/// @nodoc


class _TestRelationError implements TestRelationState {
  const _TestRelationError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestRelationError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TestRelationState.error()';
}


}




/// @nodoc


class _TestRelationComplited implements TestRelationState {
  const _TestRelationComplited({required this.relation, required final  List<GlobalComment> comments, required this.isLoadComment, required this.isLoadAnswers}): _comments = comments;
  

 final  TestStudentRelation relation;
 final  List<GlobalComment> _comments;
 List<GlobalComment> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

 final  bool isLoadComment;
 final  bool isLoadAnswers;

/// Create a copy of TestRelationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestRelationComplitedCopyWith<_TestRelationComplited> get copyWith => __$TestRelationComplitedCopyWithImpl<_TestRelationComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestRelationComplited&&(identical(other.relation, relation) || other.relation == relation)&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.isLoadComment, isLoadComment) || other.isLoadComment == isLoadComment)&&(identical(other.isLoadAnswers, isLoadAnswers) || other.isLoadAnswers == isLoadAnswers));
}


@override
int get hashCode => Object.hash(runtimeType,relation,const DeepCollectionEquality().hash(_comments),isLoadComment,isLoadAnswers);

@override
String toString() {
  return 'TestRelationState.complite(relation: $relation, comments: $comments, isLoadComment: $isLoadComment, isLoadAnswers: $isLoadAnswers)';
}


}

/// @nodoc
abstract mixin class _$TestRelationComplitedCopyWith<$Res> implements $TestRelationStateCopyWith<$Res> {
  factory _$TestRelationComplitedCopyWith(_TestRelationComplited value, $Res Function(_TestRelationComplited) _then) = __$TestRelationComplitedCopyWithImpl;
@useResult
$Res call({
 TestStudentRelation relation, List<GlobalComment> comments, bool isLoadComment, bool isLoadAnswers
});


$TestStudentRelationCopyWith<$Res> get relation;

}
/// @nodoc
class __$TestRelationComplitedCopyWithImpl<$Res>
    implements _$TestRelationComplitedCopyWith<$Res> {
  __$TestRelationComplitedCopyWithImpl(this._self, this._then);

  final _TestRelationComplited _self;
  final $Res Function(_TestRelationComplited) _then;

/// Create a copy of TestRelationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? relation = null,Object? comments = null,Object? isLoadComment = null,Object? isLoadAnswers = null,}) {
  return _then(_TestRelationComplited(
relation: null == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as TestStudentRelation,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<GlobalComment>,isLoadComment: null == isLoadComment ? _self.isLoadComment : isLoadComment // ignore: cast_nullable_to_non_nullable
as bool,isLoadAnswers: null == isLoadAnswers ? _self.isLoadAnswers : isLoadAnswers // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of TestRelationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TestStudentRelationCopyWith<$Res> get relation {
  
  return $TestStudentRelationCopyWith<$Res>(_self.relation, (value) {
    return _then(_self.copyWith(relation: value));
  });
}
}

// dart format on
