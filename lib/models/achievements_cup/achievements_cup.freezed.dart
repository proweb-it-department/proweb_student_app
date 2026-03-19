// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievements_cup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AchievementsCup implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'target_count') int? get targetCount;@JsonKey(name: 'is_active') bool? get isActive;@JsonKey(name: 'action_type') String? get actionType;@JsonKey(name: 'progress_type') String? get progressType;@JsonKey(name: 'category_id') int? get categoryId;@JsonKey(name: 'coins') int? get coins;@JsonKey(name: 'users') List<AchievementsCupUsers>? get users;
/// Create a copy of AchievementsCup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AchievementsCupCopyWith<AchievementsCup> get copyWith => _$AchievementsCupCopyWithImpl<AchievementsCup>(this as AchievementsCup, _$identity);

  /// Serializes this AchievementsCup to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AchievementsCup'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('targetCount', targetCount))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('actionType', actionType))..add(DiagnosticsProperty('progressType', progressType))..add(DiagnosticsProperty('categoryId', categoryId))..add(DiagnosticsProperty('coins', coins))..add(DiagnosticsProperty('users', users));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AchievementsCup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.targetCount, targetCount) || other.targetCount == targetCount)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.progressType, progressType) || other.progressType == progressType)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.coins, coins) || other.coins == coins)&&const DeepCollectionEquality().equals(other.users, users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,icon,targetCount,isActive,actionType,progressType,categoryId,coins,const DeepCollectionEquality().hash(users));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AchievementsCup(id: $id, name: $name, description: $description, icon: $icon, targetCount: $targetCount, isActive: $isActive, actionType: $actionType, progressType: $progressType, categoryId: $categoryId, coins: $coins, users: $users)';
}


}

/// @nodoc
abstract mixin class $AchievementsCupCopyWith<$Res>  {
  factory $AchievementsCupCopyWith(AchievementsCup value, $Res Function(AchievementsCup) _then) = _$AchievementsCupCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'target_count') int? targetCount,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'progress_type') String? progressType,@JsonKey(name: 'category_id') int? categoryId,@JsonKey(name: 'coins') int? coins,@JsonKey(name: 'users') List<AchievementsCupUsers>? users
});




}
/// @nodoc
class _$AchievementsCupCopyWithImpl<$Res>
    implements $AchievementsCupCopyWith<$Res> {
  _$AchievementsCupCopyWithImpl(this._self, this._then);

  final AchievementsCup _self;
  final $Res Function(AchievementsCup) _then;

/// Create a copy of AchievementsCup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? icon = freezed,Object? targetCount = freezed,Object? isActive = freezed,Object? actionType = freezed,Object? progressType = freezed,Object? categoryId = freezed,Object? coins = freezed,Object? users = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,targetCount: freezed == targetCount ? _self.targetCount : targetCount // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,progressType: freezed == progressType ? _self.progressType : progressType // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,coins: freezed == coins ? _self.coins : coins // ignore: cast_nullable_to_non_nullable
as int?,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<AchievementsCupUsers>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AchievementsCup].
extension AchievementsCupPatterns on AchievementsCup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AchievementsCup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AchievementsCup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AchievementsCup value)  $default,){
final _that = this;
switch (_that) {
case _AchievementsCup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AchievementsCup value)?  $default,){
final _that = this;
switch (_that) {
case _AchievementsCup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'target_count')  int? targetCount, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'progress_type')  String? progressType, @JsonKey(name: 'category_id')  int? categoryId, @JsonKey(name: 'coins')  int? coins, @JsonKey(name: 'users')  List<AchievementsCupUsers>? users)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AchievementsCup() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.icon,_that.targetCount,_that.isActive,_that.actionType,_that.progressType,_that.categoryId,_that.coins,_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'target_count')  int? targetCount, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'progress_type')  String? progressType, @JsonKey(name: 'category_id')  int? categoryId, @JsonKey(name: 'coins')  int? coins, @JsonKey(name: 'users')  List<AchievementsCupUsers>? users)  $default,) {final _that = this;
switch (_that) {
case _AchievementsCup():
return $default(_that.id,_that.name,_that.description,_that.icon,_that.targetCount,_that.isActive,_that.actionType,_that.progressType,_that.categoryId,_that.coins,_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'target_count')  int? targetCount, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'progress_type')  String? progressType, @JsonKey(name: 'category_id')  int? categoryId, @JsonKey(name: 'coins')  int? coins, @JsonKey(name: 'users')  List<AchievementsCupUsers>? users)?  $default,) {final _that = this;
switch (_that) {
case _AchievementsCup() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.icon,_that.targetCount,_that.isActive,_that.actionType,_that.progressType,_that.categoryId,_that.coins,_that.users);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AchievementsCup with DiagnosticableTreeMixin implements AchievementsCup {
  const _AchievementsCup({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'target_count') this.targetCount, @JsonKey(name: 'is_active') this.isActive, @JsonKey(name: 'action_type') this.actionType, @JsonKey(name: 'progress_type') this.progressType, @JsonKey(name: 'category_id') this.categoryId, @JsonKey(name: 'coins') this.coins, @JsonKey(name: 'users') final  List<AchievementsCupUsers>? users}): _users = users;
  factory _AchievementsCup.fromJson(Map<String, dynamic> json) => _$AchievementsCupFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'target_count') final  int? targetCount;
@override@JsonKey(name: 'is_active') final  bool? isActive;
@override@JsonKey(name: 'action_type') final  String? actionType;
@override@JsonKey(name: 'progress_type') final  String? progressType;
@override@JsonKey(name: 'category_id') final  int? categoryId;
@override@JsonKey(name: 'coins') final  int? coins;
 final  List<AchievementsCupUsers>? _users;
@override@JsonKey(name: 'users') List<AchievementsCupUsers>? get users {
  final value = _users;
  if (value == null) return null;
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AchievementsCup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AchievementsCupCopyWith<_AchievementsCup> get copyWith => __$AchievementsCupCopyWithImpl<_AchievementsCup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AchievementsCupToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AchievementsCup'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('targetCount', targetCount))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('actionType', actionType))..add(DiagnosticsProperty('progressType', progressType))..add(DiagnosticsProperty('categoryId', categoryId))..add(DiagnosticsProperty('coins', coins))..add(DiagnosticsProperty('users', users));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AchievementsCup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.targetCount, targetCount) || other.targetCount == targetCount)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.progressType, progressType) || other.progressType == progressType)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.coins, coins) || other.coins == coins)&&const DeepCollectionEquality().equals(other._users, _users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,icon,targetCount,isActive,actionType,progressType,categoryId,coins,const DeepCollectionEquality().hash(_users));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AchievementsCup(id: $id, name: $name, description: $description, icon: $icon, targetCount: $targetCount, isActive: $isActive, actionType: $actionType, progressType: $progressType, categoryId: $categoryId, coins: $coins, users: $users)';
}


}

/// @nodoc
abstract mixin class _$AchievementsCupCopyWith<$Res> implements $AchievementsCupCopyWith<$Res> {
  factory _$AchievementsCupCopyWith(_AchievementsCup value, $Res Function(_AchievementsCup) _then) = __$AchievementsCupCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'target_count') int? targetCount,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'progress_type') String? progressType,@JsonKey(name: 'category_id') int? categoryId,@JsonKey(name: 'coins') int? coins,@JsonKey(name: 'users') List<AchievementsCupUsers>? users
});




}
/// @nodoc
class __$AchievementsCupCopyWithImpl<$Res>
    implements _$AchievementsCupCopyWith<$Res> {
  __$AchievementsCupCopyWithImpl(this._self, this._then);

  final _AchievementsCup _self;
  final $Res Function(_AchievementsCup) _then;

/// Create a copy of AchievementsCup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? icon = freezed,Object? targetCount = freezed,Object? isActive = freezed,Object? actionType = freezed,Object? progressType = freezed,Object? categoryId = freezed,Object? coins = freezed,Object? users = freezed,}) {
  return _then(_AchievementsCup(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,targetCount: freezed == targetCount ? _self.targetCount : targetCount // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,progressType: freezed == progressType ? _self.progressType : progressType // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,coins: freezed == coins ? _self.coins : coins // ignore: cast_nullable_to_non_nullable
as int?,users: freezed == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<AchievementsCupUsers>?,
  ));
}


}


/// @nodoc
mixin _$AchievementsCupUsers implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'current_progress') int? get currentProgress;@JsonKey(name: 'is_achieved') bool? get isAchieved;@JsonKey(name: 'achieved_at') String? get achievedAt;@JsonKey(name: 'is_reward_received') bool? get isRewardReceived;@JsonKey(name: 'reward_received_at') String? get rewardReceivedAt;
/// Create a copy of AchievementsCupUsers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AchievementsCupUsersCopyWith<AchievementsCupUsers> get copyWith => _$AchievementsCupUsersCopyWithImpl<AchievementsCupUsers>(this as AchievementsCupUsers, _$identity);

  /// Serializes this AchievementsCupUsers to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AchievementsCupUsers'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('currentProgress', currentProgress))..add(DiagnosticsProperty('isAchieved', isAchieved))..add(DiagnosticsProperty('achievedAt', achievedAt))..add(DiagnosticsProperty('isRewardReceived', isRewardReceived))..add(DiagnosticsProperty('rewardReceivedAt', rewardReceivedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AchievementsCupUsers&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.currentProgress, currentProgress) || other.currentProgress == currentProgress)&&(identical(other.isAchieved, isAchieved) || other.isAchieved == isAchieved)&&(identical(other.achievedAt, achievedAt) || other.achievedAt == achievedAt)&&(identical(other.isRewardReceived, isRewardReceived) || other.isRewardReceived == isRewardReceived)&&(identical(other.rewardReceivedAt, rewardReceivedAt) || other.rewardReceivedAt == rewardReceivedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,currentProgress,isAchieved,achievedAt,isRewardReceived,rewardReceivedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AchievementsCupUsers(id: $id, userId: $userId, currentProgress: $currentProgress, isAchieved: $isAchieved, achievedAt: $achievedAt, isRewardReceived: $isRewardReceived, rewardReceivedAt: $rewardReceivedAt)';
}


}

/// @nodoc
abstract mixin class $AchievementsCupUsersCopyWith<$Res>  {
  factory $AchievementsCupUsersCopyWith(AchievementsCupUsers value, $Res Function(AchievementsCupUsers) _then) = _$AchievementsCupUsersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'current_progress') int? currentProgress,@JsonKey(name: 'is_achieved') bool? isAchieved,@JsonKey(name: 'achieved_at') String? achievedAt,@JsonKey(name: 'is_reward_received') bool? isRewardReceived,@JsonKey(name: 'reward_received_at') String? rewardReceivedAt
});




}
/// @nodoc
class _$AchievementsCupUsersCopyWithImpl<$Res>
    implements $AchievementsCupUsersCopyWith<$Res> {
  _$AchievementsCupUsersCopyWithImpl(this._self, this._then);

  final AchievementsCupUsers _self;
  final $Res Function(AchievementsCupUsers) _then;

/// Create a copy of AchievementsCupUsers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? currentProgress = freezed,Object? isAchieved = freezed,Object? achievedAt = freezed,Object? isRewardReceived = freezed,Object? rewardReceivedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,currentProgress: freezed == currentProgress ? _self.currentProgress : currentProgress // ignore: cast_nullable_to_non_nullable
as int?,isAchieved: freezed == isAchieved ? _self.isAchieved : isAchieved // ignore: cast_nullable_to_non_nullable
as bool?,achievedAt: freezed == achievedAt ? _self.achievedAt : achievedAt // ignore: cast_nullable_to_non_nullable
as String?,isRewardReceived: freezed == isRewardReceived ? _self.isRewardReceived : isRewardReceived // ignore: cast_nullable_to_non_nullable
as bool?,rewardReceivedAt: freezed == rewardReceivedAt ? _self.rewardReceivedAt : rewardReceivedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AchievementsCupUsers].
extension AchievementsCupUsersPatterns on AchievementsCupUsers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AchievementsCupUsers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AchievementsCupUsers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AchievementsCupUsers value)  $default,){
final _that = this;
switch (_that) {
case _AchievementsCupUsers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AchievementsCupUsers value)?  $default,){
final _that = this;
switch (_that) {
case _AchievementsCupUsers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'current_progress')  int? currentProgress, @JsonKey(name: 'is_achieved')  bool? isAchieved, @JsonKey(name: 'achieved_at')  String? achievedAt, @JsonKey(name: 'is_reward_received')  bool? isRewardReceived, @JsonKey(name: 'reward_received_at')  String? rewardReceivedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AchievementsCupUsers() when $default != null:
return $default(_that.id,_that.userId,_that.currentProgress,_that.isAchieved,_that.achievedAt,_that.isRewardReceived,_that.rewardReceivedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'current_progress')  int? currentProgress, @JsonKey(name: 'is_achieved')  bool? isAchieved, @JsonKey(name: 'achieved_at')  String? achievedAt, @JsonKey(name: 'is_reward_received')  bool? isRewardReceived, @JsonKey(name: 'reward_received_at')  String? rewardReceivedAt)  $default,) {final _that = this;
switch (_that) {
case _AchievementsCupUsers():
return $default(_that.id,_that.userId,_that.currentProgress,_that.isAchieved,_that.achievedAt,_that.isRewardReceived,_that.rewardReceivedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'current_progress')  int? currentProgress, @JsonKey(name: 'is_achieved')  bool? isAchieved, @JsonKey(name: 'achieved_at')  String? achievedAt, @JsonKey(name: 'is_reward_received')  bool? isRewardReceived, @JsonKey(name: 'reward_received_at')  String? rewardReceivedAt)?  $default,) {final _that = this;
switch (_that) {
case _AchievementsCupUsers() when $default != null:
return $default(_that.id,_that.userId,_that.currentProgress,_that.isAchieved,_that.achievedAt,_that.isRewardReceived,_that.rewardReceivedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AchievementsCupUsers with DiagnosticableTreeMixin implements AchievementsCupUsers {
  const _AchievementsCupUsers({@JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'current_progress') this.currentProgress, @JsonKey(name: 'is_achieved') this.isAchieved, @JsonKey(name: 'achieved_at') this.achievedAt, @JsonKey(name: 'is_reward_received') this.isRewardReceived, @JsonKey(name: 'reward_received_at') this.rewardReceivedAt});
  factory _AchievementsCupUsers.fromJson(Map<String, dynamic> json) => _$AchievementsCupUsersFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'current_progress') final  int? currentProgress;
@override@JsonKey(name: 'is_achieved') final  bool? isAchieved;
@override@JsonKey(name: 'achieved_at') final  String? achievedAt;
@override@JsonKey(name: 'is_reward_received') final  bool? isRewardReceived;
@override@JsonKey(name: 'reward_received_at') final  String? rewardReceivedAt;

/// Create a copy of AchievementsCupUsers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AchievementsCupUsersCopyWith<_AchievementsCupUsers> get copyWith => __$AchievementsCupUsersCopyWithImpl<_AchievementsCupUsers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AchievementsCupUsersToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AchievementsCupUsers'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('currentProgress', currentProgress))..add(DiagnosticsProperty('isAchieved', isAchieved))..add(DiagnosticsProperty('achievedAt', achievedAt))..add(DiagnosticsProperty('isRewardReceived', isRewardReceived))..add(DiagnosticsProperty('rewardReceivedAt', rewardReceivedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AchievementsCupUsers&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.currentProgress, currentProgress) || other.currentProgress == currentProgress)&&(identical(other.isAchieved, isAchieved) || other.isAchieved == isAchieved)&&(identical(other.achievedAt, achievedAt) || other.achievedAt == achievedAt)&&(identical(other.isRewardReceived, isRewardReceived) || other.isRewardReceived == isRewardReceived)&&(identical(other.rewardReceivedAt, rewardReceivedAt) || other.rewardReceivedAt == rewardReceivedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,currentProgress,isAchieved,achievedAt,isRewardReceived,rewardReceivedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AchievementsCupUsers(id: $id, userId: $userId, currentProgress: $currentProgress, isAchieved: $isAchieved, achievedAt: $achievedAt, isRewardReceived: $isRewardReceived, rewardReceivedAt: $rewardReceivedAt)';
}


}

/// @nodoc
abstract mixin class _$AchievementsCupUsersCopyWith<$Res> implements $AchievementsCupUsersCopyWith<$Res> {
  factory _$AchievementsCupUsersCopyWith(_AchievementsCupUsers value, $Res Function(_AchievementsCupUsers) _then) = __$AchievementsCupUsersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'current_progress') int? currentProgress,@JsonKey(name: 'is_achieved') bool? isAchieved,@JsonKey(name: 'achieved_at') String? achievedAt,@JsonKey(name: 'is_reward_received') bool? isRewardReceived,@JsonKey(name: 'reward_received_at') String? rewardReceivedAt
});




}
/// @nodoc
class __$AchievementsCupUsersCopyWithImpl<$Res>
    implements _$AchievementsCupUsersCopyWith<$Res> {
  __$AchievementsCupUsersCopyWithImpl(this._self, this._then);

  final _AchievementsCupUsers _self;
  final $Res Function(_AchievementsCupUsers) _then;

/// Create a copy of AchievementsCupUsers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? currentProgress = freezed,Object? isAchieved = freezed,Object? achievedAt = freezed,Object? isRewardReceived = freezed,Object? rewardReceivedAt = freezed,}) {
  return _then(_AchievementsCupUsers(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,currentProgress: freezed == currentProgress ? _self.currentProgress : currentProgress // ignore: cast_nullable_to_non_nullable
as int?,isAchieved: freezed == isAchieved ? _self.isAchieved : isAchieved // ignore: cast_nullable_to_non_nullable
as bool?,achievedAt: freezed == achievedAt ? _self.achievedAt : achievedAt // ignore: cast_nullable_to_non_nullable
as String?,isRewardReceived: freezed == isRewardReceived ? _self.isRewardReceived : isRewardReceived // ignore: cast_nullable_to_non_nullable
as bool?,rewardReceivedAt: freezed == rewardReceivedAt ? _self.rewardReceivedAt : rewardReceivedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
