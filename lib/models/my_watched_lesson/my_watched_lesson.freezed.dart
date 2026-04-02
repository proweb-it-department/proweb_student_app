// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_watched_lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyWatchedLesson implements DiagnosticableTreeMixin {

@JsonKey(name: 'group_lesson') MyWatchedLessonGroupLesson? get groupLesson;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'access_to_lesson') bool? get accessToLesson;@JsonKey(name: 'visited') bool? get visited;@JsonKey(name: 'visited_type') String? get visitedType;@JsonKey(name: 'write_off_format') String? get writeOffFormat;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'note') String? get note;@JsonKey(name: 'access_to_video') bool? get accessToVideo;@JsonKey(name: 'is_watched') bool? get isWatched;
/// Create a copy of MyWatchedLesson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWatchedLessonCopyWith<MyWatchedLesson> get copyWith => _$MyWatchedLessonCopyWithImpl<MyWatchedLesson>(this as MyWatchedLesson, _$identity);

  /// Serializes this MyWatchedLesson to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyWatchedLesson'))
    ..add(DiagnosticsProperty('groupLesson', groupLesson))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('accessToLesson', accessToLesson))..add(DiagnosticsProperty('visited', visited))..add(DiagnosticsProperty('visitedType', visitedType))..add(DiagnosticsProperty('writeOffFormat', writeOffFormat))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('accessToVideo', accessToVideo))..add(DiagnosticsProperty('isWatched', isWatched));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWatchedLesson&&(identical(other.groupLesson, groupLesson) || other.groupLesson == groupLesson)&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.accessToLesson, accessToLesson) || other.accessToLesson == accessToLesson)&&(identical(other.visited, visited) || other.visited == visited)&&(identical(other.visitedType, visitedType) || other.visitedType == visitedType)&&(identical(other.writeOffFormat, writeOffFormat) || other.writeOffFormat == writeOffFormat)&&(identical(other.score, score) || other.score == score)&&(identical(other.note, note) || other.note == note)&&(identical(other.accessToVideo, accessToVideo) || other.accessToVideo == accessToVideo)&&(identical(other.isWatched, isWatched) || other.isWatched == isWatched));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupLesson,id,studentId,accessToLesson,visited,visitedType,writeOffFormat,score,note,accessToVideo,isWatched);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyWatchedLesson(groupLesson: $groupLesson, id: $id, studentId: $studentId, accessToLesson: $accessToLesson, visited: $visited, visitedType: $visitedType, writeOffFormat: $writeOffFormat, score: $score, note: $note, accessToVideo: $accessToVideo, isWatched: $isWatched)';
}


}

/// @nodoc
abstract mixin class $MyWatchedLessonCopyWith<$Res>  {
  factory $MyWatchedLessonCopyWith(MyWatchedLesson value, $Res Function(MyWatchedLesson) _then) = _$MyWatchedLessonCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'group_lesson') MyWatchedLessonGroupLesson? groupLesson,@JsonKey(name: 'id') int? id,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'access_to_lesson') bool? accessToLesson,@JsonKey(name: 'visited') bool? visited,@JsonKey(name: 'visited_type') String? visitedType,@JsonKey(name: 'write_off_format') String? writeOffFormat,@JsonKey(name: 'score') int? score,@JsonKey(name: 'note') String? note,@JsonKey(name: 'access_to_video') bool? accessToVideo,@JsonKey(name: 'is_watched') bool? isWatched
});


$MyWatchedLessonGroupLessonCopyWith<$Res>? get groupLesson;

}
/// @nodoc
class _$MyWatchedLessonCopyWithImpl<$Res>
    implements $MyWatchedLessonCopyWith<$Res> {
  _$MyWatchedLessonCopyWithImpl(this._self, this._then);

  final MyWatchedLesson _self;
  final $Res Function(MyWatchedLesson) _then;

/// Create a copy of MyWatchedLesson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupLesson = freezed,Object? id = freezed,Object? studentId = freezed,Object? accessToLesson = freezed,Object? visited = freezed,Object? visitedType = freezed,Object? writeOffFormat = freezed,Object? score = freezed,Object? note = freezed,Object? accessToVideo = freezed,Object? isWatched = freezed,}) {
  return _then(_self.copyWith(
groupLesson: freezed == groupLesson ? _self.groupLesson : groupLesson // ignore: cast_nullable_to_non_nullable
as MyWatchedLessonGroupLesson?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,accessToLesson: freezed == accessToLesson ? _self.accessToLesson : accessToLesson // ignore: cast_nullable_to_non_nullable
as bool?,visited: freezed == visited ? _self.visited : visited // ignore: cast_nullable_to_non_nullable
as bool?,visitedType: freezed == visitedType ? _self.visitedType : visitedType // ignore: cast_nullable_to_non_nullable
as String?,writeOffFormat: freezed == writeOffFormat ? _self.writeOffFormat : writeOffFormat // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,accessToVideo: freezed == accessToVideo ? _self.accessToVideo : accessToVideo // ignore: cast_nullable_to_non_nullable
as bool?,isWatched: freezed == isWatched ? _self.isWatched : isWatched // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of MyWatchedLesson
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyWatchedLessonGroupLessonCopyWith<$Res>? get groupLesson {
    if (_self.groupLesson == null) {
    return null;
  }

  return $MyWatchedLessonGroupLessonCopyWith<$Res>(_self.groupLesson!, (value) {
    return _then(_self.copyWith(groupLesson: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyWatchedLesson].
extension MyWatchedLessonPatterns on MyWatchedLesson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyWatchedLesson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyWatchedLesson() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyWatchedLesson value)  $default,){
final _that = this;
switch (_that) {
case _MyWatchedLesson():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyWatchedLesson value)?  $default,){
final _that = this;
switch (_that) {
case _MyWatchedLesson() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'group_lesson')  MyWatchedLessonGroupLesson? groupLesson, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'access_to_lesson')  bool? accessToLesson, @JsonKey(name: 'visited')  bool? visited, @JsonKey(name: 'visited_type')  String? visitedType, @JsonKey(name: 'write_off_format')  String? writeOffFormat, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'is_watched')  bool? isWatched)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyWatchedLesson() when $default != null:
return $default(_that.groupLesson,_that.id,_that.studentId,_that.accessToLesson,_that.visited,_that.visitedType,_that.writeOffFormat,_that.score,_that.note,_that.accessToVideo,_that.isWatched);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'group_lesson')  MyWatchedLessonGroupLesson? groupLesson, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'access_to_lesson')  bool? accessToLesson, @JsonKey(name: 'visited')  bool? visited, @JsonKey(name: 'visited_type')  String? visitedType, @JsonKey(name: 'write_off_format')  String? writeOffFormat, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'is_watched')  bool? isWatched)  $default,) {final _that = this;
switch (_that) {
case _MyWatchedLesson():
return $default(_that.groupLesson,_that.id,_that.studentId,_that.accessToLesson,_that.visited,_that.visitedType,_that.writeOffFormat,_that.score,_that.note,_that.accessToVideo,_that.isWatched);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'group_lesson')  MyWatchedLessonGroupLesson? groupLesson, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'access_to_lesson')  bool? accessToLesson, @JsonKey(name: 'visited')  bool? visited, @JsonKey(name: 'visited_type')  String? visitedType, @JsonKey(name: 'write_off_format')  String? writeOffFormat, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'is_watched')  bool? isWatched)?  $default,) {final _that = this;
switch (_that) {
case _MyWatchedLesson() when $default != null:
return $default(_that.groupLesson,_that.id,_that.studentId,_that.accessToLesson,_that.visited,_that.visitedType,_that.writeOffFormat,_that.score,_that.note,_that.accessToVideo,_that.isWatched);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyWatchedLesson with DiagnosticableTreeMixin implements MyWatchedLesson {
  const _MyWatchedLesson({@JsonKey(name: 'group_lesson') this.groupLesson, @JsonKey(name: 'id') this.id, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'access_to_lesson') this.accessToLesson, @JsonKey(name: 'visited') this.visited, @JsonKey(name: 'visited_type') this.visitedType, @JsonKey(name: 'write_off_format') this.writeOffFormat, @JsonKey(name: 'score') this.score, @JsonKey(name: 'note') this.note, @JsonKey(name: 'access_to_video') this.accessToVideo, @JsonKey(name: 'is_watched') this.isWatched});
  factory _MyWatchedLesson.fromJson(Map<String, dynamic> json) => _$MyWatchedLessonFromJson(json);

@override@JsonKey(name: 'group_lesson') final  MyWatchedLessonGroupLesson? groupLesson;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'student_id') final  int? studentId;
@override@JsonKey(name: 'access_to_lesson') final  bool? accessToLesson;
@override@JsonKey(name: 'visited') final  bool? visited;
@override@JsonKey(name: 'visited_type') final  String? visitedType;
@override@JsonKey(name: 'write_off_format') final  String? writeOffFormat;
@override@JsonKey(name: 'score') final  int? score;
@override@JsonKey(name: 'note') final  String? note;
@override@JsonKey(name: 'access_to_video') final  bool? accessToVideo;
@override@JsonKey(name: 'is_watched') final  bool? isWatched;

/// Create a copy of MyWatchedLesson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyWatchedLessonCopyWith<_MyWatchedLesson> get copyWith => __$MyWatchedLessonCopyWithImpl<_MyWatchedLesson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyWatchedLessonToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyWatchedLesson'))
    ..add(DiagnosticsProperty('groupLesson', groupLesson))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('accessToLesson', accessToLesson))..add(DiagnosticsProperty('visited', visited))..add(DiagnosticsProperty('visitedType', visitedType))..add(DiagnosticsProperty('writeOffFormat', writeOffFormat))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('accessToVideo', accessToVideo))..add(DiagnosticsProperty('isWatched', isWatched));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyWatchedLesson&&(identical(other.groupLesson, groupLesson) || other.groupLesson == groupLesson)&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.accessToLesson, accessToLesson) || other.accessToLesson == accessToLesson)&&(identical(other.visited, visited) || other.visited == visited)&&(identical(other.visitedType, visitedType) || other.visitedType == visitedType)&&(identical(other.writeOffFormat, writeOffFormat) || other.writeOffFormat == writeOffFormat)&&(identical(other.score, score) || other.score == score)&&(identical(other.note, note) || other.note == note)&&(identical(other.accessToVideo, accessToVideo) || other.accessToVideo == accessToVideo)&&(identical(other.isWatched, isWatched) || other.isWatched == isWatched));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupLesson,id,studentId,accessToLesson,visited,visitedType,writeOffFormat,score,note,accessToVideo,isWatched);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyWatchedLesson(groupLesson: $groupLesson, id: $id, studentId: $studentId, accessToLesson: $accessToLesson, visited: $visited, visitedType: $visitedType, writeOffFormat: $writeOffFormat, score: $score, note: $note, accessToVideo: $accessToVideo, isWatched: $isWatched)';
}


}

/// @nodoc
abstract mixin class _$MyWatchedLessonCopyWith<$Res> implements $MyWatchedLessonCopyWith<$Res> {
  factory _$MyWatchedLessonCopyWith(_MyWatchedLesson value, $Res Function(_MyWatchedLesson) _then) = __$MyWatchedLessonCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'group_lesson') MyWatchedLessonGroupLesson? groupLesson,@JsonKey(name: 'id') int? id,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'access_to_lesson') bool? accessToLesson,@JsonKey(name: 'visited') bool? visited,@JsonKey(name: 'visited_type') String? visitedType,@JsonKey(name: 'write_off_format') String? writeOffFormat,@JsonKey(name: 'score') int? score,@JsonKey(name: 'note') String? note,@JsonKey(name: 'access_to_video') bool? accessToVideo,@JsonKey(name: 'is_watched') bool? isWatched
});


@override $MyWatchedLessonGroupLessonCopyWith<$Res>? get groupLesson;

}
/// @nodoc
class __$MyWatchedLessonCopyWithImpl<$Res>
    implements _$MyWatchedLessonCopyWith<$Res> {
  __$MyWatchedLessonCopyWithImpl(this._self, this._then);

  final _MyWatchedLesson _self;
  final $Res Function(_MyWatchedLesson) _then;

/// Create a copy of MyWatchedLesson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupLesson = freezed,Object? id = freezed,Object? studentId = freezed,Object? accessToLesson = freezed,Object? visited = freezed,Object? visitedType = freezed,Object? writeOffFormat = freezed,Object? score = freezed,Object? note = freezed,Object? accessToVideo = freezed,Object? isWatched = freezed,}) {
  return _then(_MyWatchedLesson(
groupLesson: freezed == groupLesson ? _self.groupLesson : groupLesson // ignore: cast_nullable_to_non_nullable
as MyWatchedLessonGroupLesson?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,accessToLesson: freezed == accessToLesson ? _self.accessToLesson : accessToLesson // ignore: cast_nullable_to_non_nullable
as bool?,visited: freezed == visited ? _self.visited : visited // ignore: cast_nullable_to_non_nullable
as bool?,visitedType: freezed == visitedType ? _self.visitedType : visitedType // ignore: cast_nullable_to_non_nullable
as String?,writeOffFormat: freezed == writeOffFormat ? _self.writeOffFormat : writeOffFormat // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,accessToVideo: freezed == accessToVideo ? _self.accessToVideo : accessToVideo // ignore: cast_nullable_to_non_nullable
as bool?,isWatched: freezed == isWatched ? _self.isWatched : isWatched // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of MyWatchedLesson
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyWatchedLessonGroupLessonCopyWith<$Res>? get groupLesson {
    if (_self.groupLesson == null) {
    return null;
  }

  return $MyWatchedLessonGroupLessonCopyWith<$Res>(_self.groupLesson!, (value) {
    return _then(_self.copyWith(groupLesson: value));
  });
}
}


/// @nodoc
mixin _$MyWatchedLessonGroupLesson implements DiagnosticableTreeMixin {

@JsonKey(name: 'videos') List<MyWatchedLessonVideos>? get videos;@JsonKey(name: 'group') MyWatchedLessonGroup? get group;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'group_id') int? get groupId;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'rescheduled_reason') String? get rescheduledReason;@JsonKey(name: 'lesson_number') int? get lessonNumber;@JsonKey(name: 'middle_rating') String? get middleRating;@JsonKey(name: 'united_id') int? get unitedId;
/// Create a copy of MyWatchedLessonGroupLesson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWatchedLessonGroupLessonCopyWith<MyWatchedLessonGroupLesson> get copyWith => _$MyWatchedLessonGroupLessonCopyWithImpl<MyWatchedLessonGroupLesson>(this as MyWatchedLessonGroupLesson, _$identity);

  /// Serializes this MyWatchedLessonGroupLesson to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyWatchedLessonGroupLesson'))
    ..add(DiagnosticsProperty('videos', videos))..add(DiagnosticsProperty('group', group))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('rescheduledReason', rescheduledReason))..add(DiagnosticsProperty('lessonNumber', lessonNumber))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('unitedId', unitedId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWatchedLessonGroupLesson&&const DeepCollectionEquality().equals(other.videos, videos)&&(identical(other.group, group) || other.group == group)&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.rescheduledReason, rescheduledReason) || other.rescheduledReason == rescheduledReason)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&(identical(other.unitedId, unitedId) || other.unitedId == unitedId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(videos),group,id,groupId,type,status,rescheduledReason,lessonNumber,middleRating,unitedId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyWatchedLessonGroupLesson(videos: $videos, group: $group, id: $id, groupId: $groupId, type: $type, status: $status, rescheduledReason: $rescheduledReason, lessonNumber: $lessonNumber, middleRating: $middleRating, unitedId: $unitedId)';
}


}

/// @nodoc
abstract mixin class $MyWatchedLessonGroupLessonCopyWith<$Res>  {
  factory $MyWatchedLessonGroupLessonCopyWith(MyWatchedLessonGroupLesson value, $Res Function(MyWatchedLessonGroupLesson) _then) = _$MyWatchedLessonGroupLessonCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'videos') List<MyWatchedLessonVideos>? videos,@JsonKey(name: 'group') MyWatchedLessonGroup? group,@JsonKey(name: 'id') int? id,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'status') String? status,@JsonKey(name: 'rescheduled_reason') String? rescheduledReason,@JsonKey(name: 'lesson_number') int? lessonNumber,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'united_id') int? unitedId
});


$MyWatchedLessonGroupCopyWith<$Res>? get group;

}
/// @nodoc
class _$MyWatchedLessonGroupLessonCopyWithImpl<$Res>
    implements $MyWatchedLessonGroupLessonCopyWith<$Res> {
  _$MyWatchedLessonGroupLessonCopyWithImpl(this._self, this._then);

  final MyWatchedLessonGroupLesson _self;
  final $Res Function(MyWatchedLessonGroupLesson) _then;

/// Create a copy of MyWatchedLessonGroupLesson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videos = freezed,Object? group = freezed,Object? id = freezed,Object? groupId = freezed,Object? type = freezed,Object? status = freezed,Object? rescheduledReason = freezed,Object? lessonNumber = freezed,Object? middleRating = freezed,Object? unitedId = freezed,}) {
  return _then(_self.copyWith(
videos: freezed == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<MyWatchedLessonVideos>?,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as MyWatchedLessonGroup?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,rescheduledReason: freezed == rescheduledReason ? _self.rescheduledReason : rescheduledReason // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,unitedId: freezed == unitedId ? _self.unitedId : unitedId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of MyWatchedLessonGroupLesson
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyWatchedLessonGroupCopyWith<$Res>? get group {
    if (_self.group == null) {
    return null;
  }

  return $MyWatchedLessonGroupCopyWith<$Res>(_self.group!, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyWatchedLessonGroupLesson].
extension MyWatchedLessonGroupLessonPatterns on MyWatchedLessonGroupLesson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyWatchedLessonGroupLesson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyWatchedLessonGroupLesson() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyWatchedLessonGroupLesson value)  $default,){
final _that = this;
switch (_that) {
case _MyWatchedLessonGroupLesson():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyWatchedLessonGroupLesson value)?  $default,){
final _that = this;
switch (_that) {
case _MyWatchedLessonGroupLesson() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'videos')  List<MyWatchedLessonVideos>? videos, @JsonKey(name: 'group')  MyWatchedLessonGroup? group, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'united_id')  int? unitedId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyWatchedLessonGroupLesson() when $default != null:
return $default(_that.videos,_that.group,_that.id,_that.groupId,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.middleRating,_that.unitedId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'videos')  List<MyWatchedLessonVideos>? videos, @JsonKey(name: 'group')  MyWatchedLessonGroup? group, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'united_id')  int? unitedId)  $default,) {final _that = this;
switch (_that) {
case _MyWatchedLessonGroupLesson():
return $default(_that.videos,_that.group,_that.id,_that.groupId,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.middleRating,_that.unitedId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'videos')  List<MyWatchedLessonVideos>? videos, @JsonKey(name: 'group')  MyWatchedLessonGroup? group, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'united_id')  int? unitedId)?  $default,) {final _that = this;
switch (_that) {
case _MyWatchedLessonGroupLesson() when $default != null:
return $default(_that.videos,_that.group,_that.id,_that.groupId,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.middleRating,_that.unitedId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyWatchedLessonGroupLesson with DiagnosticableTreeMixin implements MyWatchedLessonGroupLesson {
  const _MyWatchedLessonGroupLesson({@JsonKey(name: 'videos') final  List<MyWatchedLessonVideos>? videos, @JsonKey(name: 'group') this.group, @JsonKey(name: 'id') this.id, @JsonKey(name: 'group_id') this.groupId, @JsonKey(name: 'type') this.type, @JsonKey(name: 'status') this.status, @JsonKey(name: 'rescheduled_reason') this.rescheduledReason, @JsonKey(name: 'lesson_number') this.lessonNumber, @JsonKey(name: 'middle_rating') this.middleRating, @JsonKey(name: 'united_id') this.unitedId}): _videos = videos;
  factory _MyWatchedLessonGroupLesson.fromJson(Map<String, dynamic> json) => _$MyWatchedLessonGroupLessonFromJson(json);

 final  List<MyWatchedLessonVideos>? _videos;
@override@JsonKey(name: 'videos') List<MyWatchedLessonVideos>? get videos {
  final value = _videos;
  if (value == null) return null;
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'group') final  MyWatchedLessonGroup? group;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'group_id') final  int? groupId;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'rescheduled_reason') final  String? rescheduledReason;
@override@JsonKey(name: 'lesson_number') final  int? lessonNumber;
@override@JsonKey(name: 'middle_rating') final  String? middleRating;
@override@JsonKey(name: 'united_id') final  int? unitedId;

/// Create a copy of MyWatchedLessonGroupLesson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyWatchedLessonGroupLessonCopyWith<_MyWatchedLessonGroupLesson> get copyWith => __$MyWatchedLessonGroupLessonCopyWithImpl<_MyWatchedLessonGroupLesson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyWatchedLessonGroupLessonToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyWatchedLessonGroupLesson'))
    ..add(DiagnosticsProperty('videos', videos))..add(DiagnosticsProperty('group', group))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('rescheduledReason', rescheduledReason))..add(DiagnosticsProperty('lessonNumber', lessonNumber))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('unitedId', unitedId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyWatchedLessonGroupLesson&&const DeepCollectionEquality().equals(other._videos, _videos)&&(identical(other.group, group) || other.group == group)&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.rescheduledReason, rescheduledReason) || other.rescheduledReason == rescheduledReason)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&(identical(other.unitedId, unitedId) || other.unitedId == unitedId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_videos),group,id,groupId,type,status,rescheduledReason,lessonNumber,middleRating,unitedId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyWatchedLessonGroupLesson(videos: $videos, group: $group, id: $id, groupId: $groupId, type: $type, status: $status, rescheduledReason: $rescheduledReason, lessonNumber: $lessonNumber, middleRating: $middleRating, unitedId: $unitedId)';
}


}

/// @nodoc
abstract mixin class _$MyWatchedLessonGroupLessonCopyWith<$Res> implements $MyWatchedLessonGroupLessonCopyWith<$Res> {
  factory _$MyWatchedLessonGroupLessonCopyWith(_MyWatchedLessonGroupLesson value, $Res Function(_MyWatchedLessonGroupLesson) _then) = __$MyWatchedLessonGroupLessonCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'videos') List<MyWatchedLessonVideos>? videos,@JsonKey(name: 'group') MyWatchedLessonGroup? group,@JsonKey(name: 'id') int? id,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'type') String? type,@JsonKey(name: 'status') String? status,@JsonKey(name: 'rescheduled_reason') String? rescheduledReason,@JsonKey(name: 'lesson_number') int? lessonNumber,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'united_id') int? unitedId
});


@override $MyWatchedLessonGroupCopyWith<$Res>? get group;

}
/// @nodoc
class __$MyWatchedLessonGroupLessonCopyWithImpl<$Res>
    implements _$MyWatchedLessonGroupLessonCopyWith<$Res> {
  __$MyWatchedLessonGroupLessonCopyWithImpl(this._self, this._then);

  final _MyWatchedLessonGroupLesson _self;
  final $Res Function(_MyWatchedLessonGroupLesson) _then;

/// Create a copy of MyWatchedLessonGroupLesson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videos = freezed,Object? group = freezed,Object? id = freezed,Object? groupId = freezed,Object? type = freezed,Object? status = freezed,Object? rescheduledReason = freezed,Object? lessonNumber = freezed,Object? middleRating = freezed,Object? unitedId = freezed,}) {
  return _then(_MyWatchedLessonGroupLesson(
videos: freezed == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<MyWatchedLessonVideos>?,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as MyWatchedLessonGroup?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,rescheduledReason: freezed == rescheduledReason ? _self.rescheduledReason : rescheduledReason // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,unitedId: freezed == unitedId ? _self.unitedId : unitedId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of MyWatchedLessonGroupLesson
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyWatchedLessonGroupCopyWith<$Res>? get group {
    if (_self.group == null) {
    return null;
  }

  return $MyWatchedLessonGroupCopyWith<$Res>(_self.group!, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}


/// @nodoc
mixin _$MyWatchedLessonVideos implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'lesson_id') int? get lessonId;@JsonKey(name: 'video_key') String? get videoKey;@JsonKey(name: 'video') VideoModel? get video;
/// Create a copy of MyWatchedLessonVideos
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWatchedLessonVideosCopyWith<MyWatchedLessonVideos> get copyWith => _$MyWatchedLessonVideosCopyWithImpl<MyWatchedLessonVideos>(this as MyWatchedLessonVideos, _$identity);

  /// Serializes this MyWatchedLessonVideos to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyWatchedLessonVideos'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('lessonId', lessonId))..add(DiagnosticsProperty('videoKey', videoKey))..add(DiagnosticsProperty('video', video));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWatchedLessonVideos&&(identical(other.id, id) || other.id == id)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey)&&(identical(other.video, video) || other.video == video));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lessonId,videoKey,video);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyWatchedLessonVideos(id: $id, lessonId: $lessonId, videoKey: $videoKey, video: $video)';
}


}

/// @nodoc
abstract mixin class $MyWatchedLessonVideosCopyWith<$Res>  {
  factory $MyWatchedLessonVideosCopyWith(MyWatchedLessonVideos value, $Res Function(MyWatchedLessonVideos) _then) = _$MyWatchedLessonVideosCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'lesson_id') int? lessonId,@JsonKey(name: 'video_key') String? videoKey,@JsonKey(name: 'video') VideoModel? video
});


$VideoModelCopyWith<$Res>? get video;

}
/// @nodoc
class _$MyWatchedLessonVideosCopyWithImpl<$Res>
    implements $MyWatchedLessonVideosCopyWith<$Res> {
  _$MyWatchedLessonVideosCopyWithImpl(this._self, this._then);

  final MyWatchedLessonVideos _self;
  final $Res Function(MyWatchedLessonVideos) _then;

/// Create a copy of MyWatchedLessonVideos
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? lessonId = freezed,Object? videoKey = freezed,Object? video = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as int?,videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as VideoModel?,
  ));
}
/// Create a copy of MyWatchedLessonVideos
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


/// Adds pattern-matching-related methods to [MyWatchedLessonVideos].
extension MyWatchedLessonVideosPatterns on MyWatchedLessonVideos {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyWatchedLessonVideos value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyWatchedLessonVideos() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyWatchedLessonVideos value)  $default,){
final _that = this;
switch (_that) {
case _MyWatchedLessonVideos():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyWatchedLessonVideos value)?  $default,){
final _that = this;
switch (_that) {
case _MyWatchedLessonVideos() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'lesson_id')  int? lessonId, @JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'video')  VideoModel? video)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyWatchedLessonVideos() when $default != null:
return $default(_that.id,_that.lessonId,_that.videoKey,_that.video);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'lesson_id')  int? lessonId, @JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'video')  VideoModel? video)  $default,) {final _that = this;
switch (_that) {
case _MyWatchedLessonVideos():
return $default(_that.id,_that.lessonId,_that.videoKey,_that.video);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'lesson_id')  int? lessonId, @JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'video')  VideoModel? video)?  $default,) {final _that = this;
switch (_that) {
case _MyWatchedLessonVideos() when $default != null:
return $default(_that.id,_that.lessonId,_that.videoKey,_that.video);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyWatchedLessonVideos with DiagnosticableTreeMixin implements MyWatchedLessonVideos {
  const _MyWatchedLessonVideos({@JsonKey(name: 'id') this.id, @JsonKey(name: 'lesson_id') this.lessonId, @JsonKey(name: 'video_key') this.videoKey, @JsonKey(name: 'video') this.video});
  factory _MyWatchedLessonVideos.fromJson(Map<String, dynamic> json) => _$MyWatchedLessonVideosFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'lesson_id') final  int? lessonId;
@override@JsonKey(name: 'video_key') final  String? videoKey;
@override@JsonKey(name: 'video') final  VideoModel? video;

/// Create a copy of MyWatchedLessonVideos
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyWatchedLessonVideosCopyWith<_MyWatchedLessonVideos> get copyWith => __$MyWatchedLessonVideosCopyWithImpl<_MyWatchedLessonVideos>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyWatchedLessonVideosToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyWatchedLessonVideos'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('lessonId', lessonId))..add(DiagnosticsProperty('videoKey', videoKey))..add(DiagnosticsProperty('video', video));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyWatchedLessonVideos&&(identical(other.id, id) || other.id == id)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey)&&(identical(other.video, video) || other.video == video));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lessonId,videoKey,video);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyWatchedLessonVideos(id: $id, lessonId: $lessonId, videoKey: $videoKey, video: $video)';
}


}

/// @nodoc
abstract mixin class _$MyWatchedLessonVideosCopyWith<$Res> implements $MyWatchedLessonVideosCopyWith<$Res> {
  factory _$MyWatchedLessonVideosCopyWith(_MyWatchedLessonVideos value, $Res Function(_MyWatchedLessonVideos) _then) = __$MyWatchedLessonVideosCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'lesson_id') int? lessonId,@JsonKey(name: 'video_key') String? videoKey,@JsonKey(name: 'video') VideoModel? video
});


@override $VideoModelCopyWith<$Res>? get video;

}
/// @nodoc
class __$MyWatchedLessonVideosCopyWithImpl<$Res>
    implements _$MyWatchedLessonVideosCopyWith<$Res> {
  __$MyWatchedLessonVideosCopyWithImpl(this._self, this._then);

  final _MyWatchedLessonVideos _self;
  final $Res Function(_MyWatchedLessonVideos) _then;

/// Create a copy of MyWatchedLessonVideos
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? lessonId = freezed,Object? videoKey = freezed,Object? video = freezed,}) {
  return _then(_MyWatchedLessonVideos(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as int?,videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as VideoModel?,
  ));
}

/// Create a copy of MyWatchedLessonVideos
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


/// @nodoc
mixin _$MyWatchedLessonGroup implements DiagnosticableTreeMixin {

@JsonKey(name: 'course') MyWatchedLessonCourse? get course;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'format') String? get format;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'graduated_date') String? get graduatedDate;@JsonKey(name: 'disbanded_date') String? get disbandedDate;@JsonKey(name: 'has_double_lesson') bool? get hasDoubleLesson;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'study_time') String? get studyTime;@JsonKey(name: 'days') List<int>? get days;@JsonKey(name: 'start_lesson_number') int? get startLessonNumber;@JsonKey(name: 'video_deleted') bool? get videoDeleted;@JsonKey(name: 'course_id') int? get courseId;@JsonKey(name: 'launch_id') int? get launchId;@JsonKey(name: 'cabinet_id') int? get cabinetId;
/// Create a copy of MyWatchedLessonGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWatchedLessonGroupCopyWith<MyWatchedLessonGroup> get copyWith => _$MyWatchedLessonGroupCopyWithImpl<MyWatchedLessonGroup>(this as MyWatchedLessonGroup, _$identity);

  /// Serializes this MyWatchedLessonGroup to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyWatchedLessonGroup'))
    ..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('graduatedDate', graduatedDate))..add(DiagnosticsProperty('disbandedDate', disbandedDate))..add(DiagnosticsProperty('hasDoubleLesson', hasDoubleLesson))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('studyTime', studyTime))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('startLessonNumber', startLessonNumber))..add(DiagnosticsProperty('videoDeleted', videoDeleted))..add(DiagnosticsProperty('courseId', courseId))..add(DiagnosticsProperty('launchId', launchId))..add(DiagnosticsProperty('cabinetId', cabinetId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWatchedLessonGroup&&(identical(other.course, course) || other.course == course)&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.type, type) || other.type == type)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.graduatedDate, graduatedDate) || other.graduatedDate == graduatedDate)&&(identical(other.disbandedDate, disbandedDate) || other.disbandedDate == disbandedDate)&&(identical(other.hasDoubleLesson, hasDoubleLesson) || other.hasDoubleLesson == hasDoubleLesson)&&(identical(other.status, status) || other.status == status)&&(identical(other.studyTime, studyTime) || other.studyTime == studyTime)&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.startLessonNumber, startLessonNumber) || other.startLessonNumber == startLessonNumber)&&(identical(other.videoDeleted, videoDeleted) || other.videoDeleted == videoDeleted)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.launchId, launchId) || other.launchId == launchId)&&(identical(other.cabinetId, cabinetId) || other.cabinetId == cabinetId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,id,format,type,startDate,graduatedDate,disbandedDate,hasDoubleLesson,status,studyTime,const DeepCollectionEquality().hash(days),startLessonNumber,videoDeleted,courseId,launchId,cabinetId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyWatchedLessonGroup(course: $course, id: $id, format: $format, type: $type, startDate: $startDate, graduatedDate: $graduatedDate, disbandedDate: $disbandedDate, hasDoubleLesson: $hasDoubleLesson, status: $status, studyTime: $studyTime, days: $days, startLessonNumber: $startLessonNumber, videoDeleted: $videoDeleted, courseId: $courseId, launchId: $launchId, cabinetId: $cabinetId)';
}


}

/// @nodoc
abstract mixin class $MyWatchedLessonGroupCopyWith<$Res>  {
  factory $MyWatchedLessonGroupCopyWith(MyWatchedLessonGroup value, $Res Function(MyWatchedLessonGroup) _then) = _$MyWatchedLessonGroupCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'course') MyWatchedLessonCourse? course,@JsonKey(name: 'id') int? id,@JsonKey(name: 'format') String? format,@JsonKey(name: 'type') String? type,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'graduated_date') String? graduatedDate,@JsonKey(name: 'disbanded_date') String? disbandedDate,@JsonKey(name: 'has_double_lesson') bool? hasDoubleLesson,@JsonKey(name: 'status') String? status,@JsonKey(name: 'study_time') String? studyTime,@JsonKey(name: 'days') List<int>? days,@JsonKey(name: 'start_lesson_number') int? startLessonNumber,@JsonKey(name: 'video_deleted') bool? videoDeleted,@JsonKey(name: 'course_id') int? courseId,@JsonKey(name: 'launch_id') int? launchId,@JsonKey(name: 'cabinet_id') int? cabinetId
});


$MyWatchedLessonCourseCopyWith<$Res>? get course;

}
/// @nodoc
class _$MyWatchedLessonGroupCopyWithImpl<$Res>
    implements $MyWatchedLessonGroupCopyWith<$Res> {
  _$MyWatchedLessonGroupCopyWithImpl(this._self, this._then);

  final MyWatchedLessonGroup _self;
  final $Res Function(MyWatchedLessonGroup) _then;

/// Create a copy of MyWatchedLessonGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? course = freezed,Object? id = freezed,Object? format = freezed,Object? type = freezed,Object? startDate = freezed,Object? graduatedDate = freezed,Object? disbandedDate = freezed,Object? hasDoubleLesson = freezed,Object? status = freezed,Object? studyTime = freezed,Object? days = freezed,Object? startLessonNumber = freezed,Object? videoDeleted = freezed,Object? courseId = freezed,Object? launchId = freezed,Object? cabinetId = freezed,}) {
  return _then(_self.copyWith(
course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as MyWatchedLessonCourse?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,graduatedDate: freezed == graduatedDate ? _self.graduatedDate : graduatedDate // ignore: cast_nullable_to_non_nullable
as String?,disbandedDate: freezed == disbandedDate ? _self.disbandedDate : disbandedDate // ignore: cast_nullable_to_non_nullable
as String?,hasDoubleLesson: freezed == hasDoubleLesson ? _self.hasDoubleLesson : hasDoubleLesson // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,studyTime: freezed == studyTime ? _self.studyTime : studyTime // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<int>?,startLessonNumber: freezed == startLessonNumber ? _self.startLessonNumber : startLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,videoDeleted: freezed == videoDeleted ? _self.videoDeleted : videoDeleted // ignore: cast_nullable_to_non_nullable
as bool?,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,launchId: freezed == launchId ? _self.launchId : launchId // ignore: cast_nullable_to_non_nullable
as int?,cabinetId: freezed == cabinetId ? _self.cabinetId : cabinetId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of MyWatchedLessonGroup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyWatchedLessonCourseCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $MyWatchedLessonCourseCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyWatchedLessonGroup].
extension MyWatchedLessonGroupPatterns on MyWatchedLessonGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyWatchedLessonGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyWatchedLessonGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyWatchedLessonGroup value)  $default,){
final _that = this;
switch (_that) {
case _MyWatchedLessonGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyWatchedLessonGroup value)?  $default,){
final _that = this;
switch (_that) {
case _MyWatchedLessonGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'course')  MyWatchedLessonCourse? course, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'graduated_date')  String? graduatedDate, @JsonKey(name: 'disbanded_date')  String? disbandedDate, @JsonKey(name: 'has_double_lesson')  bool? hasDoubleLesson, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'study_time')  String? studyTime, @JsonKey(name: 'days')  List<int>? days, @JsonKey(name: 'start_lesson_number')  int? startLessonNumber, @JsonKey(name: 'video_deleted')  bool? videoDeleted, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'launch_id')  int? launchId, @JsonKey(name: 'cabinet_id')  int? cabinetId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyWatchedLessonGroup() when $default != null:
return $default(_that.course,_that.id,_that.format,_that.type,_that.startDate,_that.graduatedDate,_that.disbandedDate,_that.hasDoubleLesson,_that.status,_that.studyTime,_that.days,_that.startLessonNumber,_that.videoDeleted,_that.courseId,_that.launchId,_that.cabinetId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'course')  MyWatchedLessonCourse? course, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'graduated_date')  String? graduatedDate, @JsonKey(name: 'disbanded_date')  String? disbandedDate, @JsonKey(name: 'has_double_lesson')  bool? hasDoubleLesson, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'study_time')  String? studyTime, @JsonKey(name: 'days')  List<int>? days, @JsonKey(name: 'start_lesson_number')  int? startLessonNumber, @JsonKey(name: 'video_deleted')  bool? videoDeleted, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'launch_id')  int? launchId, @JsonKey(name: 'cabinet_id')  int? cabinetId)  $default,) {final _that = this;
switch (_that) {
case _MyWatchedLessonGroup():
return $default(_that.course,_that.id,_that.format,_that.type,_that.startDate,_that.graduatedDate,_that.disbandedDate,_that.hasDoubleLesson,_that.status,_that.studyTime,_that.days,_that.startLessonNumber,_that.videoDeleted,_that.courseId,_that.launchId,_that.cabinetId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'course')  MyWatchedLessonCourse? course, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'graduated_date')  String? graduatedDate, @JsonKey(name: 'disbanded_date')  String? disbandedDate, @JsonKey(name: 'has_double_lesson')  bool? hasDoubleLesson, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'study_time')  String? studyTime, @JsonKey(name: 'days')  List<int>? days, @JsonKey(name: 'start_lesson_number')  int? startLessonNumber, @JsonKey(name: 'video_deleted')  bool? videoDeleted, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'launch_id')  int? launchId, @JsonKey(name: 'cabinet_id')  int? cabinetId)?  $default,) {final _that = this;
switch (_that) {
case _MyWatchedLessonGroup() when $default != null:
return $default(_that.course,_that.id,_that.format,_that.type,_that.startDate,_that.graduatedDate,_that.disbandedDate,_that.hasDoubleLesson,_that.status,_that.studyTime,_that.days,_that.startLessonNumber,_that.videoDeleted,_that.courseId,_that.launchId,_that.cabinetId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyWatchedLessonGroup with DiagnosticableTreeMixin implements MyWatchedLessonGroup {
  const _MyWatchedLessonGroup({@JsonKey(name: 'course') this.course, @JsonKey(name: 'id') this.id, @JsonKey(name: 'format') this.format, @JsonKey(name: 'type') this.type, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'graduated_date') this.graduatedDate, @JsonKey(name: 'disbanded_date') this.disbandedDate, @JsonKey(name: 'has_double_lesson') this.hasDoubleLesson, @JsonKey(name: 'status') this.status, @JsonKey(name: 'study_time') this.studyTime, @JsonKey(name: 'days') final  List<int>? days, @JsonKey(name: 'start_lesson_number') this.startLessonNumber, @JsonKey(name: 'video_deleted') this.videoDeleted, @JsonKey(name: 'course_id') this.courseId, @JsonKey(name: 'launch_id') this.launchId, @JsonKey(name: 'cabinet_id') this.cabinetId}): _days = days;
  factory _MyWatchedLessonGroup.fromJson(Map<String, dynamic> json) => _$MyWatchedLessonGroupFromJson(json);

@override@JsonKey(name: 'course') final  MyWatchedLessonCourse? course;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'format') final  String? format;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'graduated_date') final  String? graduatedDate;
@override@JsonKey(name: 'disbanded_date') final  String? disbandedDate;
@override@JsonKey(name: 'has_double_lesson') final  bool? hasDoubleLesson;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'study_time') final  String? studyTime;
 final  List<int>? _days;
@override@JsonKey(name: 'days') List<int>? get days {
  final value = _days;
  if (value == null) return null;
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'start_lesson_number') final  int? startLessonNumber;
@override@JsonKey(name: 'video_deleted') final  bool? videoDeleted;
@override@JsonKey(name: 'course_id') final  int? courseId;
@override@JsonKey(name: 'launch_id') final  int? launchId;
@override@JsonKey(name: 'cabinet_id') final  int? cabinetId;

/// Create a copy of MyWatchedLessonGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyWatchedLessonGroupCopyWith<_MyWatchedLessonGroup> get copyWith => __$MyWatchedLessonGroupCopyWithImpl<_MyWatchedLessonGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyWatchedLessonGroupToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyWatchedLessonGroup'))
    ..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('graduatedDate', graduatedDate))..add(DiagnosticsProperty('disbandedDate', disbandedDate))..add(DiagnosticsProperty('hasDoubleLesson', hasDoubleLesson))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('studyTime', studyTime))..add(DiagnosticsProperty('days', days))..add(DiagnosticsProperty('startLessonNumber', startLessonNumber))..add(DiagnosticsProperty('videoDeleted', videoDeleted))..add(DiagnosticsProperty('courseId', courseId))..add(DiagnosticsProperty('launchId', launchId))..add(DiagnosticsProperty('cabinetId', cabinetId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyWatchedLessonGroup&&(identical(other.course, course) || other.course == course)&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.type, type) || other.type == type)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.graduatedDate, graduatedDate) || other.graduatedDate == graduatedDate)&&(identical(other.disbandedDate, disbandedDate) || other.disbandedDate == disbandedDate)&&(identical(other.hasDoubleLesson, hasDoubleLesson) || other.hasDoubleLesson == hasDoubleLesson)&&(identical(other.status, status) || other.status == status)&&(identical(other.studyTime, studyTime) || other.studyTime == studyTime)&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.startLessonNumber, startLessonNumber) || other.startLessonNumber == startLessonNumber)&&(identical(other.videoDeleted, videoDeleted) || other.videoDeleted == videoDeleted)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.launchId, launchId) || other.launchId == launchId)&&(identical(other.cabinetId, cabinetId) || other.cabinetId == cabinetId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,id,format,type,startDate,graduatedDate,disbandedDate,hasDoubleLesson,status,studyTime,const DeepCollectionEquality().hash(_days),startLessonNumber,videoDeleted,courseId,launchId,cabinetId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyWatchedLessonGroup(course: $course, id: $id, format: $format, type: $type, startDate: $startDate, graduatedDate: $graduatedDate, disbandedDate: $disbandedDate, hasDoubleLesson: $hasDoubleLesson, status: $status, studyTime: $studyTime, days: $days, startLessonNumber: $startLessonNumber, videoDeleted: $videoDeleted, courseId: $courseId, launchId: $launchId, cabinetId: $cabinetId)';
}


}

/// @nodoc
abstract mixin class _$MyWatchedLessonGroupCopyWith<$Res> implements $MyWatchedLessonGroupCopyWith<$Res> {
  factory _$MyWatchedLessonGroupCopyWith(_MyWatchedLessonGroup value, $Res Function(_MyWatchedLessonGroup) _then) = __$MyWatchedLessonGroupCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'course') MyWatchedLessonCourse? course,@JsonKey(name: 'id') int? id,@JsonKey(name: 'format') String? format,@JsonKey(name: 'type') String? type,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'graduated_date') String? graduatedDate,@JsonKey(name: 'disbanded_date') String? disbandedDate,@JsonKey(name: 'has_double_lesson') bool? hasDoubleLesson,@JsonKey(name: 'status') String? status,@JsonKey(name: 'study_time') String? studyTime,@JsonKey(name: 'days') List<int>? days,@JsonKey(name: 'start_lesson_number') int? startLessonNumber,@JsonKey(name: 'video_deleted') bool? videoDeleted,@JsonKey(name: 'course_id') int? courseId,@JsonKey(name: 'launch_id') int? launchId,@JsonKey(name: 'cabinet_id') int? cabinetId
});


@override $MyWatchedLessonCourseCopyWith<$Res>? get course;

}
/// @nodoc
class __$MyWatchedLessonGroupCopyWithImpl<$Res>
    implements _$MyWatchedLessonGroupCopyWith<$Res> {
  __$MyWatchedLessonGroupCopyWithImpl(this._self, this._then);

  final _MyWatchedLessonGroup _self;
  final $Res Function(_MyWatchedLessonGroup) _then;

/// Create a copy of MyWatchedLessonGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? course = freezed,Object? id = freezed,Object? format = freezed,Object? type = freezed,Object? startDate = freezed,Object? graduatedDate = freezed,Object? disbandedDate = freezed,Object? hasDoubleLesson = freezed,Object? status = freezed,Object? studyTime = freezed,Object? days = freezed,Object? startLessonNumber = freezed,Object? videoDeleted = freezed,Object? courseId = freezed,Object? launchId = freezed,Object? cabinetId = freezed,}) {
  return _then(_MyWatchedLessonGroup(
course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as MyWatchedLessonCourse?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,graduatedDate: freezed == graduatedDate ? _self.graduatedDate : graduatedDate // ignore: cast_nullable_to_non_nullable
as String?,disbandedDate: freezed == disbandedDate ? _self.disbandedDate : disbandedDate // ignore: cast_nullable_to_non_nullable
as String?,hasDoubleLesson: freezed == hasDoubleLesson ? _self.hasDoubleLesson : hasDoubleLesson // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,studyTime: freezed == studyTime ? _self.studyTime : studyTime // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<int>?,startLessonNumber: freezed == startLessonNumber ? _self.startLessonNumber : startLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,videoDeleted: freezed == videoDeleted ? _self.videoDeleted : videoDeleted // ignore: cast_nullable_to_non_nullable
as bool?,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,launchId: freezed == launchId ? _self.launchId : launchId // ignore: cast_nullable_to_non_nullable
as int?,cabinetId: freezed == cabinetId ? _self.cabinetId : cabinetId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of MyWatchedLessonGroup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyWatchedLessonCourseCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $MyWatchedLessonCourseCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}


/// @nodoc
mixin _$MyWatchedLessonCourse implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'banner') String? get banner;@JsonKey(name: 'ads_banner') String? get adsBanner;@JsonKey(name: 'color') String? get color;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'language') String? get language;
/// Create a copy of MyWatchedLessonCourse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWatchedLessonCourseCopyWith<MyWatchedLessonCourse> get copyWith => _$MyWatchedLessonCourseCopyWithImpl<MyWatchedLessonCourse>(this as MyWatchedLessonCourse, _$identity);

  /// Serializes this MyWatchedLessonCourse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyWatchedLessonCourse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('adsBanner', adsBanner))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('language', language));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWatchedLessonCourse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.adsBanner, adsBanner) || other.adsBanner == adsBanner)&&(identical(other.color, color) || other.color == color)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,banner,adsBanner,color,slug,language);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyWatchedLessonCourse(id: $id, name: $name, icon: $icon, banner: $banner, adsBanner: $adsBanner, color: $color, slug: $slug, language: $language)';
}


}

/// @nodoc
abstract mixin class $MyWatchedLessonCourseCopyWith<$Res>  {
  factory $MyWatchedLessonCourseCopyWith(MyWatchedLessonCourse value, $Res Function(MyWatchedLessonCourse) _then) = _$MyWatchedLessonCourseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'ads_banner') String? adsBanner,@JsonKey(name: 'color') String? color,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'language') String? language
});




}
/// @nodoc
class _$MyWatchedLessonCourseCopyWithImpl<$Res>
    implements $MyWatchedLessonCourseCopyWith<$Res> {
  _$MyWatchedLessonCourseCopyWithImpl(this._self, this._then);

  final MyWatchedLessonCourse _self;
  final $Res Function(MyWatchedLessonCourse) _then;

/// Create a copy of MyWatchedLessonCourse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? banner = freezed,Object? adsBanner = freezed,Object? color = freezed,Object? slug = freezed,Object? language = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,adsBanner: freezed == adsBanner ? _self.adsBanner : adsBanner // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyWatchedLessonCourse].
extension MyWatchedLessonCoursePatterns on MyWatchedLessonCourse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyWatchedLessonCourse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyWatchedLessonCourse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyWatchedLessonCourse value)  $default,){
final _that = this;
switch (_that) {
case _MyWatchedLessonCourse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyWatchedLessonCourse value)?  $default,){
final _that = this;
switch (_that) {
case _MyWatchedLessonCourse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'ads_banner')  String? adsBanner, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'language')  String? language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyWatchedLessonCourse() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.banner,_that.adsBanner,_that.color,_that.slug,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'ads_banner')  String? adsBanner, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'language')  String? language)  $default,) {final _that = this;
switch (_that) {
case _MyWatchedLessonCourse():
return $default(_that.id,_that.name,_that.icon,_that.banner,_that.adsBanner,_that.color,_that.slug,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'ads_banner')  String? adsBanner, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'language')  String? language)?  $default,) {final _that = this;
switch (_that) {
case _MyWatchedLessonCourse() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.banner,_that.adsBanner,_that.color,_that.slug,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyWatchedLessonCourse with DiagnosticableTreeMixin implements MyWatchedLessonCourse {
  const _MyWatchedLessonCourse({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'banner') this.banner, @JsonKey(name: 'ads_banner') this.adsBanner, @JsonKey(name: 'color') this.color, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'language') this.language});
  factory _MyWatchedLessonCourse.fromJson(Map<String, dynamic> json) => _$MyWatchedLessonCourseFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'banner') final  String? banner;
@override@JsonKey(name: 'ads_banner') final  String? adsBanner;
@override@JsonKey(name: 'color') final  String? color;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'language') final  String? language;

/// Create a copy of MyWatchedLessonCourse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyWatchedLessonCourseCopyWith<_MyWatchedLessonCourse> get copyWith => __$MyWatchedLessonCourseCopyWithImpl<_MyWatchedLessonCourse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyWatchedLessonCourseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyWatchedLessonCourse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('adsBanner', adsBanner))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('language', language));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyWatchedLessonCourse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.adsBanner, adsBanner) || other.adsBanner == adsBanner)&&(identical(other.color, color) || other.color == color)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,banner,adsBanner,color,slug,language);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyWatchedLessonCourse(id: $id, name: $name, icon: $icon, banner: $banner, adsBanner: $adsBanner, color: $color, slug: $slug, language: $language)';
}


}

/// @nodoc
abstract mixin class _$MyWatchedLessonCourseCopyWith<$Res> implements $MyWatchedLessonCourseCopyWith<$Res> {
  factory _$MyWatchedLessonCourseCopyWith(_MyWatchedLessonCourse value, $Res Function(_MyWatchedLessonCourse) _then) = __$MyWatchedLessonCourseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'ads_banner') String? adsBanner,@JsonKey(name: 'color') String? color,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'language') String? language
});




}
/// @nodoc
class __$MyWatchedLessonCourseCopyWithImpl<$Res>
    implements _$MyWatchedLessonCourseCopyWith<$Res> {
  __$MyWatchedLessonCourseCopyWithImpl(this._self, this._then);

  final _MyWatchedLessonCourse _self;
  final $Res Function(_MyWatchedLessonCourse) _then;

/// Create a copy of MyWatchedLessonCourse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? banner = freezed,Object? adsBanner = freezed,Object? color = freezed,Object? slug = freezed,Object? language = freezed,}) {
  return _then(_MyWatchedLessonCourse(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,adsBanner: freezed == adsBanner ? _self.adsBanner : adsBanner // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
