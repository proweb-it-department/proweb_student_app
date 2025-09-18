// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_lesson_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupLessonInfo implements DiagnosticableTreeMixin {

@JsonKey(name: 'group_lesson') GroupLesson? get groupLesson;@JsonKey(name: 'access_to_lesson') bool? get accessToLesson;@JsonKey(name: 'access_to_video') bool? get accessToVideo;@JsonKey(name: 'visited') bool? get visited;@JsonKey(name: 'visited_type') String? get visitedType;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'relation_id') int? get relationId;@JsonKey(name: 'note') String? get note;@JsonKey(name: 'banner') String? get banner;@JsonKey(name: 'status_video') StatusVideoLoad? get statusVideo;
/// Create a copy of GroupLessonInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupLessonInfoCopyWith<GroupLessonInfo> get copyWith => _$GroupLessonInfoCopyWithImpl<GroupLessonInfo>(this as GroupLessonInfo, _$identity);

  /// Serializes this GroupLessonInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupLessonInfo'))
    ..add(DiagnosticsProperty('groupLesson', groupLesson))..add(DiagnosticsProperty('accessToLesson', accessToLesson))..add(DiagnosticsProperty('accessToVideo', accessToVideo))..add(DiagnosticsProperty('visited', visited))..add(DiagnosticsProperty('visitedType', visitedType))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('relationId', relationId))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('statusVideo', statusVideo));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupLessonInfo&&(identical(other.groupLesson, groupLesson) || other.groupLesson == groupLesson)&&(identical(other.accessToLesson, accessToLesson) || other.accessToLesson == accessToLesson)&&(identical(other.accessToVideo, accessToVideo) || other.accessToVideo == accessToVideo)&&(identical(other.visited, visited) || other.visited == visited)&&(identical(other.visitedType, visitedType) || other.visitedType == visitedType)&&(identical(other.score, score) || other.score == score)&&(identical(other.relationId, relationId) || other.relationId == relationId)&&(identical(other.note, note) || other.note == note)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.statusVideo, statusVideo) || other.statusVideo == statusVideo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupLesson,accessToLesson,accessToVideo,visited,visitedType,score,relationId,note,banner,statusVideo);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupLessonInfo(groupLesson: $groupLesson, accessToLesson: $accessToLesson, accessToVideo: $accessToVideo, visited: $visited, visitedType: $visitedType, score: $score, relationId: $relationId, note: $note, banner: $banner, statusVideo: $statusVideo)';
}


}

/// @nodoc
abstract mixin class $GroupLessonInfoCopyWith<$Res>  {
  factory $GroupLessonInfoCopyWith(GroupLessonInfo value, $Res Function(GroupLessonInfo) _then) = _$GroupLessonInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'group_lesson') GroupLesson? groupLesson,@JsonKey(name: 'access_to_lesson') bool? accessToLesson,@JsonKey(name: 'access_to_video') bool? accessToVideo,@JsonKey(name: 'visited') bool? visited,@JsonKey(name: 'visited_type') String? visitedType,@JsonKey(name: 'score') int? score,@JsonKey(name: 'relation_id') int? relationId,@JsonKey(name: 'note') String? note,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'status_video') StatusVideoLoad? statusVideo
});


$GroupLessonCopyWith<$Res>? get groupLesson;

}
/// @nodoc
class _$GroupLessonInfoCopyWithImpl<$Res>
    implements $GroupLessonInfoCopyWith<$Res> {
  _$GroupLessonInfoCopyWithImpl(this._self, this._then);

  final GroupLessonInfo _self;
  final $Res Function(GroupLessonInfo) _then;

/// Create a copy of GroupLessonInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupLesson = freezed,Object? accessToLesson = freezed,Object? accessToVideo = freezed,Object? visited = freezed,Object? visitedType = freezed,Object? score = freezed,Object? relationId = freezed,Object? note = freezed,Object? banner = freezed,Object? statusVideo = freezed,}) {
  return _then(_self.copyWith(
groupLesson: freezed == groupLesson ? _self.groupLesson : groupLesson // ignore: cast_nullable_to_non_nullable
as GroupLesson?,accessToLesson: freezed == accessToLesson ? _self.accessToLesson : accessToLesson // ignore: cast_nullable_to_non_nullable
as bool?,accessToVideo: freezed == accessToVideo ? _self.accessToVideo : accessToVideo // ignore: cast_nullable_to_non_nullable
as bool?,visited: freezed == visited ? _self.visited : visited // ignore: cast_nullable_to_non_nullable
as bool?,visitedType: freezed == visitedType ? _self.visitedType : visitedType // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,relationId: freezed == relationId ? _self.relationId : relationId // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,statusVideo: freezed == statusVideo ? _self.statusVideo : statusVideo // ignore: cast_nullable_to_non_nullable
as StatusVideoLoad?,
  ));
}
/// Create a copy of GroupLessonInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupLessonCopyWith<$Res>? get groupLesson {
    if (_self.groupLesson == null) {
    return null;
  }

  return $GroupLessonCopyWith<$Res>(_self.groupLesson!, (value) {
    return _then(_self.copyWith(groupLesson: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupLessonInfo].
extension GroupLessonInfoPatterns on GroupLessonInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupLessonInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupLessonInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupLessonInfo value)  $default,){
final _that = this;
switch (_that) {
case _GroupLessonInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupLessonInfo value)?  $default,){
final _that = this;
switch (_that) {
case _GroupLessonInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'group_lesson')  GroupLesson? groupLesson, @JsonKey(name: 'access_to_lesson')  bool? accessToLesson, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'visited')  bool? visited, @JsonKey(name: 'visited_type')  String? visitedType, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'relation_id')  int? relationId, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'status_video')  StatusVideoLoad? statusVideo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupLessonInfo() when $default != null:
return $default(_that.groupLesson,_that.accessToLesson,_that.accessToVideo,_that.visited,_that.visitedType,_that.score,_that.relationId,_that.note,_that.banner,_that.statusVideo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'group_lesson')  GroupLesson? groupLesson, @JsonKey(name: 'access_to_lesson')  bool? accessToLesson, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'visited')  bool? visited, @JsonKey(name: 'visited_type')  String? visitedType, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'relation_id')  int? relationId, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'status_video')  StatusVideoLoad? statusVideo)  $default,) {final _that = this;
switch (_that) {
case _GroupLessonInfo():
return $default(_that.groupLesson,_that.accessToLesson,_that.accessToVideo,_that.visited,_that.visitedType,_that.score,_that.relationId,_that.note,_that.banner,_that.statusVideo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'group_lesson')  GroupLesson? groupLesson, @JsonKey(name: 'access_to_lesson')  bool? accessToLesson, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'visited')  bool? visited, @JsonKey(name: 'visited_type')  String? visitedType, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'relation_id')  int? relationId, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'status_video')  StatusVideoLoad? statusVideo)?  $default,) {final _that = this;
switch (_that) {
case _GroupLessonInfo() when $default != null:
return $default(_that.groupLesson,_that.accessToLesson,_that.accessToVideo,_that.visited,_that.visitedType,_that.score,_that.relationId,_that.note,_that.banner,_that.statusVideo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupLessonInfo with DiagnosticableTreeMixin implements GroupLessonInfo {
  const _GroupLessonInfo({@JsonKey(name: 'group_lesson') this.groupLesson, @JsonKey(name: 'access_to_lesson') this.accessToLesson, @JsonKey(name: 'access_to_video') this.accessToVideo, @JsonKey(name: 'visited') this.visited, @JsonKey(name: 'visited_type') this.visitedType, @JsonKey(name: 'score') this.score, @JsonKey(name: 'relation_id') this.relationId, @JsonKey(name: 'note') this.note, @JsonKey(name: 'banner') this.banner, @JsonKey(name: 'status_video') this.statusVideo});
  factory _GroupLessonInfo.fromJson(Map<String, dynamic> json) => _$GroupLessonInfoFromJson(json);

@override@JsonKey(name: 'group_lesson') final  GroupLesson? groupLesson;
@override@JsonKey(name: 'access_to_lesson') final  bool? accessToLesson;
@override@JsonKey(name: 'access_to_video') final  bool? accessToVideo;
@override@JsonKey(name: 'visited') final  bool? visited;
@override@JsonKey(name: 'visited_type') final  String? visitedType;
@override@JsonKey(name: 'score') final  int? score;
@override@JsonKey(name: 'relation_id') final  int? relationId;
@override@JsonKey(name: 'note') final  String? note;
@override@JsonKey(name: 'banner') final  String? banner;
@override@JsonKey(name: 'status_video') final  StatusVideoLoad? statusVideo;

/// Create a copy of GroupLessonInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupLessonInfoCopyWith<_GroupLessonInfo> get copyWith => __$GroupLessonInfoCopyWithImpl<_GroupLessonInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupLessonInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupLessonInfo'))
    ..add(DiagnosticsProperty('groupLesson', groupLesson))..add(DiagnosticsProperty('accessToLesson', accessToLesson))..add(DiagnosticsProperty('accessToVideo', accessToVideo))..add(DiagnosticsProperty('visited', visited))..add(DiagnosticsProperty('visitedType', visitedType))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('relationId', relationId))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('statusVideo', statusVideo));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupLessonInfo&&(identical(other.groupLesson, groupLesson) || other.groupLesson == groupLesson)&&(identical(other.accessToLesson, accessToLesson) || other.accessToLesson == accessToLesson)&&(identical(other.accessToVideo, accessToVideo) || other.accessToVideo == accessToVideo)&&(identical(other.visited, visited) || other.visited == visited)&&(identical(other.visitedType, visitedType) || other.visitedType == visitedType)&&(identical(other.score, score) || other.score == score)&&(identical(other.relationId, relationId) || other.relationId == relationId)&&(identical(other.note, note) || other.note == note)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.statusVideo, statusVideo) || other.statusVideo == statusVideo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupLesson,accessToLesson,accessToVideo,visited,visitedType,score,relationId,note,banner,statusVideo);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupLessonInfo(groupLesson: $groupLesson, accessToLesson: $accessToLesson, accessToVideo: $accessToVideo, visited: $visited, visitedType: $visitedType, score: $score, relationId: $relationId, note: $note, banner: $banner, statusVideo: $statusVideo)';
}


}

/// @nodoc
abstract mixin class _$GroupLessonInfoCopyWith<$Res> implements $GroupLessonInfoCopyWith<$Res> {
  factory _$GroupLessonInfoCopyWith(_GroupLessonInfo value, $Res Function(_GroupLessonInfo) _then) = __$GroupLessonInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'group_lesson') GroupLesson? groupLesson,@JsonKey(name: 'access_to_lesson') bool? accessToLesson,@JsonKey(name: 'access_to_video') bool? accessToVideo,@JsonKey(name: 'visited') bool? visited,@JsonKey(name: 'visited_type') String? visitedType,@JsonKey(name: 'score') int? score,@JsonKey(name: 'relation_id') int? relationId,@JsonKey(name: 'note') String? note,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'status_video') StatusVideoLoad? statusVideo
});


@override $GroupLessonCopyWith<$Res>? get groupLesson;

}
/// @nodoc
class __$GroupLessonInfoCopyWithImpl<$Res>
    implements _$GroupLessonInfoCopyWith<$Res> {
  __$GroupLessonInfoCopyWithImpl(this._self, this._then);

  final _GroupLessonInfo _self;
  final $Res Function(_GroupLessonInfo) _then;

/// Create a copy of GroupLessonInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupLesson = freezed,Object? accessToLesson = freezed,Object? accessToVideo = freezed,Object? visited = freezed,Object? visitedType = freezed,Object? score = freezed,Object? relationId = freezed,Object? note = freezed,Object? banner = freezed,Object? statusVideo = freezed,}) {
  return _then(_GroupLessonInfo(
groupLesson: freezed == groupLesson ? _self.groupLesson : groupLesson // ignore: cast_nullable_to_non_nullable
as GroupLesson?,accessToLesson: freezed == accessToLesson ? _self.accessToLesson : accessToLesson // ignore: cast_nullable_to_non_nullable
as bool?,accessToVideo: freezed == accessToVideo ? _self.accessToVideo : accessToVideo // ignore: cast_nullable_to_non_nullable
as bool?,visited: freezed == visited ? _self.visited : visited // ignore: cast_nullable_to_non_nullable
as bool?,visitedType: freezed == visitedType ? _self.visitedType : visitedType // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,relationId: freezed == relationId ? _self.relationId : relationId // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,statusVideo: freezed == statusVideo ? _self.statusVideo : statusVideo // ignore: cast_nullable_to_non_nullable
as StatusVideoLoad?,
  ));
}

/// Create a copy of GroupLessonInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupLessonCopyWith<$Res>? get groupLesson {
    if (_self.groupLesson == null) {
    return null;
  }

  return $GroupLessonCopyWith<$Res>(_self.groupLesson!, (value) {
    return _then(_self.copyWith(groupLesson: value));
  });
}
}


/// @nodoc
mixin _$GroupLesson implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'datetime') String? get datetime;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'rescheduled_reason') String? get rescheduledReason;@JsonKey(name: 'lesson_number') int? get lessonNumber;@JsonKey(name: 'handbook') Handbook? get handbook;@JsonKey(name: 'middle_rating') String? get middleRating;@JsonKey(name: 'videos') List<Videos>? get videos;
/// Create a copy of GroupLesson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupLessonCopyWith<GroupLesson> get copyWith => _$GroupLessonCopyWithImpl<GroupLesson>(this as GroupLesson, _$identity);

  /// Serializes this GroupLesson to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupLesson'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('rescheduledReason', rescheduledReason))..add(DiagnosticsProperty('lessonNumber', lessonNumber))..add(DiagnosticsProperty('handbook', handbook))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('videos', videos));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupLesson&&(identical(other.id, id) || other.id == id)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.rescheduledReason, rescheduledReason) || other.rescheduledReason == rescheduledReason)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber)&&(identical(other.handbook, handbook) || other.handbook == handbook)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&const DeepCollectionEquality().equals(other.videos, videos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,datetime,type,status,rescheduledReason,lessonNumber,handbook,middleRating,const DeepCollectionEquality().hash(videos));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupLesson(id: $id, datetime: $datetime, type: $type, status: $status, rescheduledReason: $rescheduledReason, lessonNumber: $lessonNumber, handbook: $handbook, middleRating: $middleRating, videos: $videos)';
}


}

/// @nodoc
abstract mixin class $GroupLessonCopyWith<$Res>  {
  factory $GroupLessonCopyWith(GroupLesson value, $Res Function(GroupLesson) _then) = _$GroupLessonCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'datetime') String? datetime,@JsonKey(name: 'type') String? type,@JsonKey(name: 'status') String? status,@JsonKey(name: 'rescheduled_reason') String? rescheduledReason,@JsonKey(name: 'lesson_number') int? lessonNumber,@JsonKey(name: 'handbook') Handbook? handbook,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'videos') List<Videos>? videos
});


$HandbookCopyWith<$Res>? get handbook;

}
/// @nodoc
class _$GroupLessonCopyWithImpl<$Res>
    implements $GroupLessonCopyWith<$Res> {
  _$GroupLessonCopyWithImpl(this._self, this._then);

  final GroupLesson _self;
  final $Res Function(GroupLesson) _then;

/// Create a copy of GroupLesson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? datetime = freezed,Object? type = freezed,Object? status = freezed,Object? rescheduledReason = freezed,Object? lessonNumber = freezed,Object? handbook = freezed,Object? middleRating = freezed,Object? videos = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,rescheduledReason: freezed == rescheduledReason ? _self.rescheduledReason : rescheduledReason // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,handbook: freezed == handbook ? _self.handbook : handbook // ignore: cast_nullable_to_non_nullable
as Handbook?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,videos: freezed == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<Videos>?,
  ));
}
/// Create a copy of GroupLesson
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandbookCopyWith<$Res>? get handbook {
    if (_self.handbook == null) {
    return null;
  }

  return $HandbookCopyWith<$Res>(_self.handbook!, (value) {
    return _then(_self.copyWith(handbook: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupLesson].
extension GroupLessonPatterns on GroupLesson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupLesson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupLesson() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupLesson value)  $default,){
final _that = this;
switch (_that) {
case _GroupLesson():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupLesson value)?  $default,){
final _that = this;
switch (_that) {
case _GroupLesson() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'handbook')  Handbook? handbook, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'videos')  List<Videos>? videos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupLesson() when $default != null:
return $default(_that.id,_that.datetime,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.handbook,_that.middleRating,_that.videos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'handbook')  Handbook? handbook, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'videos')  List<Videos>? videos)  $default,) {final _that = this;
switch (_that) {
case _GroupLesson():
return $default(_that.id,_that.datetime,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.handbook,_that.middleRating,_that.videos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'handbook')  Handbook? handbook, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'videos')  List<Videos>? videos)?  $default,) {final _that = this;
switch (_that) {
case _GroupLesson() when $default != null:
return $default(_that.id,_that.datetime,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.handbook,_that.middleRating,_that.videos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupLesson with DiagnosticableTreeMixin implements GroupLesson {
  const _GroupLesson({@JsonKey(name: 'id') this.id, @JsonKey(name: 'datetime') this.datetime, @JsonKey(name: 'type') this.type, @JsonKey(name: 'status') this.status, @JsonKey(name: 'rescheduled_reason') this.rescheduledReason, @JsonKey(name: 'lesson_number') this.lessonNumber, @JsonKey(name: 'handbook') this.handbook, @JsonKey(name: 'middle_rating') this.middleRating, @JsonKey(name: 'videos') final  List<Videos>? videos}): _videos = videos;
  factory _GroupLesson.fromJson(Map<String, dynamic> json) => _$GroupLessonFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'datetime') final  String? datetime;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'rescheduled_reason') final  String? rescheduledReason;
@override@JsonKey(name: 'lesson_number') final  int? lessonNumber;
@override@JsonKey(name: 'handbook') final  Handbook? handbook;
@override@JsonKey(name: 'middle_rating') final  String? middleRating;
 final  List<Videos>? _videos;
@override@JsonKey(name: 'videos') List<Videos>? get videos {
  final value = _videos;
  if (value == null) return null;
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GroupLesson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupLessonCopyWith<_GroupLesson> get copyWith => __$GroupLessonCopyWithImpl<_GroupLesson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupLessonToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupLesson'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('rescheduledReason', rescheduledReason))..add(DiagnosticsProperty('lessonNumber', lessonNumber))..add(DiagnosticsProperty('handbook', handbook))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('videos', videos));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupLesson&&(identical(other.id, id) || other.id == id)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.rescheduledReason, rescheduledReason) || other.rescheduledReason == rescheduledReason)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber)&&(identical(other.handbook, handbook) || other.handbook == handbook)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&const DeepCollectionEquality().equals(other._videos, _videos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,datetime,type,status,rescheduledReason,lessonNumber,handbook,middleRating,const DeepCollectionEquality().hash(_videos));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupLesson(id: $id, datetime: $datetime, type: $type, status: $status, rescheduledReason: $rescheduledReason, lessonNumber: $lessonNumber, handbook: $handbook, middleRating: $middleRating, videos: $videos)';
}


}

/// @nodoc
abstract mixin class _$GroupLessonCopyWith<$Res> implements $GroupLessonCopyWith<$Res> {
  factory _$GroupLessonCopyWith(_GroupLesson value, $Res Function(_GroupLesson) _then) = __$GroupLessonCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'datetime') String? datetime,@JsonKey(name: 'type') String? type,@JsonKey(name: 'status') String? status,@JsonKey(name: 'rescheduled_reason') String? rescheduledReason,@JsonKey(name: 'lesson_number') int? lessonNumber,@JsonKey(name: 'handbook') Handbook? handbook,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'videos') List<Videos>? videos
});


@override $HandbookCopyWith<$Res>? get handbook;

}
/// @nodoc
class __$GroupLessonCopyWithImpl<$Res>
    implements _$GroupLessonCopyWith<$Res> {
  __$GroupLessonCopyWithImpl(this._self, this._then);

  final _GroupLesson _self;
  final $Res Function(_GroupLesson) _then;

/// Create a copy of GroupLesson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? datetime = freezed,Object? type = freezed,Object? status = freezed,Object? rescheduledReason = freezed,Object? lessonNumber = freezed,Object? handbook = freezed,Object? middleRating = freezed,Object? videos = freezed,}) {
  return _then(_GroupLesson(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,rescheduledReason: freezed == rescheduledReason ? _self.rescheduledReason : rescheduledReason // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,handbook: freezed == handbook ? _self.handbook : handbook // ignore: cast_nullable_to_non_nullable
as Handbook?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,videos: freezed == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<Videos>?,
  ));
}

/// Create a copy of GroupLesson
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandbookCopyWith<$Res>? get handbook {
    if (_self.handbook == null) {
    return null;
  }

  return $HandbookCopyWith<$Res>(_self.handbook!, (value) {
    return _then(_self.copyWith(handbook: value));
  });
}
}


/// @nodoc
mixin _$Videos implements DiagnosticableTreeMixin {

@JsonKey(name: 'video_key') String? get videoKey;@JsonKey(name: 'video') VideoModel? get video;
/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideosCopyWith<Videos> get copyWith => _$VideosCopyWithImpl<Videos>(this as Videos, _$identity);

  /// Serializes this Videos to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Videos'))
    ..add(DiagnosticsProperty('videoKey', videoKey))..add(DiagnosticsProperty('video', video));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Videos&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey)&&(identical(other.video, video) || other.video == video));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,videoKey,video);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Videos(videoKey: $videoKey, video: $video)';
}


}

/// @nodoc
abstract mixin class $VideosCopyWith<$Res>  {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) _then) = _$VideosCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'video_key') String? videoKey,@JsonKey(name: 'video') VideoModel? video
});


$VideoModelCopyWith<$Res>? get video;

}
/// @nodoc
class _$VideosCopyWithImpl<$Res>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._self, this._then);

  final Videos _self;
  final $Res Function(Videos) _then;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videoKey = freezed,Object? video = freezed,}) {
  return _then(_self.copyWith(
videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as VideoModel?,
  ));
}
/// Create a copy of Videos
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


/// Adds pattern-matching-related methods to [Videos].
extension VideosPatterns on Videos {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Videos value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Videos() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Videos value)  $default,){
final _that = this;
switch (_that) {
case _Videos():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Videos value)?  $default,){
final _that = this;
switch (_that) {
case _Videos() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'video')  VideoModel? video)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Videos() when $default != null:
return $default(_that.videoKey,_that.video);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'video')  VideoModel? video)  $default,) {final _that = this;
switch (_that) {
case _Videos():
return $default(_that.videoKey,_that.video);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'video')  VideoModel? video)?  $default,) {final _that = this;
switch (_that) {
case _Videos() when $default != null:
return $default(_that.videoKey,_that.video);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Videos with DiagnosticableTreeMixin implements Videos {
  const _Videos({@JsonKey(name: 'video_key') this.videoKey, @JsonKey(name: 'video') this.video});
  factory _Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);

@override@JsonKey(name: 'video_key') final  String? videoKey;
@override@JsonKey(name: 'video') final  VideoModel? video;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideosCopyWith<_Videos> get copyWith => __$VideosCopyWithImpl<_Videos>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideosToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Videos'))
    ..add(DiagnosticsProperty('videoKey', videoKey))..add(DiagnosticsProperty('video', video));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Videos&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey)&&(identical(other.video, video) || other.video == video));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,videoKey,video);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Videos(videoKey: $videoKey, video: $video)';
}


}

/// @nodoc
abstract mixin class _$VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$VideosCopyWith(_Videos value, $Res Function(_Videos) _then) = __$VideosCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'video_key') String? videoKey,@JsonKey(name: 'video') VideoModel? video
});


@override $VideoModelCopyWith<$Res>? get video;

}
/// @nodoc
class __$VideosCopyWithImpl<$Res>
    implements _$VideosCopyWith<$Res> {
  __$VideosCopyWithImpl(this._self, this._then);

  final _Videos _self;
  final $Res Function(_Videos) _then;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videoKey = freezed,Object? video = freezed,}) {
  return _then(_Videos(
videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as VideoModel?,
  ));
}

/// Create a copy of Videos
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
mixin _$Handbook implements DiagnosticableTreeMixin {

@JsonKey(name: 'handbook_links') List<HandbookLinks>? get handbookLinks;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'lesson_number') String? get lessonNumber;
/// Create a copy of Handbook
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandbookCopyWith<Handbook> get copyWith => _$HandbookCopyWithImpl<Handbook>(this as Handbook, _$identity);

  /// Serializes this Handbook to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Handbook'))
    ..add(DiagnosticsProperty('handbookLinks', handbookLinks))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('lessonNumber', lessonNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Handbook&&const DeepCollectionEquality().equals(other.handbookLinks, handbookLinks)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(handbookLinks),id,name,lessonNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Handbook(handbookLinks: $handbookLinks, id: $id, name: $name, lessonNumber: $lessonNumber)';
}


}

/// @nodoc
abstract mixin class $HandbookCopyWith<$Res>  {
  factory $HandbookCopyWith(Handbook value, $Res Function(Handbook) _then) = _$HandbookCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'handbook_links') List<HandbookLinks>? handbookLinks,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'lesson_number') String? lessonNumber
});




}
/// @nodoc
class _$HandbookCopyWithImpl<$Res>
    implements $HandbookCopyWith<$Res> {
  _$HandbookCopyWithImpl(this._self, this._then);

  final Handbook _self;
  final $Res Function(Handbook) _then;

/// Create a copy of Handbook
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? handbookLinks = freezed,Object? id = freezed,Object? name = freezed,Object? lessonNumber = freezed,}) {
  return _then(_self.copyWith(
handbookLinks: freezed == handbookLinks ? _self.handbookLinks : handbookLinks // ignore: cast_nullable_to_non_nullable
as List<HandbookLinks>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Handbook].
extension HandbookPatterns on Handbook {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Handbook value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Handbook() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Handbook value)  $default,){
final _that = this;
switch (_that) {
case _Handbook():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Handbook value)?  $default,){
final _that = this;
switch (_that) {
case _Handbook() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'handbook_links')  List<HandbookLinks>? handbookLinks, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'lesson_number')  String? lessonNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Handbook() when $default != null:
return $default(_that.handbookLinks,_that.id,_that.name,_that.lessonNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'handbook_links')  List<HandbookLinks>? handbookLinks, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'lesson_number')  String? lessonNumber)  $default,) {final _that = this;
switch (_that) {
case _Handbook():
return $default(_that.handbookLinks,_that.id,_that.name,_that.lessonNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'handbook_links')  List<HandbookLinks>? handbookLinks, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'lesson_number')  String? lessonNumber)?  $default,) {final _that = this;
switch (_that) {
case _Handbook() when $default != null:
return $default(_that.handbookLinks,_that.id,_that.name,_that.lessonNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Handbook with DiagnosticableTreeMixin implements Handbook {
  const _Handbook({@JsonKey(name: 'handbook_links') final  List<HandbookLinks>? handbookLinks, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'lesson_number') this.lessonNumber}): _handbookLinks = handbookLinks;
  factory _Handbook.fromJson(Map<String, dynamic> json) => _$HandbookFromJson(json);

 final  List<HandbookLinks>? _handbookLinks;
@override@JsonKey(name: 'handbook_links') List<HandbookLinks>? get handbookLinks {
  final value = _handbookLinks;
  if (value == null) return null;
  if (_handbookLinks is EqualUnmodifiableListView) return _handbookLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'lesson_number') final  String? lessonNumber;

/// Create a copy of Handbook
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandbookCopyWith<_Handbook> get copyWith => __$HandbookCopyWithImpl<_Handbook>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandbookToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Handbook'))
    ..add(DiagnosticsProperty('handbookLinks', handbookLinks))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('lessonNumber', lessonNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Handbook&&const DeepCollectionEquality().equals(other._handbookLinks, _handbookLinks)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_handbookLinks),id,name,lessonNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Handbook(handbookLinks: $handbookLinks, id: $id, name: $name, lessonNumber: $lessonNumber)';
}


}

/// @nodoc
abstract mixin class _$HandbookCopyWith<$Res> implements $HandbookCopyWith<$Res> {
  factory _$HandbookCopyWith(_Handbook value, $Res Function(_Handbook) _then) = __$HandbookCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'handbook_links') List<HandbookLinks>? handbookLinks,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'lesson_number') String? lessonNumber
});




}
/// @nodoc
class __$HandbookCopyWithImpl<$Res>
    implements _$HandbookCopyWith<$Res> {
  __$HandbookCopyWithImpl(this._self, this._then);

  final _Handbook _self;
  final $Res Function(_Handbook) _then;

/// Create a copy of Handbook
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? handbookLinks = freezed,Object? id = freezed,Object? name = freezed,Object? lessonNumber = freezed,}) {
  return _then(_Handbook(
handbookLinks: freezed == handbookLinks ? _self._handbookLinks : handbookLinks // ignore: cast_nullable_to_non_nullable
as List<HandbookLinks>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HandbookLinks implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'link') String? get link;
/// Create a copy of HandbookLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandbookLinksCopyWith<HandbookLinks> get copyWith => _$HandbookLinksCopyWithImpl<HandbookLinks>(this as HandbookLinks, _$identity);

  /// Serializes this HandbookLinks to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HandbookLinks'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('link', link));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandbookLinks&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,link);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HandbookLinks(id: $id, name: $name, link: $link)';
}


}

/// @nodoc
abstract mixin class $HandbookLinksCopyWith<$Res>  {
  factory $HandbookLinksCopyWith(HandbookLinks value, $Res Function(HandbookLinks) _then) = _$HandbookLinksCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'link') String? link
});




}
/// @nodoc
class _$HandbookLinksCopyWithImpl<$Res>
    implements $HandbookLinksCopyWith<$Res> {
  _$HandbookLinksCopyWithImpl(this._self, this._then);

  final HandbookLinks _self;
  final $Res Function(HandbookLinks) _then;

/// Create a copy of HandbookLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? link = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HandbookLinks].
extension HandbookLinksPatterns on HandbookLinks {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandbookLinks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandbookLinks() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandbookLinks value)  $default,){
final _that = this;
switch (_that) {
case _HandbookLinks():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandbookLinks value)?  $default,){
final _that = this;
switch (_that) {
case _HandbookLinks() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'link')  String? link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandbookLinks() when $default != null:
return $default(_that.id,_that.name,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'link')  String? link)  $default,) {final _that = this;
switch (_that) {
case _HandbookLinks():
return $default(_that.id,_that.name,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'link')  String? link)?  $default,) {final _that = this;
switch (_that) {
case _HandbookLinks() when $default != null:
return $default(_that.id,_that.name,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandbookLinks with DiagnosticableTreeMixin implements HandbookLinks {
  const _HandbookLinks({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'link') this.link});
  factory _HandbookLinks.fromJson(Map<String, dynamic> json) => _$HandbookLinksFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'link') final  String? link;

/// Create a copy of HandbookLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandbookLinksCopyWith<_HandbookLinks> get copyWith => __$HandbookLinksCopyWithImpl<_HandbookLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandbookLinksToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HandbookLinks'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('link', link));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandbookLinks&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,link);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HandbookLinks(id: $id, name: $name, link: $link)';
}


}

/// @nodoc
abstract mixin class _$HandbookLinksCopyWith<$Res> implements $HandbookLinksCopyWith<$Res> {
  factory _$HandbookLinksCopyWith(_HandbookLinks value, $Res Function(_HandbookLinks) _then) = __$HandbookLinksCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'link') String? link
});




}
/// @nodoc
class __$HandbookLinksCopyWithImpl<$Res>
    implements _$HandbookLinksCopyWith<$Res> {
  __$HandbookLinksCopyWithImpl(this._self, this._then);

  final _HandbookLinks _self;
  final $Res Function(_HandbookLinks) _then;

/// Create a copy of HandbookLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? link = freezed,}) {
  return _then(_HandbookLinks(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
