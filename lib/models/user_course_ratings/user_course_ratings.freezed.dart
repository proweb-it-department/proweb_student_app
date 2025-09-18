// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_course_ratings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserCourseRatings implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'level_id') int? get levelId;@JsonKey(name: 'course_id') int? get courseId;@JsonKey(name: 'level') Level? get level;@JsonKey(name: 'course') Course? get course;@JsonKey(name: 'total_score') UserTotalPosition? get totalScore;
/// Create a copy of UserCourseRatings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCourseRatingsCopyWith<UserCourseRatings> get copyWith => _$UserCourseRatingsCopyWithImpl<UserCourseRatings>(this as UserCourseRatings, _$identity);

  /// Serializes this UserCourseRatings to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserCourseRatings'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('levelId', levelId))..add(DiagnosticsProperty('courseId', courseId))..add(DiagnosticsProperty('level', level))..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('totalScore', totalScore));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCourseRatings&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.score, score) || other.score == score)&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.level, level) || other.level == level)&&(identical(other.course, course) || other.course == course)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,id,userId,score,levelId,courseId,level,course,totalScore);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserCourseRatings(createdAt: $createdAt, updatedAt: $updatedAt, id: $id, userId: $userId, score: $score, levelId: $levelId, courseId: $courseId, level: $level, course: $course, totalScore: $totalScore)';
}


}

/// @nodoc
abstract mixin class $UserCourseRatingsCopyWith<$Res>  {
  factory $UserCourseRatingsCopyWith(UserCourseRatings value, $Res Function(UserCourseRatings) _then) = _$UserCourseRatingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'score') int? score,@JsonKey(name: 'level_id') int? levelId,@JsonKey(name: 'course_id') int? courseId,@JsonKey(name: 'level') Level? level,@JsonKey(name: 'course') Course? course,@JsonKey(name: 'total_score') UserTotalPosition? totalScore
});


$LevelCopyWith<$Res>? get level;$CourseCopyWith<$Res>? get course;$UserTotalPositionCopyWith<$Res>? get totalScore;

}
/// @nodoc
class _$UserCourseRatingsCopyWithImpl<$Res>
    implements $UserCourseRatingsCopyWith<$Res> {
  _$UserCourseRatingsCopyWithImpl(this._self, this._then);

  final UserCourseRatings _self;
  final $Res Function(UserCourseRatings) _then;

/// Create a copy of UserCourseRatings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? id = freezed,Object? userId = freezed,Object? score = freezed,Object? levelId = freezed,Object? courseId = freezed,Object? level = freezed,Object? course = freezed,Object? totalScore = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,levelId: freezed == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as int?,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as Level?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as UserTotalPosition?,
  ));
}
/// Create a copy of UserCourseRatings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelCopyWith<$Res>? get level {
    if (_self.level == null) {
    return null;
  }

  return $LevelCopyWith<$Res>(_self.level!, (value) {
    return _then(_self.copyWith(level: value));
  });
}/// Create a copy of UserCourseRatings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $CourseCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}/// Create a copy of UserCourseRatings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserTotalPositionCopyWith<$Res>? get totalScore {
    if (_self.totalScore == null) {
    return null;
  }

  return $UserTotalPositionCopyWith<$Res>(_self.totalScore!, (value) {
    return _then(_self.copyWith(totalScore: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserCourseRatings].
extension UserCourseRatingsPatterns on UserCourseRatings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCourseRatings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCourseRatings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCourseRatings value)  $default,){
final _that = this;
switch (_that) {
case _UserCourseRatings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCourseRatings value)?  $default,){
final _that = this;
switch (_that) {
case _UserCourseRatings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'level_id')  int? levelId, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'level')  Level? level, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'total_score')  UserTotalPosition? totalScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCourseRatings() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.userId,_that.score,_that.levelId,_that.courseId,_that.level,_that.course,_that.totalScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'level_id')  int? levelId, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'level')  Level? level, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'total_score')  UserTotalPosition? totalScore)  $default,) {final _that = this;
switch (_that) {
case _UserCourseRatings():
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.userId,_that.score,_that.levelId,_that.courseId,_that.level,_that.course,_that.totalScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'level_id')  int? levelId, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'level')  Level? level, @JsonKey(name: 'course')  Course? course, @JsonKey(name: 'total_score')  UserTotalPosition? totalScore)?  $default,) {final _that = this;
switch (_that) {
case _UserCourseRatings() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.userId,_that.score,_that.levelId,_that.courseId,_that.level,_that.course,_that.totalScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserCourseRatings with DiagnosticableTreeMixin implements UserCourseRatings {
  const _UserCourseRatings({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'score') this.score, @JsonKey(name: 'level_id') this.levelId, @JsonKey(name: 'course_id') this.courseId, @JsonKey(name: 'level') this.level, @JsonKey(name: 'course') this.course, @JsonKey(name: 'total_score') this.totalScore});
  factory _UserCourseRatings.fromJson(Map<String, dynamic> json) => _$UserCourseRatingsFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'score') final  int? score;
@override@JsonKey(name: 'level_id') final  int? levelId;
@override@JsonKey(name: 'course_id') final  int? courseId;
@override@JsonKey(name: 'level') final  Level? level;
@override@JsonKey(name: 'course') final  Course? course;
@override@JsonKey(name: 'total_score') final  UserTotalPosition? totalScore;

/// Create a copy of UserCourseRatings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCourseRatingsCopyWith<_UserCourseRatings> get copyWith => __$UserCourseRatingsCopyWithImpl<_UserCourseRatings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserCourseRatingsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserCourseRatings'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('levelId', levelId))..add(DiagnosticsProperty('courseId', courseId))..add(DiagnosticsProperty('level', level))..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('totalScore', totalScore));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCourseRatings&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.score, score) || other.score == score)&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.level, level) || other.level == level)&&(identical(other.course, course) || other.course == course)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,id,userId,score,levelId,courseId,level,course,totalScore);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserCourseRatings(createdAt: $createdAt, updatedAt: $updatedAt, id: $id, userId: $userId, score: $score, levelId: $levelId, courseId: $courseId, level: $level, course: $course, totalScore: $totalScore)';
}


}

/// @nodoc
abstract mixin class _$UserCourseRatingsCopyWith<$Res> implements $UserCourseRatingsCopyWith<$Res> {
  factory _$UserCourseRatingsCopyWith(_UserCourseRatings value, $Res Function(_UserCourseRatings) _then) = __$UserCourseRatingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'score') int? score,@JsonKey(name: 'level_id') int? levelId,@JsonKey(name: 'course_id') int? courseId,@JsonKey(name: 'level') Level? level,@JsonKey(name: 'course') Course? course,@JsonKey(name: 'total_score') UserTotalPosition? totalScore
});


@override $LevelCopyWith<$Res>? get level;@override $CourseCopyWith<$Res>? get course;@override $UserTotalPositionCopyWith<$Res>? get totalScore;

}
/// @nodoc
class __$UserCourseRatingsCopyWithImpl<$Res>
    implements _$UserCourseRatingsCopyWith<$Res> {
  __$UserCourseRatingsCopyWithImpl(this._self, this._then);

  final _UserCourseRatings _self;
  final $Res Function(_UserCourseRatings) _then;

/// Create a copy of UserCourseRatings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? id = freezed,Object? userId = freezed,Object? score = freezed,Object? levelId = freezed,Object? courseId = freezed,Object? level = freezed,Object? course = freezed,Object? totalScore = freezed,}) {
  return _then(_UserCourseRatings(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,levelId: freezed == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as int?,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as Level?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as UserTotalPosition?,
  ));
}

/// Create a copy of UserCourseRatings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelCopyWith<$Res>? get level {
    if (_self.level == null) {
    return null;
  }

  return $LevelCopyWith<$Res>(_self.level!, (value) {
    return _then(_self.copyWith(level: value));
  });
}/// Create a copy of UserCourseRatings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $CourseCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}/// Create a copy of UserCourseRatings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserTotalPositionCopyWith<$Res>? get totalScore {
    if (_self.totalScore == null) {
    return null;
  }

  return $UserTotalPositionCopyWith<$Res>(_self.totalScore!, (value) {
    return _then(_self.copyWith(totalScore: value));
  });
}
}


/// @nodoc
mixin _$Level implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'course_id') int? get courseId;@JsonKey(name: 'logo') String? get logo;@JsonKey(name: 'min_score') int? get minScore;
/// Create a copy of Level
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelCopyWith<Level> get copyWith => _$LevelCopyWithImpl<Level>(this as Level, _$identity);

  /// Serializes this Level to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Level'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('courseId', courseId))..add(DiagnosticsProperty('logo', logo))..add(DiagnosticsProperty('minScore', minScore));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Level&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.minScore, minScore) || other.minScore == minScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,courseId,logo,minScore);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Level(id: $id, name: $name, courseId: $courseId, logo: $logo, minScore: $minScore)';
}


}

/// @nodoc
abstract mixin class $LevelCopyWith<$Res>  {
  factory $LevelCopyWith(Level value, $Res Function(Level) _then) = _$LevelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'course_id') int? courseId,@JsonKey(name: 'logo') String? logo,@JsonKey(name: 'min_score') int? minScore
});




}
/// @nodoc
class _$LevelCopyWithImpl<$Res>
    implements $LevelCopyWith<$Res> {
  _$LevelCopyWithImpl(this._self, this._then);

  final Level _self;
  final $Res Function(Level) _then;

/// Create a copy of Level
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? courseId = freezed,Object? logo = freezed,Object? minScore = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,minScore: freezed == minScore ? _self.minScore : minScore // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Level].
extension LevelPatterns on Level {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Level value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Level() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Level value)  $default,){
final _that = this;
switch (_that) {
case _Level():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Level value)?  $default,){
final _that = this;
switch (_that) {
case _Level() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'logo')  String? logo, @JsonKey(name: 'min_score')  int? minScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Level() when $default != null:
return $default(_that.id,_that.name,_that.courseId,_that.logo,_that.minScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'logo')  String? logo, @JsonKey(name: 'min_score')  int? minScore)  $default,) {final _that = this;
switch (_that) {
case _Level():
return $default(_that.id,_that.name,_that.courseId,_that.logo,_that.minScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'course_id')  int? courseId, @JsonKey(name: 'logo')  String? logo, @JsonKey(name: 'min_score')  int? minScore)?  $default,) {final _that = this;
switch (_that) {
case _Level() when $default != null:
return $default(_that.id,_that.name,_that.courseId,_that.logo,_that.minScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Level with DiagnosticableTreeMixin implements Level {
  const _Level({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'course_id') this.courseId, @JsonKey(name: 'logo') this.logo, @JsonKey(name: 'min_score') this.minScore});
  factory _Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'course_id') final  int? courseId;
@override@JsonKey(name: 'logo') final  String? logo;
@override@JsonKey(name: 'min_score') final  int? minScore;

/// Create a copy of Level
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelCopyWith<_Level> get copyWith => __$LevelCopyWithImpl<_Level>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Level'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('courseId', courseId))..add(DiagnosticsProperty('logo', logo))..add(DiagnosticsProperty('minScore', minScore));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Level&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.minScore, minScore) || other.minScore == minScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,courseId,logo,minScore);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Level(id: $id, name: $name, courseId: $courseId, logo: $logo, minScore: $minScore)';
}


}

/// @nodoc
abstract mixin class _$LevelCopyWith<$Res> implements $LevelCopyWith<$Res> {
  factory _$LevelCopyWith(_Level value, $Res Function(_Level) _then) = __$LevelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'course_id') int? courseId,@JsonKey(name: 'logo') String? logo,@JsonKey(name: 'min_score') int? minScore
});




}
/// @nodoc
class __$LevelCopyWithImpl<$Res>
    implements _$LevelCopyWith<$Res> {
  __$LevelCopyWithImpl(this._self, this._then);

  final _Level _self;
  final $Res Function(_Level) _then;

/// Create a copy of Level
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? courseId = freezed,Object? logo = freezed,Object? minScore = freezed,}) {
  return _then(_Level(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,minScore: freezed == minScore ? _self.minScore : minScore // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Course implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'banner') String? get banner;@JsonKey(name: 'ads_banner') String? get adsBanner;@JsonKey(name: 'color') String? get color;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'language') String? get language;
/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseCopyWith<Course> get copyWith => _$CourseCopyWithImpl<Course>(this as Course, _$identity);

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Course'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('adsBanner', adsBanner))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('language', language));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.adsBanner, adsBanner) || other.adsBanner == adsBanner)&&(identical(other.color, color) || other.color == color)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,banner,adsBanner,color,slug,language);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, icon: $icon, banner: $banner, adsBanner: $adsBanner, color: $color, slug: $slug, language: $language)';
}


}

/// @nodoc
abstract mixin class $CourseCopyWith<$Res>  {
  factory $CourseCopyWith(Course value, $Res Function(Course) _then) = _$CourseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'ads_banner') String? adsBanner,@JsonKey(name: 'color') String? color,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'language') String? language
});




}
/// @nodoc
class _$CourseCopyWithImpl<$Res>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._self, this._then);

  final Course _self;
  final $Res Function(Course) _then;

/// Create a copy of Course
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


/// Adds pattern-matching-related methods to [Course].
extension CoursePatterns on Course {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Course value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Course() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Course value)  $default,){
final _that = this;
switch (_that) {
case _Course():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Course value)?  $default,){
final _that = this;
switch (_that) {
case _Course() when $default != null:
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
case _Course() when $default != null:
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
case _Course():
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
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.banner,_that.adsBanner,_that.color,_that.slug,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Course with DiagnosticableTreeMixin implements Course {
  const _Course({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'banner') this.banner, @JsonKey(name: 'ads_banner') this.adsBanner, @JsonKey(name: 'color') this.color, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'language') this.language});
  factory _Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'banner') final  String? banner;
@override@JsonKey(name: 'ads_banner') final  String? adsBanner;
@override@JsonKey(name: 'color') final  String? color;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'language') final  String? language;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseCopyWith<_Course> get copyWith => __$CourseCopyWithImpl<_Course>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Course'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('adsBanner', adsBanner))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('language', language));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.adsBanner, adsBanner) || other.adsBanner == adsBanner)&&(identical(other.color, color) || other.color == color)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,banner,adsBanner,color,slug,language);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, icon: $icon, banner: $banner, adsBanner: $adsBanner, color: $color, slug: $slug, language: $language)';
}


}

/// @nodoc
abstract mixin class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) _then) = __$CourseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'ads_banner') String? adsBanner,@JsonKey(name: 'color') String? color,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'language') String? language
});




}
/// @nodoc
class __$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(this._self, this._then);

  final _Course _self;
  final $Res Function(_Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? banner = freezed,Object? adsBanner = freezed,Object? color = freezed,Object? slug = freezed,Object? language = freezed,}) {
  return _then(_Course(
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
