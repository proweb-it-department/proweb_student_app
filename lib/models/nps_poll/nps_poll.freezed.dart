// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nps_poll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NpsPoll implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'poll') Poll? get poll;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'student_lesson_relation_id') int? get studentLessonRelationId;@JsonKey(name: 'completed') bool? get completed;@JsonKey(name: 'answers_date') String? get answersDate;
/// Create a copy of NpsPoll
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NpsPollCopyWith<NpsPoll> get copyWith => _$NpsPollCopyWithImpl<NpsPoll>(this as NpsPoll, _$identity);

  /// Serializes this NpsPoll to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NpsPoll'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('poll', poll))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('studentLessonRelationId', studentLessonRelationId))..add(DiagnosticsProperty('completed', completed))..add(DiagnosticsProperty('answersDate', answersDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NpsPoll&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.id, id) || other.id == id)&&(identical(other.studentLessonRelationId, studentLessonRelationId) || other.studentLessonRelationId == studentLessonRelationId)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.answersDate, answersDate) || other.answersDate == answersDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,poll,id,studentLessonRelationId,completed,answersDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NpsPoll(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, poll: $poll, id: $id, studentLessonRelationId: $studentLessonRelationId, completed: $completed, answersDate: $answersDate)';
}


}

/// @nodoc
abstract mixin class $NpsPollCopyWith<$Res>  {
  factory $NpsPollCopyWith(NpsPoll value, $Res Function(NpsPoll) _then) = _$NpsPollCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'poll') Poll? poll,@JsonKey(name: 'id') int? id,@JsonKey(name: 'student_lesson_relation_id') int? studentLessonRelationId,@JsonKey(name: 'completed') bool? completed,@JsonKey(name: 'answers_date') String? answersDate
});


$PollCopyWith<$Res>? get poll;

}
/// @nodoc
class _$NpsPollCopyWithImpl<$Res>
    implements $NpsPollCopyWith<$Res> {
  _$NpsPollCopyWithImpl(this._self, this._then);

  final NpsPoll _self;
  final $Res Function(NpsPoll) _then;

/// Create a copy of NpsPoll
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? poll = freezed,Object? id = freezed,Object? studentLessonRelationId = freezed,Object? completed = freezed,Object? answersDate = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,poll: freezed == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as Poll?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,studentLessonRelationId: freezed == studentLessonRelationId ? _self.studentLessonRelationId : studentLessonRelationId // ignore: cast_nullable_to_non_nullable
as int?,completed: freezed == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool?,answersDate: freezed == answersDate ? _self.answersDate : answersDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of NpsPoll
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollCopyWith<$Res>? get poll {
    if (_self.poll == null) {
    return null;
  }

  return $PollCopyWith<$Res>(_self.poll!, (value) {
    return _then(_self.copyWith(poll: value));
  });
}
}


/// Adds pattern-matching-related methods to [NpsPoll].
extension NpsPollPatterns on NpsPoll {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NpsPoll value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NpsPoll() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NpsPoll value)  $default,){
final _that = this;
switch (_that) {
case _NpsPoll():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NpsPoll value)?  $default,){
final _that = this;
switch (_that) {
case _NpsPoll() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'poll')  Poll? poll, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_lesson_relation_id')  int? studentLessonRelationId, @JsonKey(name: 'completed')  bool? completed, @JsonKey(name: 'answers_date')  String? answersDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NpsPoll() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.poll,_that.id,_that.studentLessonRelationId,_that.completed,_that.answersDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'poll')  Poll? poll, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_lesson_relation_id')  int? studentLessonRelationId, @JsonKey(name: 'completed')  bool? completed, @JsonKey(name: 'answers_date')  String? answersDate)  $default,) {final _that = this;
switch (_that) {
case _NpsPoll():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.poll,_that.id,_that.studentLessonRelationId,_that.completed,_that.answersDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'poll')  Poll? poll, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_lesson_relation_id')  int? studentLessonRelationId, @JsonKey(name: 'completed')  bool? completed, @JsonKey(name: 'answers_date')  String? answersDate)?  $default,) {final _that = this;
switch (_that) {
case _NpsPoll() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.poll,_that.id,_that.studentLessonRelationId,_that.completed,_that.answersDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NpsPoll with DiagnosticableTreeMixin implements NpsPoll {
  const _NpsPoll({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'poll') this.poll, @JsonKey(name: 'id') this.id, @JsonKey(name: 'student_lesson_relation_id') this.studentLessonRelationId, @JsonKey(name: 'completed') this.completed, @JsonKey(name: 'answers_date') this.answersDate});
  factory _NpsPoll.fromJson(Map<String, dynamic> json) => _$NpsPollFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'poll') final  Poll? poll;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'student_lesson_relation_id') final  int? studentLessonRelationId;
@override@JsonKey(name: 'completed') final  bool? completed;
@override@JsonKey(name: 'answers_date') final  String? answersDate;

/// Create a copy of NpsPoll
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NpsPollCopyWith<_NpsPoll> get copyWith => __$NpsPollCopyWithImpl<_NpsPoll>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NpsPollToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NpsPoll'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('poll', poll))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('studentLessonRelationId', studentLessonRelationId))..add(DiagnosticsProperty('completed', completed))..add(DiagnosticsProperty('answersDate', answersDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NpsPoll&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.id, id) || other.id == id)&&(identical(other.studentLessonRelationId, studentLessonRelationId) || other.studentLessonRelationId == studentLessonRelationId)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.answersDate, answersDate) || other.answersDate == answersDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,poll,id,studentLessonRelationId,completed,answersDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NpsPoll(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, poll: $poll, id: $id, studentLessonRelationId: $studentLessonRelationId, completed: $completed, answersDate: $answersDate)';
}


}

/// @nodoc
abstract mixin class _$NpsPollCopyWith<$Res> implements $NpsPollCopyWith<$Res> {
  factory _$NpsPollCopyWith(_NpsPoll value, $Res Function(_NpsPoll) _then) = __$NpsPollCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'poll') Poll? poll,@JsonKey(name: 'id') int? id,@JsonKey(name: 'student_lesson_relation_id') int? studentLessonRelationId,@JsonKey(name: 'completed') bool? completed,@JsonKey(name: 'answers_date') String? answersDate
});


@override $PollCopyWith<$Res>? get poll;

}
/// @nodoc
class __$NpsPollCopyWithImpl<$Res>
    implements _$NpsPollCopyWith<$Res> {
  __$NpsPollCopyWithImpl(this._self, this._then);

  final _NpsPoll _self;
  final $Res Function(_NpsPoll) _then;

/// Create a copy of NpsPoll
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? poll = freezed,Object? id = freezed,Object? studentLessonRelationId = freezed,Object? completed = freezed,Object? answersDate = freezed,}) {
  return _then(_NpsPoll(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,poll: freezed == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as Poll?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,studentLessonRelationId: freezed == studentLessonRelationId ? _self.studentLessonRelationId : studentLessonRelationId // ignore: cast_nullable_to_non_nullable
as int?,completed: freezed == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool?,answersDate: freezed == answersDate ? _self.answersDate : answersDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of NpsPoll
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollCopyWith<$Res>? get poll {
    if (_self.poll == null) {
    return null;
  }

  return $PollCopyWith<$Res>(_self.poll!, (value) {
    return _then(_self.copyWith(poll: value));
  });
}
}


/// @nodoc
mixin _$Poll implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'short_description') String? get shortDescription;@JsonKey(name: 'status') String? get status;
/// Create a copy of Poll
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollCopyWith<Poll> get copyWith => _$PollCopyWithImpl<Poll>(this as Poll, _$identity);

  /// Serializes this Poll to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Poll'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortDescription', shortDescription))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Poll&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,shortDescription,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Poll(id: $id, name: $name, shortDescription: $shortDescription, status: $status)';
}


}

/// @nodoc
abstract mixin class $PollCopyWith<$Res>  {
  factory $PollCopyWith(Poll value, $Res Function(Poll) _then) = _$PollCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_description') String? shortDescription,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class _$PollCopyWithImpl<$Res>
    implements $PollCopyWith<$Res> {
  _$PollCopyWithImpl(this._self, this._then);

  final Poll _self;
  final $Res Function(Poll) _then;

/// Create a copy of Poll
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? shortDescription = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Poll].
extension PollPatterns on Poll {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Poll value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Poll() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Poll value)  $default,){
final _that = this;
switch (_that) {
case _Poll():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Poll value)?  $default,){
final _that = this;
switch (_that) {
case _Poll() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_description')  String? shortDescription, @JsonKey(name: 'status')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Poll() when $default != null:
return $default(_that.id,_that.name,_that.shortDescription,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_description')  String? shortDescription, @JsonKey(name: 'status')  String? status)  $default,) {final _that = this;
switch (_that) {
case _Poll():
return $default(_that.id,_that.name,_that.shortDescription,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_description')  String? shortDescription, @JsonKey(name: 'status')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _Poll() when $default != null:
return $default(_that.id,_that.name,_that.shortDescription,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Poll with DiagnosticableTreeMixin implements Poll {
  const _Poll({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'short_description') this.shortDescription, @JsonKey(name: 'status') this.status});
  factory _Poll.fromJson(Map<String, dynamic> json) => _$PollFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'short_description') final  String? shortDescription;
@override@JsonKey(name: 'status') final  String? status;

/// Create a copy of Poll
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollCopyWith<_Poll> get copyWith => __$PollCopyWithImpl<_Poll>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Poll'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortDescription', shortDescription))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Poll&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,shortDescription,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Poll(id: $id, name: $name, shortDescription: $shortDescription, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PollCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$PollCopyWith(_Poll value, $Res Function(_Poll) _then) = __$PollCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_description') String? shortDescription,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class __$PollCopyWithImpl<$Res>
    implements _$PollCopyWith<$Res> {
  __$PollCopyWithImpl(this._self, this._then);

  final _Poll _self;
  final $Res Function(_Poll) _then;

/// Create a copy of Poll
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? shortDescription = freezed,Object? status = freezed,}) {
  return _then(_Poll(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
