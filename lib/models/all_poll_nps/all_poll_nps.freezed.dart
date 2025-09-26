// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_poll_nps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllPollNps implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'poll') InfoPoll? get poll;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'student_lesson_relation_id') int? get studentLessonRelationId;@JsonKey(name: 'completed') bool? get completed;@JsonKey(name: 'answers_date') String? get answersDate;
/// Create a copy of AllPollNps
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllPollNpsCopyWith<AllPollNps> get copyWith => _$AllPollNpsCopyWithImpl<AllPollNps>(this as AllPollNps, _$identity);

  /// Serializes this AllPollNps to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AllPollNps'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('poll', poll))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('studentLessonRelationId', studentLessonRelationId))..add(DiagnosticsProperty('completed', completed))..add(DiagnosticsProperty('answersDate', answersDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllPollNps&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.id, id) || other.id == id)&&(identical(other.studentLessonRelationId, studentLessonRelationId) || other.studentLessonRelationId == studentLessonRelationId)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.answersDate, answersDate) || other.answersDate == answersDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,poll,id,studentLessonRelationId,completed,answersDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AllPollNps(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, poll: $poll, id: $id, studentLessonRelationId: $studentLessonRelationId, completed: $completed, answersDate: $answersDate)';
}


}

/// @nodoc
abstract mixin class $AllPollNpsCopyWith<$Res>  {
  factory $AllPollNpsCopyWith(AllPollNps value, $Res Function(AllPollNps) _then) = _$AllPollNpsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'poll') InfoPoll? poll,@JsonKey(name: 'id') int? id,@JsonKey(name: 'student_lesson_relation_id') int? studentLessonRelationId,@JsonKey(name: 'completed') bool? completed,@JsonKey(name: 'answers_date') String? answersDate
});


$InfoPollCopyWith<$Res>? get poll;

}
/// @nodoc
class _$AllPollNpsCopyWithImpl<$Res>
    implements $AllPollNpsCopyWith<$Res> {
  _$AllPollNpsCopyWithImpl(this._self, this._then);

  final AllPollNps _self;
  final $Res Function(AllPollNps) _then;

/// Create a copy of AllPollNps
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? poll = freezed,Object? id = freezed,Object? studentLessonRelationId = freezed,Object? completed = freezed,Object? answersDate = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,poll: freezed == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as InfoPoll?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,studentLessonRelationId: freezed == studentLessonRelationId ? _self.studentLessonRelationId : studentLessonRelationId // ignore: cast_nullable_to_non_nullable
as int?,completed: freezed == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool?,answersDate: freezed == answersDate ? _self.answersDate : answersDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AllPollNps
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoPollCopyWith<$Res>? get poll {
    if (_self.poll == null) {
    return null;
  }

  return $InfoPollCopyWith<$Res>(_self.poll!, (value) {
    return _then(_self.copyWith(poll: value));
  });
}
}


/// Adds pattern-matching-related methods to [AllPollNps].
extension AllPollNpsPatterns on AllPollNps {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllPollNps value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllPollNps() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllPollNps value)  $default,){
final _that = this;
switch (_that) {
case _AllPollNps():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllPollNps value)?  $default,){
final _that = this;
switch (_that) {
case _AllPollNps() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'poll')  InfoPoll? poll, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_lesson_relation_id')  int? studentLessonRelationId, @JsonKey(name: 'completed')  bool? completed, @JsonKey(name: 'answers_date')  String? answersDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllPollNps() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'poll')  InfoPoll? poll, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_lesson_relation_id')  int? studentLessonRelationId, @JsonKey(name: 'completed')  bool? completed, @JsonKey(name: 'answers_date')  String? answersDate)  $default,) {final _that = this;
switch (_that) {
case _AllPollNps():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'poll')  InfoPoll? poll, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_lesson_relation_id')  int? studentLessonRelationId, @JsonKey(name: 'completed')  bool? completed, @JsonKey(name: 'answers_date')  String? answersDate)?  $default,) {final _that = this;
switch (_that) {
case _AllPollNps() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.poll,_that.id,_that.studentLessonRelationId,_that.completed,_that.answersDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AllPollNps with DiagnosticableTreeMixin implements AllPollNps {
  const _AllPollNps({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'poll') this.poll, @JsonKey(name: 'id') this.id, @JsonKey(name: 'student_lesson_relation_id') this.studentLessonRelationId, @JsonKey(name: 'completed') this.completed, @JsonKey(name: 'answers_date') this.answersDate});
  factory _AllPollNps.fromJson(Map<String, dynamic> json) => _$AllPollNpsFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'poll') final  InfoPoll? poll;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'student_lesson_relation_id') final  int? studentLessonRelationId;
@override@JsonKey(name: 'completed') final  bool? completed;
@override@JsonKey(name: 'answers_date') final  String? answersDate;

/// Create a copy of AllPollNps
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllPollNpsCopyWith<_AllPollNps> get copyWith => __$AllPollNpsCopyWithImpl<_AllPollNps>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllPollNpsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AllPollNps'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('poll', poll))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('studentLessonRelationId', studentLessonRelationId))..add(DiagnosticsProperty('completed', completed))..add(DiagnosticsProperty('answersDate', answersDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllPollNps&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.id, id) || other.id == id)&&(identical(other.studentLessonRelationId, studentLessonRelationId) || other.studentLessonRelationId == studentLessonRelationId)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.answersDate, answersDate) || other.answersDate == answersDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,poll,id,studentLessonRelationId,completed,answersDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AllPollNps(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, poll: $poll, id: $id, studentLessonRelationId: $studentLessonRelationId, completed: $completed, answersDate: $answersDate)';
}


}

/// @nodoc
abstract mixin class _$AllPollNpsCopyWith<$Res> implements $AllPollNpsCopyWith<$Res> {
  factory _$AllPollNpsCopyWith(_AllPollNps value, $Res Function(_AllPollNps) _then) = __$AllPollNpsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'poll') InfoPoll? poll,@JsonKey(name: 'id') int? id,@JsonKey(name: 'student_lesson_relation_id') int? studentLessonRelationId,@JsonKey(name: 'completed') bool? completed,@JsonKey(name: 'answers_date') String? answersDate
});


@override $InfoPollCopyWith<$Res>? get poll;

}
/// @nodoc
class __$AllPollNpsCopyWithImpl<$Res>
    implements _$AllPollNpsCopyWith<$Res> {
  __$AllPollNpsCopyWithImpl(this._self, this._then);

  final _AllPollNps _self;
  final $Res Function(_AllPollNps) _then;

/// Create a copy of AllPollNps
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? poll = freezed,Object? id = freezed,Object? studentLessonRelationId = freezed,Object? completed = freezed,Object? answersDate = freezed,}) {
  return _then(_AllPollNps(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,poll: freezed == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as InfoPoll?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,studentLessonRelationId: freezed == studentLessonRelationId ? _self.studentLessonRelationId : studentLessonRelationId // ignore: cast_nullable_to_non_nullable
as int?,completed: freezed == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool?,answersDate: freezed == answersDate ? _self.answersDate : answersDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AllPollNps
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoPollCopyWith<$Res>? get poll {
    if (_self.poll == null) {
    return null;
  }

  return $InfoPollCopyWith<$Res>(_self.poll!, (value) {
    return _then(_self.copyWith(poll: value));
  });
}
}


/// @nodoc
mixin _$InfoPoll implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'short_description') String? get shortDescription;@JsonKey(name: 'status') String? get status;
/// Create a copy of InfoPoll
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoPollCopyWith<InfoPoll> get copyWith => _$InfoPollCopyWithImpl<InfoPoll>(this as InfoPoll, _$identity);

  /// Serializes this InfoPoll to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InfoPoll'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortDescription', shortDescription))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoPoll&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,shortDescription,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InfoPoll(id: $id, name: $name, shortDescription: $shortDescription, status: $status)';
}


}

/// @nodoc
abstract mixin class $InfoPollCopyWith<$Res>  {
  factory $InfoPollCopyWith(InfoPoll value, $Res Function(InfoPoll) _then) = _$InfoPollCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_description') String? shortDescription,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class _$InfoPollCopyWithImpl<$Res>
    implements $InfoPollCopyWith<$Res> {
  _$InfoPollCopyWithImpl(this._self, this._then);

  final InfoPoll _self;
  final $Res Function(InfoPoll) _then;

/// Create a copy of InfoPoll
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


/// Adds pattern-matching-related methods to [InfoPoll].
extension InfoPollPatterns on InfoPoll {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoPoll value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoPoll() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoPoll value)  $default,){
final _that = this;
switch (_that) {
case _InfoPoll():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoPoll value)?  $default,){
final _that = this;
switch (_that) {
case _InfoPoll() when $default != null:
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
case _InfoPoll() when $default != null:
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
case _InfoPoll():
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
case _InfoPoll() when $default != null:
return $default(_that.id,_that.name,_that.shortDescription,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoPoll with DiagnosticableTreeMixin implements InfoPoll {
  const _InfoPoll({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'short_description') this.shortDescription, @JsonKey(name: 'status') this.status});
  factory _InfoPoll.fromJson(Map<String, dynamic> json) => _$InfoPollFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'short_description') final  String? shortDescription;
@override@JsonKey(name: 'status') final  String? status;

/// Create a copy of InfoPoll
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoPollCopyWith<_InfoPoll> get copyWith => __$InfoPollCopyWithImpl<_InfoPoll>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoPollToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InfoPoll'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortDescription', shortDescription))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoPoll&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,shortDescription,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InfoPoll(id: $id, name: $name, shortDescription: $shortDescription, status: $status)';
}


}

/// @nodoc
abstract mixin class _$InfoPollCopyWith<$Res> implements $InfoPollCopyWith<$Res> {
  factory _$InfoPollCopyWith(_InfoPoll value, $Res Function(_InfoPoll) _then) = __$InfoPollCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_description') String? shortDescription,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class __$InfoPollCopyWithImpl<$Res>
    implements _$InfoPollCopyWith<$Res> {
  __$InfoPollCopyWithImpl(this._self, this._then);

  final _InfoPoll _self;
  final $Res Function(_InfoPoll) _then;

/// Create a copy of InfoPoll
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? shortDescription = freezed,Object? status = freezed,}) {
  return _then(_InfoPoll(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
