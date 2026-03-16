// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_statistic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyStatistic implements DiagnosticableTreeMixin {

@JsonKey(name: 'lesson_visited_count') int? get lessonVisitedCount;@JsonKey(name: 'lesson_not_visited_count') int? get lessonNotVisitedCount;@JsonKey(name: 'lesson_watched_count') int? get lessonWatchedCount;@JsonKey(name: 'lesson_not_watched_count') int? get lessonNotWatchedCount;@JsonKey(name: 'coworking_reserved_count') int? get coworkingReservedCount;@JsonKey(name: 'coworking_visited_count') int? get coworkingVisitedCount;@JsonKey(name: 'coworking_visited_without_reserve_count') int? get coworkingVisitedWithoutReserveCount;@JsonKey(name: 'homework_solved_count') int? get homeworkSolvedCount;@JsonKey(name: 'homework_not_solved_count') int? get homeworkNotSolvedCount;@JsonKey(name: 'student_middle_rating') String? get studentMiddleRating;
/// Create a copy of MyStatistic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyStatisticCopyWith<MyStatistic> get copyWith => _$MyStatisticCopyWithImpl<MyStatistic>(this as MyStatistic, _$identity);

  /// Serializes this MyStatistic to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyStatistic'))
    ..add(DiagnosticsProperty('lessonVisitedCount', lessonVisitedCount))..add(DiagnosticsProperty('lessonNotVisitedCount', lessonNotVisitedCount))..add(DiagnosticsProperty('lessonWatchedCount', lessonWatchedCount))..add(DiagnosticsProperty('lessonNotWatchedCount', lessonNotWatchedCount))..add(DiagnosticsProperty('coworkingReservedCount', coworkingReservedCount))..add(DiagnosticsProperty('coworkingVisitedCount', coworkingVisitedCount))..add(DiagnosticsProperty('coworkingVisitedWithoutReserveCount', coworkingVisitedWithoutReserveCount))..add(DiagnosticsProperty('homeworkSolvedCount', homeworkSolvedCount))..add(DiagnosticsProperty('homeworkNotSolvedCount', homeworkNotSolvedCount))..add(DiagnosticsProperty('studentMiddleRating', studentMiddleRating));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyStatistic&&(identical(other.lessonVisitedCount, lessonVisitedCount) || other.lessonVisitedCount == lessonVisitedCount)&&(identical(other.lessonNotVisitedCount, lessonNotVisitedCount) || other.lessonNotVisitedCount == lessonNotVisitedCount)&&(identical(other.lessonWatchedCount, lessonWatchedCount) || other.lessonWatchedCount == lessonWatchedCount)&&(identical(other.lessonNotWatchedCount, lessonNotWatchedCount) || other.lessonNotWatchedCount == lessonNotWatchedCount)&&(identical(other.coworkingReservedCount, coworkingReservedCount) || other.coworkingReservedCount == coworkingReservedCount)&&(identical(other.coworkingVisitedCount, coworkingVisitedCount) || other.coworkingVisitedCount == coworkingVisitedCount)&&(identical(other.coworkingVisitedWithoutReserveCount, coworkingVisitedWithoutReserveCount) || other.coworkingVisitedWithoutReserveCount == coworkingVisitedWithoutReserveCount)&&(identical(other.homeworkSolvedCount, homeworkSolvedCount) || other.homeworkSolvedCount == homeworkSolvedCount)&&(identical(other.homeworkNotSolvedCount, homeworkNotSolvedCount) || other.homeworkNotSolvedCount == homeworkNotSolvedCount)&&(identical(other.studentMiddleRating, studentMiddleRating) || other.studentMiddleRating == studentMiddleRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lessonVisitedCount,lessonNotVisitedCount,lessonWatchedCount,lessonNotWatchedCount,coworkingReservedCount,coworkingVisitedCount,coworkingVisitedWithoutReserveCount,homeworkSolvedCount,homeworkNotSolvedCount,studentMiddleRating);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyStatistic(lessonVisitedCount: $lessonVisitedCount, lessonNotVisitedCount: $lessonNotVisitedCount, lessonWatchedCount: $lessonWatchedCount, lessonNotWatchedCount: $lessonNotWatchedCount, coworkingReservedCount: $coworkingReservedCount, coworkingVisitedCount: $coworkingVisitedCount, coworkingVisitedWithoutReserveCount: $coworkingVisitedWithoutReserveCount, homeworkSolvedCount: $homeworkSolvedCount, homeworkNotSolvedCount: $homeworkNotSolvedCount, studentMiddleRating: $studentMiddleRating)';
}


}

/// @nodoc
abstract mixin class $MyStatisticCopyWith<$Res>  {
  factory $MyStatisticCopyWith(MyStatistic value, $Res Function(MyStatistic) _then) = _$MyStatisticCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'lesson_visited_count') int? lessonVisitedCount,@JsonKey(name: 'lesson_not_visited_count') int? lessonNotVisitedCount,@JsonKey(name: 'lesson_watched_count') int? lessonWatchedCount,@JsonKey(name: 'lesson_not_watched_count') int? lessonNotWatchedCount,@JsonKey(name: 'coworking_reserved_count') int? coworkingReservedCount,@JsonKey(name: 'coworking_visited_count') int? coworkingVisitedCount,@JsonKey(name: 'coworking_visited_without_reserve_count') int? coworkingVisitedWithoutReserveCount,@JsonKey(name: 'homework_solved_count') int? homeworkSolvedCount,@JsonKey(name: 'homework_not_solved_count') int? homeworkNotSolvedCount,@JsonKey(name: 'student_middle_rating') String? studentMiddleRating
});




}
/// @nodoc
class _$MyStatisticCopyWithImpl<$Res>
    implements $MyStatisticCopyWith<$Res> {
  _$MyStatisticCopyWithImpl(this._self, this._then);

  final MyStatistic _self;
  final $Res Function(MyStatistic) _then;

/// Create a copy of MyStatistic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lessonVisitedCount = freezed,Object? lessonNotVisitedCount = freezed,Object? lessonWatchedCount = freezed,Object? lessonNotWatchedCount = freezed,Object? coworkingReservedCount = freezed,Object? coworkingVisitedCount = freezed,Object? coworkingVisitedWithoutReserveCount = freezed,Object? homeworkSolvedCount = freezed,Object? homeworkNotSolvedCount = freezed,Object? studentMiddleRating = freezed,}) {
  return _then(_self.copyWith(
lessonVisitedCount: freezed == lessonVisitedCount ? _self.lessonVisitedCount : lessonVisitedCount // ignore: cast_nullable_to_non_nullable
as int?,lessonNotVisitedCount: freezed == lessonNotVisitedCount ? _self.lessonNotVisitedCount : lessonNotVisitedCount // ignore: cast_nullable_to_non_nullable
as int?,lessonWatchedCount: freezed == lessonWatchedCount ? _self.lessonWatchedCount : lessonWatchedCount // ignore: cast_nullable_to_non_nullable
as int?,lessonNotWatchedCount: freezed == lessonNotWatchedCount ? _self.lessonNotWatchedCount : lessonNotWatchedCount // ignore: cast_nullable_to_non_nullable
as int?,coworkingReservedCount: freezed == coworkingReservedCount ? _self.coworkingReservedCount : coworkingReservedCount // ignore: cast_nullable_to_non_nullable
as int?,coworkingVisitedCount: freezed == coworkingVisitedCount ? _self.coworkingVisitedCount : coworkingVisitedCount // ignore: cast_nullable_to_non_nullable
as int?,coworkingVisitedWithoutReserveCount: freezed == coworkingVisitedWithoutReserveCount ? _self.coworkingVisitedWithoutReserveCount : coworkingVisitedWithoutReserveCount // ignore: cast_nullable_to_non_nullable
as int?,homeworkSolvedCount: freezed == homeworkSolvedCount ? _self.homeworkSolvedCount : homeworkSolvedCount // ignore: cast_nullable_to_non_nullable
as int?,homeworkNotSolvedCount: freezed == homeworkNotSolvedCount ? _self.homeworkNotSolvedCount : homeworkNotSolvedCount // ignore: cast_nullable_to_non_nullable
as int?,studentMiddleRating: freezed == studentMiddleRating ? _self.studentMiddleRating : studentMiddleRating // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyStatistic].
extension MyStatisticPatterns on MyStatistic {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyStatistic value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyStatistic() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyStatistic value)  $default,){
final _that = this;
switch (_that) {
case _MyStatistic():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyStatistic value)?  $default,){
final _that = this;
switch (_that) {
case _MyStatistic() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'lesson_visited_count')  int? lessonVisitedCount, @JsonKey(name: 'lesson_not_visited_count')  int? lessonNotVisitedCount, @JsonKey(name: 'lesson_watched_count')  int? lessonWatchedCount, @JsonKey(name: 'lesson_not_watched_count')  int? lessonNotWatchedCount, @JsonKey(name: 'coworking_reserved_count')  int? coworkingReservedCount, @JsonKey(name: 'coworking_visited_count')  int? coworkingVisitedCount, @JsonKey(name: 'coworking_visited_without_reserve_count')  int? coworkingVisitedWithoutReserveCount, @JsonKey(name: 'homework_solved_count')  int? homeworkSolvedCount, @JsonKey(name: 'homework_not_solved_count')  int? homeworkNotSolvedCount, @JsonKey(name: 'student_middle_rating')  String? studentMiddleRating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyStatistic() when $default != null:
return $default(_that.lessonVisitedCount,_that.lessonNotVisitedCount,_that.lessonWatchedCount,_that.lessonNotWatchedCount,_that.coworkingReservedCount,_that.coworkingVisitedCount,_that.coworkingVisitedWithoutReserveCount,_that.homeworkSolvedCount,_that.homeworkNotSolvedCount,_that.studentMiddleRating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'lesson_visited_count')  int? lessonVisitedCount, @JsonKey(name: 'lesson_not_visited_count')  int? lessonNotVisitedCount, @JsonKey(name: 'lesson_watched_count')  int? lessonWatchedCount, @JsonKey(name: 'lesson_not_watched_count')  int? lessonNotWatchedCount, @JsonKey(name: 'coworking_reserved_count')  int? coworkingReservedCount, @JsonKey(name: 'coworking_visited_count')  int? coworkingVisitedCount, @JsonKey(name: 'coworking_visited_without_reserve_count')  int? coworkingVisitedWithoutReserveCount, @JsonKey(name: 'homework_solved_count')  int? homeworkSolvedCount, @JsonKey(name: 'homework_not_solved_count')  int? homeworkNotSolvedCount, @JsonKey(name: 'student_middle_rating')  String? studentMiddleRating)  $default,) {final _that = this;
switch (_that) {
case _MyStatistic():
return $default(_that.lessonVisitedCount,_that.lessonNotVisitedCount,_that.lessonWatchedCount,_that.lessonNotWatchedCount,_that.coworkingReservedCount,_that.coworkingVisitedCount,_that.coworkingVisitedWithoutReserveCount,_that.homeworkSolvedCount,_that.homeworkNotSolvedCount,_that.studentMiddleRating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'lesson_visited_count')  int? lessonVisitedCount, @JsonKey(name: 'lesson_not_visited_count')  int? lessonNotVisitedCount, @JsonKey(name: 'lesson_watched_count')  int? lessonWatchedCount, @JsonKey(name: 'lesson_not_watched_count')  int? lessonNotWatchedCount, @JsonKey(name: 'coworking_reserved_count')  int? coworkingReservedCount, @JsonKey(name: 'coworking_visited_count')  int? coworkingVisitedCount, @JsonKey(name: 'coworking_visited_without_reserve_count')  int? coworkingVisitedWithoutReserveCount, @JsonKey(name: 'homework_solved_count')  int? homeworkSolvedCount, @JsonKey(name: 'homework_not_solved_count')  int? homeworkNotSolvedCount, @JsonKey(name: 'student_middle_rating')  String? studentMiddleRating)?  $default,) {final _that = this;
switch (_that) {
case _MyStatistic() when $default != null:
return $default(_that.lessonVisitedCount,_that.lessonNotVisitedCount,_that.lessonWatchedCount,_that.lessonNotWatchedCount,_that.coworkingReservedCount,_that.coworkingVisitedCount,_that.coworkingVisitedWithoutReserveCount,_that.homeworkSolvedCount,_that.homeworkNotSolvedCount,_that.studentMiddleRating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyStatistic with DiagnosticableTreeMixin implements MyStatistic {
  const _MyStatistic({@JsonKey(name: 'lesson_visited_count') this.lessonVisitedCount, @JsonKey(name: 'lesson_not_visited_count') this.lessonNotVisitedCount, @JsonKey(name: 'lesson_watched_count') this.lessonWatchedCount, @JsonKey(name: 'lesson_not_watched_count') this.lessonNotWatchedCount, @JsonKey(name: 'coworking_reserved_count') this.coworkingReservedCount, @JsonKey(name: 'coworking_visited_count') this.coworkingVisitedCount, @JsonKey(name: 'coworking_visited_without_reserve_count') this.coworkingVisitedWithoutReserveCount, @JsonKey(name: 'homework_solved_count') this.homeworkSolvedCount, @JsonKey(name: 'homework_not_solved_count') this.homeworkNotSolvedCount, @JsonKey(name: 'student_middle_rating') this.studentMiddleRating});
  factory _MyStatistic.fromJson(Map<String, dynamic> json) => _$MyStatisticFromJson(json);

@override@JsonKey(name: 'lesson_visited_count') final  int? lessonVisitedCount;
@override@JsonKey(name: 'lesson_not_visited_count') final  int? lessonNotVisitedCount;
@override@JsonKey(name: 'lesson_watched_count') final  int? lessonWatchedCount;
@override@JsonKey(name: 'lesson_not_watched_count') final  int? lessonNotWatchedCount;
@override@JsonKey(name: 'coworking_reserved_count') final  int? coworkingReservedCount;
@override@JsonKey(name: 'coworking_visited_count') final  int? coworkingVisitedCount;
@override@JsonKey(name: 'coworking_visited_without_reserve_count') final  int? coworkingVisitedWithoutReserveCount;
@override@JsonKey(name: 'homework_solved_count') final  int? homeworkSolvedCount;
@override@JsonKey(name: 'homework_not_solved_count') final  int? homeworkNotSolvedCount;
@override@JsonKey(name: 'student_middle_rating') final  String? studentMiddleRating;

/// Create a copy of MyStatistic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyStatisticCopyWith<_MyStatistic> get copyWith => __$MyStatisticCopyWithImpl<_MyStatistic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyStatisticToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyStatistic'))
    ..add(DiagnosticsProperty('lessonVisitedCount', lessonVisitedCount))..add(DiagnosticsProperty('lessonNotVisitedCount', lessonNotVisitedCount))..add(DiagnosticsProperty('lessonWatchedCount', lessonWatchedCount))..add(DiagnosticsProperty('lessonNotWatchedCount', lessonNotWatchedCount))..add(DiagnosticsProperty('coworkingReservedCount', coworkingReservedCount))..add(DiagnosticsProperty('coworkingVisitedCount', coworkingVisitedCount))..add(DiagnosticsProperty('coworkingVisitedWithoutReserveCount', coworkingVisitedWithoutReserveCount))..add(DiagnosticsProperty('homeworkSolvedCount', homeworkSolvedCount))..add(DiagnosticsProperty('homeworkNotSolvedCount', homeworkNotSolvedCount))..add(DiagnosticsProperty('studentMiddleRating', studentMiddleRating));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyStatistic&&(identical(other.lessonVisitedCount, lessonVisitedCount) || other.lessonVisitedCount == lessonVisitedCount)&&(identical(other.lessonNotVisitedCount, lessonNotVisitedCount) || other.lessonNotVisitedCount == lessonNotVisitedCount)&&(identical(other.lessonWatchedCount, lessonWatchedCount) || other.lessonWatchedCount == lessonWatchedCount)&&(identical(other.lessonNotWatchedCount, lessonNotWatchedCount) || other.lessonNotWatchedCount == lessonNotWatchedCount)&&(identical(other.coworkingReservedCount, coworkingReservedCount) || other.coworkingReservedCount == coworkingReservedCount)&&(identical(other.coworkingVisitedCount, coworkingVisitedCount) || other.coworkingVisitedCount == coworkingVisitedCount)&&(identical(other.coworkingVisitedWithoutReserveCount, coworkingVisitedWithoutReserveCount) || other.coworkingVisitedWithoutReserveCount == coworkingVisitedWithoutReserveCount)&&(identical(other.homeworkSolvedCount, homeworkSolvedCount) || other.homeworkSolvedCount == homeworkSolvedCount)&&(identical(other.homeworkNotSolvedCount, homeworkNotSolvedCount) || other.homeworkNotSolvedCount == homeworkNotSolvedCount)&&(identical(other.studentMiddleRating, studentMiddleRating) || other.studentMiddleRating == studentMiddleRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lessonVisitedCount,lessonNotVisitedCount,lessonWatchedCount,lessonNotWatchedCount,coworkingReservedCount,coworkingVisitedCount,coworkingVisitedWithoutReserveCount,homeworkSolvedCount,homeworkNotSolvedCount,studentMiddleRating);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyStatistic(lessonVisitedCount: $lessonVisitedCount, lessonNotVisitedCount: $lessonNotVisitedCount, lessonWatchedCount: $lessonWatchedCount, lessonNotWatchedCount: $lessonNotWatchedCount, coworkingReservedCount: $coworkingReservedCount, coworkingVisitedCount: $coworkingVisitedCount, coworkingVisitedWithoutReserveCount: $coworkingVisitedWithoutReserveCount, homeworkSolvedCount: $homeworkSolvedCount, homeworkNotSolvedCount: $homeworkNotSolvedCount, studentMiddleRating: $studentMiddleRating)';
}


}

/// @nodoc
abstract mixin class _$MyStatisticCopyWith<$Res> implements $MyStatisticCopyWith<$Res> {
  factory _$MyStatisticCopyWith(_MyStatistic value, $Res Function(_MyStatistic) _then) = __$MyStatisticCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'lesson_visited_count') int? lessonVisitedCount,@JsonKey(name: 'lesson_not_visited_count') int? lessonNotVisitedCount,@JsonKey(name: 'lesson_watched_count') int? lessonWatchedCount,@JsonKey(name: 'lesson_not_watched_count') int? lessonNotWatchedCount,@JsonKey(name: 'coworking_reserved_count') int? coworkingReservedCount,@JsonKey(name: 'coworking_visited_count') int? coworkingVisitedCount,@JsonKey(name: 'coworking_visited_without_reserve_count') int? coworkingVisitedWithoutReserveCount,@JsonKey(name: 'homework_solved_count') int? homeworkSolvedCount,@JsonKey(name: 'homework_not_solved_count') int? homeworkNotSolvedCount,@JsonKey(name: 'student_middle_rating') String? studentMiddleRating
});




}
/// @nodoc
class __$MyStatisticCopyWithImpl<$Res>
    implements _$MyStatisticCopyWith<$Res> {
  __$MyStatisticCopyWithImpl(this._self, this._then);

  final _MyStatistic _self;
  final $Res Function(_MyStatistic) _then;

/// Create a copy of MyStatistic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lessonVisitedCount = freezed,Object? lessonNotVisitedCount = freezed,Object? lessonWatchedCount = freezed,Object? lessonNotWatchedCount = freezed,Object? coworkingReservedCount = freezed,Object? coworkingVisitedCount = freezed,Object? coworkingVisitedWithoutReserveCount = freezed,Object? homeworkSolvedCount = freezed,Object? homeworkNotSolvedCount = freezed,Object? studentMiddleRating = freezed,}) {
  return _then(_MyStatistic(
lessonVisitedCount: freezed == lessonVisitedCount ? _self.lessonVisitedCount : lessonVisitedCount // ignore: cast_nullable_to_non_nullable
as int?,lessonNotVisitedCount: freezed == lessonNotVisitedCount ? _self.lessonNotVisitedCount : lessonNotVisitedCount // ignore: cast_nullable_to_non_nullable
as int?,lessonWatchedCount: freezed == lessonWatchedCount ? _self.lessonWatchedCount : lessonWatchedCount // ignore: cast_nullable_to_non_nullable
as int?,lessonNotWatchedCount: freezed == lessonNotWatchedCount ? _self.lessonNotWatchedCount : lessonNotWatchedCount // ignore: cast_nullable_to_non_nullable
as int?,coworkingReservedCount: freezed == coworkingReservedCount ? _self.coworkingReservedCount : coworkingReservedCount // ignore: cast_nullable_to_non_nullable
as int?,coworkingVisitedCount: freezed == coworkingVisitedCount ? _self.coworkingVisitedCount : coworkingVisitedCount // ignore: cast_nullable_to_non_nullable
as int?,coworkingVisitedWithoutReserveCount: freezed == coworkingVisitedWithoutReserveCount ? _self.coworkingVisitedWithoutReserveCount : coworkingVisitedWithoutReserveCount // ignore: cast_nullable_to_non_nullable
as int?,homeworkSolvedCount: freezed == homeworkSolvedCount ? _self.homeworkSolvedCount : homeworkSolvedCount // ignore: cast_nullable_to_non_nullable
as int?,homeworkNotSolvedCount: freezed == homeworkNotSolvedCount ? _self.homeworkNotSolvedCount : homeworkNotSolvedCount // ignore: cast_nullable_to_non_nullable
as int?,studentMiddleRating: freezed == studentMiddleRating ? _self.studentMiddleRating : studentMiddleRating // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
