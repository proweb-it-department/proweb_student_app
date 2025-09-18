// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sessions_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionsListItemModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UpdatedBy? get updatedBy;@JsonKey(name: 'session_id') int get sessionId;@JsonKey(name: 'uuid') String? get uuid;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'location') String? get location;@JsonKey(name: 'ip_addr') String? get ipAddr;@JsonKey(name: 'device_name') String get deviceName;@JsonKey(name: 'device_type') String get deviceType;
/// Create a copy of SessionsListItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionsListItemModelCopyWith<SessionsListItemModel> get copyWith => _$SessionsListItemModelCopyWithImpl<SessionsListItemModel>(this as SessionsListItemModel, _$identity);

  /// Serializes this SessionsListItemModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SessionsListItemModel'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('sessionId', sessionId))..add(DiagnosticsProperty('uuid', uuid))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('location', location))..add(DiagnosticsProperty('ipAddr', ipAddr))..add(DiagnosticsProperty('deviceName', deviceName))..add(DiagnosticsProperty('deviceType', deviceType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsListItemModel&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.location, location) || other.location == location)&&(identical(other.ipAddr, ipAddr) || other.ipAddr == ipAddr)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,sessionId,uuid,isActive,location,ipAddr,deviceName,deviceType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SessionsListItemModel(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, sessionId: $sessionId, uuid: $uuid, isActive: $isActive, location: $location, ipAddr: $ipAddr, deviceName: $deviceName, deviceType: $deviceType)';
}


}

/// @nodoc
abstract mixin class $SessionsListItemModelCopyWith<$Res>  {
  factory $SessionsListItemModelCopyWith(SessionsListItemModel value, $Res Function(SessionsListItemModel) _then) = _$SessionsListItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UpdatedBy? updatedBy,@JsonKey(name: 'session_id') int sessionId,@JsonKey(name: 'uuid') String? uuid,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'location') String? location,@JsonKey(name: 'ip_addr') String? ipAddr,@JsonKey(name: 'device_name') String deviceName,@JsonKey(name: 'device_type') String deviceType
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UpdatedByCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class _$SessionsListItemModelCopyWithImpl<$Res>
    implements $SessionsListItemModelCopyWith<$Res> {
  _$SessionsListItemModelCopyWithImpl(this._self, this._then);

  final SessionsListItemModel _self;
  final $Res Function(SessionsListItemModel) _then;

/// Create a copy of SessionsListItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? sessionId = null,Object? uuid = freezed,Object? isActive = null,Object? location = freezed,Object? ipAddr = freezed,Object? deviceName = null,Object? deviceType = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UpdatedBy?,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as int,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,ipAddr: freezed == ipAddr ? _self.ipAddr : ipAddr // ignore: cast_nullable_to_non_nullable
as String?,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SessionsListItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of SessionsListItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdatedByCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UpdatedByCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [SessionsListItemModel].
extension SessionsListItemModelPatterns on SessionsListItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionsListItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionsListItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionsListItemModel value)  $default,){
final _that = this;
switch (_that) {
case _SessionsListItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionsListItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _SessionsListItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UpdatedBy? updatedBy, @JsonKey(name: 'session_id')  int sessionId, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'location')  String? location, @JsonKey(name: 'ip_addr')  String? ipAddr, @JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_type')  String deviceType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionsListItemModel() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.sessionId,_that.uuid,_that.isActive,_that.location,_that.ipAddr,_that.deviceName,_that.deviceType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UpdatedBy? updatedBy, @JsonKey(name: 'session_id')  int sessionId, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'location')  String? location, @JsonKey(name: 'ip_addr')  String? ipAddr, @JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_type')  String deviceType)  $default,) {final _that = this;
switch (_that) {
case _SessionsListItemModel():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.sessionId,_that.uuid,_that.isActive,_that.location,_that.ipAddr,_that.deviceName,_that.deviceType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UpdatedBy? updatedBy, @JsonKey(name: 'session_id')  int sessionId, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'location')  String? location, @JsonKey(name: 'ip_addr')  String? ipAddr, @JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_type')  String deviceType)?  $default,) {final _that = this;
switch (_that) {
case _SessionsListItemModel() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.sessionId,_that.uuid,_that.isActive,_that.location,_that.ipAddr,_that.deviceName,_that.deviceType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionsListItemModel with DiagnosticableTreeMixin implements SessionsListItemModel {
  const _SessionsListItemModel({@JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'uuid') this.uuid, @JsonKey(name: 'is_active') required this.isActive, @JsonKey(name: 'location') this.location, @JsonKey(name: 'ip_addr') this.ipAddr, @JsonKey(name: 'device_name') required this.deviceName, @JsonKey(name: 'device_type') required this.deviceType});
  factory _SessionsListItemModel.fromJson(Map<String, dynamic> json) => _$SessionsListItemModelFromJson(json);

@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UpdatedBy? updatedBy;
@override@JsonKey(name: 'session_id') final  int sessionId;
@override@JsonKey(name: 'uuid') final  String? uuid;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'location') final  String? location;
@override@JsonKey(name: 'ip_addr') final  String? ipAddr;
@override@JsonKey(name: 'device_name') final  String deviceName;
@override@JsonKey(name: 'device_type') final  String deviceType;

/// Create a copy of SessionsListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionsListItemModelCopyWith<_SessionsListItemModel> get copyWith => __$SessionsListItemModelCopyWithImpl<_SessionsListItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionsListItemModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SessionsListItemModel'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('sessionId', sessionId))..add(DiagnosticsProperty('uuid', uuid))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('location', location))..add(DiagnosticsProperty('ipAddr', ipAddr))..add(DiagnosticsProperty('deviceName', deviceName))..add(DiagnosticsProperty('deviceType', deviceType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionsListItemModel&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.location, location) || other.location == location)&&(identical(other.ipAddr, ipAddr) || other.ipAddr == ipAddr)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,sessionId,uuid,isActive,location,ipAddr,deviceName,deviceType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SessionsListItemModel(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, sessionId: $sessionId, uuid: $uuid, isActive: $isActive, location: $location, ipAddr: $ipAddr, deviceName: $deviceName, deviceType: $deviceType)';
}


}

/// @nodoc
abstract mixin class _$SessionsListItemModelCopyWith<$Res> implements $SessionsListItemModelCopyWith<$Res> {
  factory _$SessionsListItemModelCopyWith(_SessionsListItemModel value, $Res Function(_SessionsListItemModel) _then) = __$SessionsListItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UpdatedBy? updatedBy,@JsonKey(name: 'session_id') int sessionId,@JsonKey(name: 'uuid') String? uuid,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'location') String? location,@JsonKey(name: 'ip_addr') String? ipAddr,@JsonKey(name: 'device_name') String deviceName,@JsonKey(name: 'device_type') String deviceType
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UpdatedByCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class __$SessionsListItemModelCopyWithImpl<$Res>
    implements _$SessionsListItemModelCopyWith<$Res> {
  __$SessionsListItemModelCopyWithImpl(this._self, this._then);

  final _SessionsListItemModel _self;
  final $Res Function(_SessionsListItemModel) _then;

/// Create a copy of SessionsListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? sessionId = null,Object? uuid = freezed,Object? isActive = null,Object? location = freezed,Object? ipAddr = freezed,Object? deviceName = null,Object? deviceType = null,}) {
  return _then(_SessionsListItemModel(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UpdatedBy?,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as int,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,ipAddr: freezed == ipAddr ? _self.ipAddr : ipAddr // ignore: cast_nullable_to_non_nullable
as String?,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SessionsListItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of SessionsListItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdatedByCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UpdatedByCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}
}


/// @nodoc
mixin _$UserIdDefault implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'user') User? get user;
/// Create a copy of UserIdDefault
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<UserIdDefault> get copyWith => _$UserIdDefaultCopyWithImpl<UserIdDefault>(this as UserIdDefault, _$identity);

  /// Serializes this UserIdDefault to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserIdDefault'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserIdDefault&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserIdDefault(id: $id, userId: $userId, user: $user)';
}


}

/// @nodoc
abstract mixin class $UserIdDefaultCopyWith<$Res>  {
  factory $UserIdDefaultCopyWith(UserIdDefault value, $Res Function(UserIdDefault) _then) = _$UserIdDefaultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'user') User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$UserIdDefaultCopyWithImpl<$Res>
    implements $UserIdDefaultCopyWith<$Res> {
  _$UserIdDefaultCopyWithImpl(this._self, this._then);

  final UserIdDefault _self;
  final $Res Function(UserIdDefault) _then;

/// Create a copy of UserIdDefault
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of UserIdDefault
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


/// Adds pattern-matching-related methods to [UserIdDefault].
extension UserIdDefaultPatterns on UserIdDefault {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserIdDefault value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserIdDefault() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserIdDefault value)  $default,){
final _that = this;
switch (_that) {
case _UserIdDefault():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserIdDefault value)?  $default,){
final _that = this;
switch (_that) {
case _UserIdDefault() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserIdDefault() when $default != null:
return $default(_that.id,_that.userId,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user)  $default,) {final _that = this;
switch (_that) {
case _UserIdDefault():
return $default(_that.id,_that.userId,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user)?  $default,) {final _that = this;
switch (_that) {
case _UserIdDefault() when $default != null:
return $default(_that.id,_that.userId,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserIdDefault with DiagnosticableTreeMixin implements UserIdDefault {
  const _UserIdDefault({@JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'user') this.user});
  factory _UserIdDefault.fromJson(Map<String, dynamic> json) => _$UserIdDefaultFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'user') final  User? user;

/// Create a copy of UserIdDefault
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserIdDefaultCopyWith<_UserIdDefault> get copyWith => __$UserIdDefaultCopyWithImpl<_UserIdDefault>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserIdDefaultToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserIdDefault'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserIdDefault&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserIdDefault(id: $id, userId: $userId, user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserIdDefaultCopyWith<$Res> implements $UserIdDefaultCopyWith<$Res> {
  factory _$UserIdDefaultCopyWith(_UserIdDefault value, $Res Function(_UserIdDefault) _then) = __$UserIdDefaultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'user') User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$UserIdDefaultCopyWithImpl<$Res>
    implements _$UserIdDefaultCopyWith<$Res> {
  __$UserIdDefaultCopyWithImpl(this._self, this._then);

  final _UserIdDefault _self;
  final $Res Function(_UserIdDefault) _then;

/// Create a copy of UserIdDefault
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? user = freezed,}) {
  return _then(_UserIdDefault(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of UserIdDefault
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


/// @nodoc
mixin _$UpdatedBy implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;
/// Create a copy of UpdatedBy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatedByCopyWith<UpdatedBy> get copyWith => _$UpdatedByCopyWithImpl<UpdatedBy>(this as UpdatedBy, _$identity);

  /// Serializes this UpdatedBy to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UpdatedBy'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatedBy&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UpdatedBy(id: $id)';
}


}

/// @nodoc
abstract mixin class $UpdatedByCopyWith<$Res>  {
  factory $UpdatedByCopyWith(UpdatedBy value, $Res Function(UpdatedBy) _then) = _$UpdatedByCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id
});




}
/// @nodoc
class _$UpdatedByCopyWithImpl<$Res>
    implements $UpdatedByCopyWith<$Res> {
  _$UpdatedByCopyWithImpl(this._self, this._then);

  final UpdatedBy _self;
  final $Res Function(UpdatedBy) _then;

/// Create a copy of UpdatedBy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatedBy].
extension UpdatedByPatterns on UpdatedBy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatedBy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatedBy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatedBy value)  $default,){
final _that = this;
switch (_that) {
case _UpdatedBy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatedBy value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatedBy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatedBy() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id)  $default,) {final _that = this;
switch (_that) {
case _UpdatedBy():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id)?  $default,) {final _that = this;
switch (_that) {
case _UpdatedBy() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdatedBy with DiagnosticableTreeMixin implements UpdatedBy {
  const _UpdatedBy({@JsonKey(name: 'id') this.id});
  factory _UpdatedBy.fromJson(Map<String, dynamic> json) => _$UpdatedByFromJson(json);

@override@JsonKey(name: 'id') final  int? id;

/// Create a copy of UpdatedBy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatedByCopyWith<_UpdatedBy> get copyWith => __$UpdatedByCopyWithImpl<_UpdatedBy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatedByToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UpdatedBy'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatedBy&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UpdatedBy(id: $id)';
}


}

/// @nodoc
abstract mixin class _$UpdatedByCopyWith<$Res> implements $UpdatedByCopyWith<$Res> {
  factory _$UpdatedByCopyWith(_UpdatedBy value, $Res Function(_UpdatedBy) _then) = __$UpdatedByCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id
});




}
/// @nodoc
class __$UpdatedByCopyWithImpl<$Res>
    implements _$UpdatedByCopyWith<$Res> {
  __$UpdatedByCopyWithImpl(this._self, this._then);

  final _UpdatedBy _self;
  final $Res Function(_UpdatedBy) _then;

/// Create a copy of UpdatedBy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_UpdatedBy(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
