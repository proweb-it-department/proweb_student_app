// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework_relation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeworkRelationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworkRelationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeworkRelationEvent()';
}


}

/// @nodoc
class $HomeworkRelationEventCopyWith<$Res>  {
$HomeworkRelationEventCopyWith(HomeworkRelationEvent _, $Res Function(HomeworkRelationEvent) __);
}


/// Adds pattern-matching-related methods to [HomeworkRelationEvent].
extension HomeworkRelationEventPatterns on HomeworkRelationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _HomeworkRelationReloadWs value)?  reloadWS,TResult Function( _HomeworkRelationPass value)?  pass,TResult Function( _HomeworkRelationComment value)?  createComment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _HomeworkRelationReloadWs() when reloadWS != null:
return reloadWS(_that);case _HomeworkRelationPass() when pass != null:
return pass(_that);case _HomeworkRelationComment() when createComment != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _HomeworkRelationReloadWs value)  reloadWS,required TResult Function( _HomeworkRelationPass value)  pass,required TResult Function( _HomeworkRelationComment value)  createComment,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _HomeworkRelationReloadWs():
return reloadWS(_that);case _HomeworkRelationPass():
return pass(_that);case _HomeworkRelationComment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _HomeworkRelationReloadWs value)?  reloadWS,TResult? Function( _HomeworkRelationPass value)?  pass,TResult? Function( _HomeworkRelationComment value)?  createComment,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _HomeworkRelationReloadWs() when reloadWS != null:
return reloadWS(_that);case _HomeworkRelationPass() when pass != null:
return pass(_that);case _HomeworkRelationComment() when createComment != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int relationId)?  started,TResult Function( int relationId)?  reloadWS,TResult Function( List<ModelFile> files,  List<String> links,  String? note)?  pass,TResult Function( List<String> files,  String comment)?  createComment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.relationId);case _HomeworkRelationReloadWs() when reloadWS != null:
return reloadWS(_that.relationId);case _HomeworkRelationPass() when pass != null:
return pass(_that.files,_that.links,_that.note);case _HomeworkRelationComment() when createComment != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int relationId)  started,required TResult Function( int relationId)  reloadWS,required TResult Function( List<ModelFile> files,  List<String> links,  String? note)  pass,required TResult Function( List<String> files,  String comment)  createComment,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.relationId);case _HomeworkRelationReloadWs():
return reloadWS(_that.relationId);case _HomeworkRelationPass():
return pass(_that.files,_that.links,_that.note);case _HomeworkRelationComment():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int relationId)?  started,TResult? Function( int relationId)?  reloadWS,TResult? Function( List<ModelFile> files,  List<String> links,  String? note)?  pass,TResult? Function( List<String> files,  String comment)?  createComment,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.relationId);case _HomeworkRelationReloadWs() when reloadWS != null:
return reloadWS(_that.relationId);case _HomeworkRelationPass() when pass != null:
return pass(_that.files,_that.links,_that.note);case _HomeworkRelationComment() when createComment != null:
return createComment(_that.files,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements HomeworkRelationEvent {
  const _Started({required this.relationId});
  

 final  int relationId;

/// Create a copy of HomeworkRelationEvent
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
  return 'HomeworkRelationEvent.started(relationId: $relationId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $HomeworkRelationEventCopyWith<$Res> {
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

/// Create a copy of HomeworkRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? relationId = null,}) {
  return _then(_Started(
relationId: null == relationId ? _self.relationId : relationId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _HomeworkRelationReloadWs implements HomeworkRelationEvent {
  const _HomeworkRelationReloadWs({required this.relationId});
  

 final  int relationId;

/// Create a copy of HomeworkRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkRelationReloadWsCopyWith<_HomeworkRelationReloadWs> get copyWith => __$HomeworkRelationReloadWsCopyWithImpl<_HomeworkRelationReloadWs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkRelationReloadWs&&(identical(other.relationId, relationId) || other.relationId == relationId));
}


@override
int get hashCode => Object.hash(runtimeType,relationId);

@override
String toString() {
  return 'HomeworkRelationEvent.reloadWS(relationId: $relationId)';
}


}

/// @nodoc
abstract mixin class _$HomeworkRelationReloadWsCopyWith<$Res> implements $HomeworkRelationEventCopyWith<$Res> {
  factory _$HomeworkRelationReloadWsCopyWith(_HomeworkRelationReloadWs value, $Res Function(_HomeworkRelationReloadWs) _then) = __$HomeworkRelationReloadWsCopyWithImpl;
@useResult
$Res call({
 int relationId
});




}
/// @nodoc
class __$HomeworkRelationReloadWsCopyWithImpl<$Res>
    implements _$HomeworkRelationReloadWsCopyWith<$Res> {
  __$HomeworkRelationReloadWsCopyWithImpl(this._self, this._then);

  final _HomeworkRelationReloadWs _self;
  final $Res Function(_HomeworkRelationReloadWs) _then;

/// Create a copy of HomeworkRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? relationId = null,}) {
  return _then(_HomeworkRelationReloadWs(
relationId: null == relationId ? _self.relationId : relationId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _HomeworkRelationPass implements HomeworkRelationEvent {
  const _HomeworkRelationPass({required final  List<ModelFile> files, required final  List<String> links, this.note}): _files = files,_links = links;
  

 final  List<ModelFile> _files;
 List<ModelFile> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

 final  List<String> _links;
 List<String> get links {
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_links);
}

 final  String? note;

/// Create a copy of HomeworkRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkRelationPassCopyWith<_HomeworkRelationPass> get copyWith => __$HomeworkRelationPassCopyWithImpl<_HomeworkRelationPass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkRelationPass&&const DeepCollectionEquality().equals(other._files, _files)&&const DeepCollectionEquality().equals(other._links, _links)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_files),const DeepCollectionEquality().hash(_links),note);

@override
String toString() {
  return 'HomeworkRelationEvent.pass(files: $files, links: $links, note: $note)';
}


}

/// @nodoc
abstract mixin class _$HomeworkRelationPassCopyWith<$Res> implements $HomeworkRelationEventCopyWith<$Res> {
  factory _$HomeworkRelationPassCopyWith(_HomeworkRelationPass value, $Res Function(_HomeworkRelationPass) _then) = __$HomeworkRelationPassCopyWithImpl;
@useResult
$Res call({
 List<ModelFile> files, List<String> links, String? note
});




}
/// @nodoc
class __$HomeworkRelationPassCopyWithImpl<$Res>
    implements _$HomeworkRelationPassCopyWith<$Res> {
  __$HomeworkRelationPassCopyWithImpl(this._self, this._then);

  final _HomeworkRelationPass _self;
  final $Res Function(_HomeworkRelationPass) _then;

/// Create a copy of HomeworkRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? files = null,Object? links = null,Object? note = freezed,}) {
  return _then(_HomeworkRelationPass(
files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<ModelFile>,links: null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<String>,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _HomeworkRelationComment implements HomeworkRelationEvent {
  const _HomeworkRelationComment({required final  List<String> files, required this.comment}): _files = files;
  

 final  List<String> _files;
 List<String> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

 final  String comment;

/// Create a copy of HomeworkRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkRelationCommentCopyWith<_HomeworkRelationComment> get copyWith => __$HomeworkRelationCommentCopyWithImpl<_HomeworkRelationComment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkRelationComment&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_files),comment);

@override
String toString() {
  return 'HomeworkRelationEvent.createComment(files: $files, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$HomeworkRelationCommentCopyWith<$Res> implements $HomeworkRelationEventCopyWith<$Res> {
  factory _$HomeworkRelationCommentCopyWith(_HomeworkRelationComment value, $Res Function(_HomeworkRelationComment) _then) = __$HomeworkRelationCommentCopyWithImpl;
@useResult
$Res call({
 List<String> files, String comment
});




}
/// @nodoc
class __$HomeworkRelationCommentCopyWithImpl<$Res>
    implements _$HomeworkRelationCommentCopyWith<$Res> {
  __$HomeworkRelationCommentCopyWithImpl(this._self, this._then);

  final _HomeworkRelationComment _self;
  final $Res Function(_HomeworkRelationComment) _then;

/// Create a copy of HomeworkRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? files = null,Object? comment = null,}) {
  return _then(_HomeworkRelationComment(
files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<String>,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$HomeworkRelationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworkRelationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeworkRelationState()';
}


}

/// @nodoc
class $HomeworkRelationStateCopyWith<$Res>  {
$HomeworkRelationStateCopyWith(HomeworkRelationState _, $Res Function(HomeworkRelationState) __);
}


/// Adds pattern-matching-related methods to [HomeworkRelationState].
extension HomeworkRelationStatePatterns on HomeworkRelationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _HomeworkRelationLoad value)?  load,TResult Function( _HomeworkRelationEror value)?  error,TResult Function( _HomeworkRelationComplite value)?  complite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _HomeworkRelationLoad() when load != null:
return load(_that);case _HomeworkRelationEror() when error != null:
return error(_that);case _HomeworkRelationComplite() when complite != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _HomeworkRelationLoad value)  load,required TResult Function( _HomeworkRelationEror value)  error,required TResult Function( _HomeworkRelationComplite value)  complite,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _HomeworkRelationLoad():
return load(_that);case _HomeworkRelationEror():
return error(_that);case _HomeworkRelationComplite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _HomeworkRelationLoad value)?  load,TResult? Function( _HomeworkRelationEror value)?  error,TResult? Function( _HomeworkRelationComplite value)?  complite,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _HomeworkRelationLoad() when load != null:
return load(_that);case _HomeworkRelationEror() when error != null:
return error(_that);case _HomeworkRelationComplite() when complite != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( HomeworkStudentRelationGroup relation,  HomeworkGroup work,  List<GlobalComment> comments,  bool isLoadComment)?  complite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _HomeworkRelationLoad() when load != null:
return load();case _HomeworkRelationEror() when error != null:
return error();case _HomeworkRelationComplite() when complite != null:
return complite(_that.relation,_that.work,_that.comments,_that.isLoadComment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( HomeworkStudentRelationGroup relation,  HomeworkGroup work,  List<GlobalComment> comments,  bool isLoadComment)  complite,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _HomeworkRelationLoad():
return load();case _HomeworkRelationEror():
return error();case _HomeworkRelationComplite():
return complite(_that.relation,_that.work,_that.comments,_that.isLoadComment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( HomeworkStudentRelationGroup relation,  HomeworkGroup work,  List<GlobalComment> comments,  bool isLoadComment)?  complite,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _HomeworkRelationLoad() when load != null:
return load();case _HomeworkRelationEror() when error != null:
return error();case _HomeworkRelationComplite() when complite != null:
return complite(_that.relation,_that.work,_that.comments,_that.isLoadComment);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeworkRelationState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeworkRelationState.initial()';
}


}




/// @nodoc


class _HomeworkRelationLoad implements HomeworkRelationState {
  const _HomeworkRelationLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkRelationLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeworkRelationState.load()';
}


}




/// @nodoc


class _HomeworkRelationEror implements HomeworkRelationState {
  const _HomeworkRelationEror();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkRelationEror);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeworkRelationState.error()';
}


}




/// @nodoc


class _HomeworkRelationComplite implements HomeworkRelationState {
  const _HomeworkRelationComplite({required this.relation, required this.work, required final  List<GlobalComment> comments, required this.isLoadComment}): _comments = comments;
  

 final  HomeworkStudentRelationGroup relation;
 final  HomeworkGroup work;
 final  List<GlobalComment> _comments;
 List<GlobalComment> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

 final  bool isLoadComment;

/// Create a copy of HomeworkRelationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkRelationCompliteCopyWith<_HomeworkRelationComplite> get copyWith => __$HomeworkRelationCompliteCopyWithImpl<_HomeworkRelationComplite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkRelationComplite&&(identical(other.relation, relation) || other.relation == relation)&&(identical(other.work, work) || other.work == work)&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.isLoadComment, isLoadComment) || other.isLoadComment == isLoadComment));
}


@override
int get hashCode => Object.hash(runtimeType,relation,work,const DeepCollectionEquality().hash(_comments),isLoadComment);

@override
String toString() {
  return 'HomeworkRelationState.complite(relation: $relation, work: $work, comments: $comments, isLoadComment: $isLoadComment)';
}


}

/// @nodoc
abstract mixin class _$HomeworkRelationCompliteCopyWith<$Res> implements $HomeworkRelationStateCopyWith<$Res> {
  factory _$HomeworkRelationCompliteCopyWith(_HomeworkRelationComplite value, $Res Function(_HomeworkRelationComplite) _then) = __$HomeworkRelationCompliteCopyWithImpl;
@useResult
$Res call({
 HomeworkStudentRelationGroup relation, HomeworkGroup work, List<GlobalComment> comments, bool isLoadComment
});


$HomeworkStudentRelationGroupCopyWith<$Res> get relation;$HomeworkGroupCopyWith<$Res> get work;

}
/// @nodoc
class __$HomeworkRelationCompliteCopyWithImpl<$Res>
    implements _$HomeworkRelationCompliteCopyWith<$Res> {
  __$HomeworkRelationCompliteCopyWithImpl(this._self, this._then);

  final _HomeworkRelationComplite _self;
  final $Res Function(_HomeworkRelationComplite) _then;

/// Create a copy of HomeworkRelationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? relation = null,Object? work = null,Object? comments = null,Object? isLoadComment = null,}) {
  return _then(_HomeworkRelationComplite(
relation: null == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as HomeworkStudentRelationGroup,work: null == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as HomeworkGroup,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<GlobalComment>,isLoadComment: null == isLoadComment ? _self.isLoadComment : isLoadComment // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of HomeworkRelationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeworkStudentRelationGroupCopyWith<$Res> get relation {
  
  return $HomeworkStudentRelationGroupCopyWith<$Res>(_self.relation, (value) {
    return _then(_self.copyWith(relation: value));
  });
}/// Create a copy of HomeworkRelationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeworkGroupCopyWith<$Res> get work {
  
  return $HomeworkGroupCopyWith<$Res>(_self.work, (value) {
    return _then(_self.copyWith(work: value));
  });
}
}

// dart format on
