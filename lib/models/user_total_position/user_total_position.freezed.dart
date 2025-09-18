// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_total_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserTotalPosition implements DiagnosticableTreeMixin {

@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'user') User? get user;@JsonKey(name: 'position') int? get position;@JsonKey(name: 'total_score') int? get totalScore;@JsonKey(name: 'last_update_at') String? get lastUpdateAt;
/// Create a copy of UserTotalPosition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserTotalPositionCopyWith<UserTotalPosition> get copyWith => _$UserTotalPositionCopyWithImpl<UserTotalPosition>(this as UserTotalPosition, _$identity);

  /// Serializes this UserTotalPosition to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserTotalPosition'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('totalScore', totalScore))..add(DiagnosticsProperty('lastUpdateAt', lastUpdateAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserTotalPosition&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.position, position) || other.position == position)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.lastUpdateAt, lastUpdateAt) || other.lastUpdateAt == lastUpdateAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,user,position,totalScore,lastUpdateAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserTotalPosition(userId: $userId, user: $user, position: $position, totalScore: $totalScore, lastUpdateAt: $lastUpdateAt)';
}


}

/// @nodoc
abstract mixin class $UserTotalPositionCopyWith<$Res>  {
  factory $UserTotalPositionCopyWith(UserTotalPosition value, $Res Function(UserTotalPosition) _then) = _$UserTotalPositionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'user') User? user,@JsonKey(name: 'position') int? position,@JsonKey(name: 'total_score') int? totalScore,@JsonKey(name: 'last_update_at') String? lastUpdateAt
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$UserTotalPositionCopyWithImpl<$Res>
    implements $UserTotalPositionCopyWith<$Res> {
  _$UserTotalPositionCopyWithImpl(this._self, this._then);

  final UserTotalPosition _self;
  final $Res Function(UserTotalPosition) _then;

/// Create a copy of UserTotalPosition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? user = freezed,Object? position = freezed,Object? totalScore = freezed,Object? lastUpdateAt = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int?,lastUpdateAt: freezed == lastUpdateAt ? _self.lastUpdateAt : lastUpdateAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserTotalPosition
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserTotalPosition].
extension UserTotalPositionPatterns on UserTotalPosition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserTotalPosition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserTotalPosition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserTotalPosition value)  $default,){
final _that = this;
switch (_that) {
case _UserTotalPosition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserTotalPosition value)?  $default,){
final _that = this;
switch (_that) {
case _UserTotalPosition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'total_score')  int? totalScore, @JsonKey(name: 'last_update_at')  String? lastUpdateAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserTotalPosition() when $default != null:
return $default(_that.userId,_that.user,_that.position,_that.totalScore,_that.lastUpdateAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'total_score')  int? totalScore, @JsonKey(name: 'last_update_at')  String? lastUpdateAt)  $default,) {final _that = this;
switch (_that) {
case _UserTotalPosition():
return $default(_that.userId,_that.user,_that.position,_that.totalScore,_that.lastUpdateAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'total_score')  int? totalScore, @JsonKey(name: 'last_update_at')  String? lastUpdateAt)?  $default,) {final _that = this;
switch (_that) {
case _UserTotalPosition() when $default != null:
return $default(_that.userId,_that.user,_that.position,_that.totalScore,_that.lastUpdateAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserTotalPosition with DiagnosticableTreeMixin implements UserTotalPosition {
  const _UserTotalPosition({@JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'user') this.user, @JsonKey(name: 'position') this.position, @JsonKey(name: 'total_score') this.totalScore, @JsonKey(name: 'last_update_at') this.lastUpdateAt});
  factory _UserTotalPosition.fromJson(Map<String, dynamic> json) => _$UserTotalPositionFromJson(json);

@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'user') final  User? user;
@override@JsonKey(name: 'position') final  int? position;
@override@JsonKey(name: 'total_score') final  int? totalScore;
@override@JsonKey(name: 'last_update_at') final  String? lastUpdateAt;

/// Create a copy of UserTotalPosition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserTotalPositionCopyWith<_UserTotalPosition> get copyWith => __$UserTotalPositionCopyWithImpl<_UserTotalPosition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserTotalPositionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserTotalPosition'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('totalScore', totalScore))..add(DiagnosticsProperty('lastUpdateAt', lastUpdateAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserTotalPosition&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.position, position) || other.position == position)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.lastUpdateAt, lastUpdateAt) || other.lastUpdateAt == lastUpdateAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,user,position,totalScore,lastUpdateAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserTotalPosition(userId: $userId, user: $user, position: $position, totalScore: $totalScore, lastUpdateAt: $lastUpdateAt)';
}


}

/// @nodoc
abstract mixin class _$UserTotalPositionCopyWith<$Res> implements $UserTotalPositionCopyWith<$Res> {
  factory _$UserTotalPositionCopyWith(_UserTotalPosition value, $Res Function(_UserTotalPosition) _then) = __$UserTotalPositionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'user') User? user,@JsonKey(name: 'position') int? position,@JsonKey(name: 'total_score') int? totalScore,@JsonKey(name: 'last_update_at') String? lastUpdateAt
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$UserTotalPositionCopyWithImpl<$Res>
    implements _$UserTotalPositionCopyWith<$Res> {
  __$UserTotalPositionCopyWithImpl(this._self, this._then);

  final _UserTotalPosition _self;
  final $Res Function(_UserTotalPosition) _then;

/// Create a copy of UserTotalPosition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? user = freezed,Object? position = freezed,Object? totalScore = freezed,Object? lastUpdateAt = freezed,}) {
  return _then(_UserTotalPosition(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int?,lastUpdateAt: freezed == lastUpdateAt ? _self.lastUpdateAt : lastUpdateAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserTotalPosition
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
