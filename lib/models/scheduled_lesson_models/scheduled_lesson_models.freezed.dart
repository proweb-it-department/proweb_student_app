// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_lesson_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduledLessonModels implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'datetime') String? get datetime;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'rescheduled_reason') String? get rescheduledReason;@JsonKey(name: 'lesson_number') int? get lessonNumber;@JsonKey(name: 'middle_rating') String? get middleRating;@JsonKey(name: 'videos') List<Videos>? get videos;@JsonKey(name: 'handbook') Handbook? get handbook; MyGroupsItem? get myGroup;
/// Create a copy of ScheduledLessonModels
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduledLessonModelsCopyWith<ScheduledLessonModels> get copyWith => _$ScheduledLessonModelsCopyWithImpl<ScheduledLessonModels>(this as ScheduledLessonModels, _$identity);

  /// Serializes this ScheduledLessonModels to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ScheduledLessonModels'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('rescheduledReason', rescheduledReason))..add(DiagnosticsProperty('lessonNumber', lessonNumber))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('videos', videos))..add(DiagnosticsProperty('handbook', handbook))..add(DiagnosticsProperty('myGroup', myGroup));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduledLessonModels&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.rescheduledReason, rescheduledReason) || other.rescheduledReason == rescheduledReason)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&const DeepCollectionEquality().equals(other.videos, videos)&&(identical(other.handbook, handbook) || other.handbook == handbook)&&(identical(other.myGroup, myGroup) || other.myGroup == myGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,id,datetime,type,status,rescheduledReason,lessonNumber,middleRating,const DeepCollectionEquality().hash(videos),handbook,myGroup);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ScheduledLessonModels(createdAt: $createdAt, updatedAt: $updatedAt, id: $id, datetime: $datetime, type: $type, status: $status, rescheduledReason: $rescheduledReason, lessonNumber: $lessonNumber, middleRating: $middleRating, videos: $videos, handbook: $handbook, myGroup: $myGroup)';
}


}

/// @nodoc
abstract mixin class $ScheduledLessonModelsCopyWith<$Res>  {
  factory $ScheduledLessonModelsCopyWith(ScheduledLessonModels value, $Res Function(ScheduledLessonModels) _then) = _$ScheduledLessonModelsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'id') int? id,@JsonKey(name: 'datetime') String? datetime,@JsonKey(name: 'type') String? type,@JsonKey(name: 'status') String? status,@JsonKey(name: 'rescheduled_reason') String? rescheduledReason,@JsonKey(name: 'lesson_number') int? lessonNumber,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'videos') List<Videos>? videos,@JsonKey(name: 'handbook') Handbook? handbook, MyGroupsItem? myGroup
});


$HandbookCopyWith<$Res>? get handbook;$MyGroupsItemCopyWith<$Res>? get myGroup;

}
/// @nodoc
class _$ScheduledLessonModelsCopyWithImpl<$Res>
    implements $ScheduledLessonModelsCopyWith<$Res> {
  _$ScheduledLessonModelsCopyWithImpl(this._self, this._then);

  final ScheduledLessonModels _self;
  final $Res Function(ScheduledLessonModels) _then;

/// Create a copy of ScheduledLessonModels
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? id = freezed,Object? datetime = freezed,Object? type = freezed,Object? status = freezed,Object? rescheduledReason = freezed,Object? lessonNumber = freezed,Object? middleRating = freezed,Object? videos = freezed,Object? handbook = freezed,Object? myGroup = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,rescheduledReason: freezed == rescheduledReason ? _self.rescheduledReason : rescheduledReason // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,videos: freezed == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<Videos>?,handbook: freezed == handbook ? _self.handbook : handbook // ignore: cast_nullable_to_non_nullable
as Handbook?,myGroup: freezed == myGroup ? _self.myGroup : myGroup // ignore: cast_nullable_to_non_nullable
as MyGroupsItem?,
  ));
}
/// Create a copy of ScheduledLessonModels
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
}/// Create a copy of ScheduledLessonModels
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyGroupsItemCopyWith<$Res>? get myGroup {
    if (_self.myGroup == null) {
    return null;
  }

  return $MyGroupsItemCopyWith<$Res>(_self.myGroup!, (value) {
    return _then(_self.copyWith(myGroup: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduledLessonModels].
extension ScheduledLessonModelsPatterns on ScheduledLessonModels {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduledLessonModels value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduledLessonModels() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduledLessonModels value)  $default,){
final _that = this;
switch (_that) {
case _ScheduledLessonModels():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduledLessonModels value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduledLessonModels() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'videos')  List<Videos>? videos, @JsonKey(name: 'handbook')  Handbook? handbook,  MyGroupsItem? myGroup)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduledLessonModels() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.datetime,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.middleRating,_that.videos,_that.handbook,_that.myGroup);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'videos')  List<Videos>? videos, @JsonKey(name: 'handbook')  Handbook? handbook,  MyGroupsItem? myGroup)  $default,) {final _that = this;
switch (_that) {
case _ScheduledLessonModels():
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.datetime,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.middleRating,_that.videos,_that.handbook,_that.myGroup);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'rescheduled_reason')  String? rescheduledReason, @JsonKey(name: 'lesson_number')  int? lessonNumber, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'videos')  List<Videos>? videos, @JsonKey(name: 'handbook')  Handbook? handbook,  MyGroupsItem? myGroup)?  $default,) {final _that = this;
switch (_that) {
case _ScheduledLessonModels() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.datetime,_that.type,_that.status,_that.rescheduledReason,_that.lessonNumber,_that.middleRating,_that.videos,_that.handbook,_that.myGroup);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduledLessonModels with DiagnosticableTreeMixin implements ScheduledLessonModels {
  const _ScheduledLessonModels({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'id') this.id, @JsonKey(name: 'datetime') this.datetime, @JsonKey(name: 'type') this.type, @JsonKey(name: 'status') this.status, @JsonKey(name: 'rescheduled_reason') this.rescheduledReason, @JsonKey(name: 'lesson_number') this.lessonNumber, @JsonKey(name: 'middle_rating') this.middleRating, @JsonKey(name: 'videos') final  List<Videos>? videos, @JsonKey(name: 'handbook') this.handbook, this.myGroup}): _videos = videos;
  factory _ScheduledLessonModels.fromJson(Map<String, dynamic> json) => _$ScheduledLessonModelsFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'datetime') final  String? datetime;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'rescheduled_reason') final  String? rescheduledReason;
@override@JsonKey(name: 'lesson_number') final  int? lessonNumber;
@override@JsonKey(name: 'middle_rating') final  String? middleRating;
 final  List<Videos>? _videos;
@override@JsonKey(name: 'videos') List<Videos>? get videos {
  final value = _videos;
  if (value == null) return null;
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'handbook') final  Handbook? handbook;
@override final  MyGroupsItem? myGroup;

/// Create a copy of ScheduledLessonModels
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduledLessonModelsCopyWith<_ScheduledLessonModels> get copyWith => __$ScheduledLessonModelsCopyWithImpl<_ScheduledLessonModels>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduledLessonModelsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ScheduledLessonModels'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('rescheduledReason', rescheduledReason))..add(DiagnosticsProperty('lessonNumber', lessonNumber))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('videos', videos))..add(DiagnosticsProperty('handbook', handbook))..add(DiagnosticsProperty('myGroup', myGroup));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduledLessonModels&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.rescheduledReason, rescheduledReason) || other.rescheduledReason == rescheduledReason)&&(identical(other.lessonNumber, lessonNumber) || other.lessonNumber == lessonNumber)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&const DeepCollectionEquality().equals(other._videos, _videos)&&(identical(other.handbook, handbook) || other.handbook == handbook)&&(identical(other.myGroup, myGroup) || other.myGroup == myGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,id,datetime,type,status,rescheduledReason,lessonNumber,middleRating,const DeepCollectionEquality().hash(_videos),handbook,myGroup);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ScheduledLessonModels(createdAt: $createdAt, updatedAt: $updatedAt, id: $id, datetime: $datetime, type: $type, status: $status, rescheduledReason: $rescheduledReason, lessonNumber: $lessonNumber, middleRating: $middleRating, videos: $videos, handbook: $handbook, myGroup: $myGroup)';
}


}

/// @nodoc
abstract mixin class _$ScheduledLessonModelsCopyWith<$Res> implements $ScheduledLessonModelsCopyWith<$Res> {
  factory _$ScheduledLessonModelsCopyWith(_ScheduledLessonModels value, $Res Function(_ScheduledLessonModels) _then) = __$ScheduledLessonModelsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'id') int? id,@JsonKey(name: 'datetime') String? datetime,@JsonKey(name: 'type') String? type,@JsonKey(name: 'status') String? status,@JsonKey(name: 'rescheduled_reason') String? rescheduledReason,@JsonKey(name: 'lesson_number') int? lessonNumber,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'videos') List<Videos>? videos,@JsonKey(name: 'handbook') Handbook? handbook, MyGroupsItem? myGroup
});


@override $HandbookCopyWith<$Res>? get handbook;@override $MyGroupsItemCopyWith<$Res>? get myGroup;

}
/// @nodoc
class __$ScheduledLessonModelsCopyWithImpl<$Res>
    implements _$ScheduledLessonModelsCopyWith<$Res> {
  __$ScheduledLessonModelsCopyWithImpl(this._self, this._then);

  final _ScheduledLessonModels _self;
  final $Res Function(_ScheduledLessonModels) _then;

/// Create a copy of ScheduledLessonModels
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? id = freezed,Object? datetime = freezed,Object? type = freezed,Object? status = freezed,Object? rescheduledReason = freezed,Object? lessonNumber = freezed,Object? middleRating = freezed,Object? videos = freezed,Object? handbook = freezed,Object? myGroup = freezed,}) {
  return _then(_ScheduledLessonModels(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,rescheduledReason: freezed == rescheduledReason ? _self.rescheduledReason : rescheduledReason // ignore: cast_nullable_to_non_nullable
as String?,lessonNumber: freezed == lessonNumber ? _self.lessonNumber : lessonNumber // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,videos: freezed == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<Videos>?,handbook: freezed == handbook ? _self.handbook : handbook // ignore: cast_nullable_to_non_nullable
as Handbook?,myGroup: freezed == myGroup ? _self.myGroup : myGroup // ignore: cast_nullable_to_non_nullable
as MyGroupsItem?,
  ));
}

/// Create a copy of ScheduledLessonModels
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
}/// Create a copy of ScheduledLessonModels
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyGroupsItemCopyWith<$Res>? get myGroup {
    if (_self.myGroup == null) {
    return null;
  }

  return $MyGroupsItemCopyWith<$Res>(_self.myGroup!, (value) {
    return _then(_self.copyWith(myGroup: value));
  });
}
}


/// @nodoc
mixin _$Videos implements DiagnosticableTreeMixin {

@JsonKey(name: 'video_key') String? get videoKey;
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
    ..add(DiagnosticsProperty('videoKey', videoKey));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Videos&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,videoKey);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Videos(videoKey: $videoKey)';
}


}

/// @nodoc
abstract mixin class $VideosCopyWith<$Res>  {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) _then) = _$VideosCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'video_key') String? videoKey
});




}
/// @nodoc
class _$VideosCopyWithImpl<$Res>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._self, this._then);

  final Videos _self;
  final $Res Function(Videos) _then;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videoKey = freezed,}) {
  return _then(_self.copyWith(
videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'video_key')  String? videoKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Videos() when $default != null:
return $default(_that.videoKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'video_key')  String? videoKey)  $default,) {final _that = this;
switch (_that) {
case _Videos():
return $default(_that.videoKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'video_key')  String? videoKey)?  $default,) {final _that = this;
switch (_that) {
case _Videos() when $default != null:
return $default(_that.videoKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Videos with DiagnosticableTreeMixin implements Videos {
  const _Videos({@JsonKey(name: 'video_key') this.videoKey});
  factory _Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);

@override@JsonKey(name: 'video_key') final  String? videoKey;

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
    ..add(DiagnosticsProperty('videoKey', videoKey));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Videos&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,videoKey);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Videos(videoKey: $videoKey)';
}


}

/// @nodoc
abstract mixin class _$VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$VideosCopyWith(_Videos value, $Res Function(_Videos) _then) = __$VideosCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'video_key') String? videoKey
});




}
/// @nodoc
class __$VideosCopyWithImpl<$Res>
    implements _$VideosCopyWith<$Res> {
  __$VideosCopyWithImpl(this._self, this._then);

  final _Videos _self;
  final $Res Function(_Videos) _then;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videoKey = freezed,}) {
  return _then(_Videos(
videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
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
