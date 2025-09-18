// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupUser implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'group_user_id') int? get groupUserId;@JsonKey(name: 'user') StudentUser? get user;@JsonKey(name: 'group_id') int? get groupId;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'group_role') String? get groupRole;@JsonKey(name: 'format') String? get format;@JsonKey(name: 'lead_id') int? get leadId;@JsonKey(name: 'confirmed_by') UserIdDefault? get confirmedBy;@JsonKey(name: 'prices') List<Prices>? get prices;@JsonKey(name: 'discounts') List<Discounts>? get discounts;@JsonKey(name: 'auto_activate_lesson') int? get autoActivateLesson;@JsonKey(name: 'middle_rating') String? get middleRating;@JsonKey(name: 'video_access_last_date') String? get videoAccessLastDate;@JsonKey(name: 'coworking_access_last_date') String? get coworkingAccessLastDate;@JsonKey(name: 'access_to_video') bool? get accessToVideo;@JsonKey(name: 'has_package') bool? get hasPackage;
/// Create a copy of GroupUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupUserCopyWith<GroupUser> get copyWith => _$GroupUserCopyWithImpl<GroupUser>(this as GroupUser, _$identity);

  /// Serializes this GroupUser to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupUser'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('groupUserId', groupUserId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('groupRole', groupRole))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('leadId', leadId))..add(DiagnosticsProperty('confirmedBy', confirmedBy))..add(DiagnosticsProperty('prices', prices))..add(DiagnosticsProperty('discounts', discounts))..add(DiagnosticsProperty('autoActivateLesson', autoActivateLesson))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('videoAccessLastDate', videoAccessLastDate))..add(DiagnosticsProperty('coworkingAccessLastDate', coworkingAccessLastDate))..add(DiagnosticsProperty('accessToVideo', accessToVideo))..add(DiagnosticsProperty('hasPackage', hasPackage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupUser&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.groupUserId, groupUserId) || other.groupUserId == groupUserId)&&(identical(other.user, user) || other.user == user)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.status, status) || other.status == status)&&(identical(other.groupRole, groupRole) || other.groupRole == groupRole)&&(identical(other.format, format) || other.format == format)&&(identical(other.leadId, leadId) || other.leadId == leadId)&&(identical(other.confirmedBy, confirmedBy) || other.confirmedBy == confirmedBy)&&const DeepCollectionEquality().equals(other.prices, prices)&&const DeepCollectionEquality().equals(other.discounts, discounts)&&(identical(other.autoActivateLesson, autoActivateLesson) || other.autoActivateLesson == autoActivateLesson)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&(identical(other.videoAccessLastDate, videoAccessLastDate) || other.videoAccessLastDate == videoAccessLastDate)&&(identical(other.coworkingAccessLastDate, coworkingAccessLastDate) || other.coworkingAccessLastDate == coworkingAccessLastDate)&&(identical(other.accessToVideo, accessToVideo) || other.accessToVideo == accessToVideo)&&(identical(other.hasPackage, hasPackage) || other.hasPackage == hasPackage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdBy,updatedBy,groupUserId,user,groupId,status,groupRole,format,leadId,confirmedBy,const DeepCollectionEquality().hash(prices),const DeepCollectionEquality().hash(discounts),autoActivateLesson,middleRating,videoAccessLastDate,coworkingAccessLastDate,accessToVideo,hasPackage]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupUser(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, groupUserId: $groupUserId, user: $user, groupId: $groupId, status: $status, groupRole: $groupRole, format: $format, leadId: $leadId, confirmedBy: $confirmedBy, prices: $prices, discounts: $discounts, autoActivateLesson: $autoActivateLesson, middleRating: $middleRating, videoAccessLastDate: $videoAccessLastDate, coworkingAccessLastDate: $coworkingAccessLastDate, accessToVideo: $accessToVideo, hasPackage: $hasPackage)';
}


}

/// @nodoc
abstract mixin class $GroupUserCopyWith<$Res>  {
  factory $GroupUserCopyWith(GroupUser value, $Res Function(GroupUser) _then) = _$GroupUserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'group_user_id') int? groupUserId,@JsonKey(name: 'user') StudentUser? user,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'status') String? status,@JsonKey(name: 'group_role') String? groupRole,@JsonKey(name: 'format') String? format,@JsonKey(name: 'lead_id') int? leadId,@JsonKey(name: 'confirmed_by') UserIdDefault? confirmedBy,@JsonKey(name: 'prices') List<Prices>? prices,@JsonKey(name: 'discounts') List<Discounts>? discounts,@JsonKey(name: 'auto_activate_lesson') int? autoActivateLesson,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'video_access_last_date') String? videoAccessLastDate,@JsonKey(name: 'coworking_access_last_date') String? coworkingAccessLastDate,@JsonKey(name: 'access_to_video') bool? accessToVideo,@JsonKey(name: 'has_package') bool? hasPackage
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;$StudentUserCopyWith<$Res>? get user;$UserIdDefaultCopyWith<$Res>? get confirmedBy;

}
/// @nodoc
class _$GroupUserCopyWithImpl<$Res>
    implements $GroupUserCopyWith<$Res> {
  _$GroupUserCopyWithImpl(this._self, this._then);

  final GroupUser _self;
  final $Res Function(GroupUser) _then;

/// Create a copy of GroupUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? groupUserId = freezed,Object? user = freezed,Object? groupId = freezed,Object? status = freezed,Object? groupRole = freezed,Object? format = freezed,Object? leadId = freezed,Object? confirmedBy = freezed,Object? prices = freezed,Object? discounts = freezed,Object? autoActivateLesson = freezed,Object? middleRating = freezed,Object? videoAccessLastDate = freezed,Object? coworkingAccessLastDate = freezed,Object? accessToVideo = freezed,Object? hasPackage = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,groupUserId: freezed == groupUserId ? _self.groupUserId : groupUserId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as StudentUser?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,groupRole: freezed == groupRole ? _self.groupRole : groupRole // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,leadId: freezed == leadId ? _self.leadId : leadId // ignore: cast_nullable_to_non_nullable
as int?,confirmedBy: freezed == confirmedBy ? _self.confirmedBy : confirmedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,prices: freezed == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as List<Prices>?,discounts: freezed == discounts ? _self.discounts : discounts // ignore: cast_nullable_to_non_nullable
as List<Discounts>?,autoActivateLesson: freezed == autoActivateLesson ? _self.autoActivateLesson : autoActivateLesson // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,videoAccessLastDate: freezed == videoAccessLastDate ? _self.videoAccessLastDate : videoAccessLastDate // ignore: cast_nullable_to_non_nullable
as String?,coworkingAccessLastDate: freezed == coworkingAccessLastDate ? _self.coworkingAccessLastDate : coworkingAccessLastDate // ignore: cast_nullable_to_non_nullable
as String?,accessToVideo: freezed == accessToVideo ? _self.accessToVideo : accessToVideo // ignore: cast_nullable_to_non_nullable
as bool?,hasPackage: freezed == hasPackage ? _self.hasPackage : hasPackage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of GroupUser
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
}/// Create a copy of GroupUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}/// Create a copy of GroupUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $StudentUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of GroupUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get confirmedBy {
    if (_self.confirmedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.confirmedBy!, (value) {
    return _then(_self.copyWith(confirmedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupUser].
extension GroupUserPatterns on GroupUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupUser value)  $default,){
final _that = this;
switch (_that) {
case _GroupUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupUser value)?  $default,){
final _that = this;
switch (_that) {
case _GroupUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'group_user_id')  int? groupUserId, @JsonKey(name: 'user')  StudentUser? user, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'group_role')  String? groupRole, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'lead_id')  int? leadId, @JsonKey(name: 'confirmed_by')  UserIdDefault? confirmedBy, @JsonKey(name: 'prices')  List<Prices>? prices, @JsonKey(name: 'discounts')  List<Discounts>? discounts, @JsonKey(name: 'auto_activate_lesson')  int? autoActivateLesson, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'video_access_last_date')  String? videoAccessLastDate, @JsonKey(name: 'coworking_access_last_date')  String? coworkingAccessLastDate, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'has_package')  bool? hasPackage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupUser() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.groupUserId,_that.user,_that.groupId,_that.status,_that.groupRole,_that.format,_that.leadId,_that.confirmedBy,_that.prices,_that.discounts,_that.autoActivateLesson,_that.middleRating,_that.videoAccessLastDate,_that.coworkingAccessLastDate,_that.accessToVideo,_that.hasPackage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'group_user_id')  int? groupUserId, @JsonKey(name: 'user')  StudentUser? user, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'group_role')  String? groupRole, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'lead_id')  int? leadId, @JsonKey(name: 'confirmed_by')  UserIdDefault? confirmedBy, @JsonKey(name: 'prices')  List<Prices>? prices, @JsonKey(name: 'discounts')  List<Discounts>? discounts, @JsonKey(name: 'auto_activate_lesson')  int? autoActivateLesson, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'video_access_last_date')  String? videoAccessLastDate, @JsonKey(name: 'coworking_access_last_date')  String? coworkingAccessLastDate, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'has_package')  bool? hasPackage)  $default,) {final _that = this;
switch (_that) {
case _GroupUser():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.groupUserId,_that.user,_that.groupId,_that.status,_that.groupRole,_that.format,_that.leadId,_that.confirmedBy,_that.prices,_that.discounts,_that.autoActivateLesson,_that.middleRating,_that.videoAccessLastDate,_that.coworkingAccessLastDate,_that.accessToVideo,_that.hasPackage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'group_user_id')  int? groupUserId, @JsonKey(name: 'user')  StudentUser? user, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'group_role')  String? groupRole, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'lead_id')  int? leadId, @JsonKey(name: 'confirmed_by')  UserIdDefault? confirmedBy, @JsonKey(name: 'prices')  List<Prices>? prices, @JsonKey(name: 'discounts')  List<Discounts>? discounts, @JsonKey(name: 'auto_activate_lesson')  int? autoActivateLesson, @JsonKey(name: 'middle_rating')  String? middleRating, @JsonKey(name: 'video_access_last_date')  String? videoAccessLastDate, @JsonKey(name: 'coworking_access_last_date')  String? coworkingAccessLastDate, @JsonKey(name: 'access_to_video')  bool? accessToVideo, @JsonKey(name: 'has_package')  bool? hasPackage)?  $default,) {final _that = this;
switch (_that) {
case _GroupUser() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.groupUserId,_that.user,_that.groupId,_that.status,_that.groupRole,_that.format,_that.leadId,_that.confirmedBy,_that.prices,_that.discounts,_that.autoActivateLesson,_that.middleRating,_that.videoAccessLastDate,_that.coworkingAccessLastDate,_that.accessToVideo,_that.hasPackage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupUser with DiagnosticableTreeMixin implements GroupUser {
  const _GroupUser({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'group_user_id') this.groupUserId, @JsonKey(name: 'user') this.user, @JsonKey(name: 'group_id') this.groupId, @JsonKey(name: 'status') this.status, @JsonKey(name: 'group_role') this.groupRole, @JsonKey(name: 'format') this.format, @JsonKey(name: 'lead_id') this.leadId, @JsonKey(name: 'confirmed_by') this.confirmedBy, @JsonKey(name: 'prices') final  List<Prices>? prices, @JsonKey(name: 'discounts') final  List<Discounts>? discounts, @JsonKey(name: 'auto_activate_lesson') this.autoActivateLesson, @JsonKey(name: 'middle_rating') this.middleRating, @JsonKey(name: 'video_access_last_date') this.videoAccessLastDate, @JsonKey(name: 'coworking_access_last_date') this.coworkingAccessLastDate, @JsonKey(name: 'access_to_video') this.accessToVideo, @JsonKey(name: 'has_package') this.hasPackage}): _prices = prices,_discounts = discounts;
  factory _GroupUser.fromJson(Map<String, dynamic> json) => _$GroupUserFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'group_user_id') final  int? groupUserId;
@override@JsonKey(name: 'user') final  StudentUser? user;
@override@JsonKey(name: 'group_id') final  int? groupId;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'group_role') final  String? groupRole;
@override@JsonKey(name: 'format') final  String? format;
@override@JsonKey(name: 'lead_id') final  int? leadId;
@override@JsonKey(name: 'confirmed_by') final  UserIdDefault? confirmedBy;
 final  List<Prices>? _prices;
@override@JsonKey(name: 'prices') List<Prices>? get prices {
  final value = _prices;
  if (value == null) return null;
  if (_prices is EqualUnmodifiableListView) return _prices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Discounts>? _discounts;
@override@JsonKey(name: 'discounts') List<Discounts>? get discounts {
  final value = _discounts;
  if (value == null) return null;
  if (_discounts is EqualUnmodifiableListView) return _discounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'auto_activate_lesson') final  int? autoActivateLesson;
@override@JsonKey(name: 'middle_rating') final  String? middleRating;
@override@JsonKey(name: 'video_access_last_date') final  String? videoAccessLastDate;
@override@JsonKey(name: 'coworking_access_last_date') final  String? coworkingAccessLastDate;
@override@JsonKey(name: 'access_to_video') final  bool? accessToVideo;
@override@JsonKey(name: 'has_package') final  bool? hasPackage;

/// Create a copy of GroupUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupUserCopyWith<_GroupUser> get copyWith => __$GroupUserCopyWithImpl<_GroupUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupUserToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupUser'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('groupUserId', groupUserId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('groupRole', groupRole))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('leadId', leadId))..add(DiagnosticsProperty('confirmedBy', confirmedBy))..add(DiagnosticsProperty('prices', prices))..add(DiagnosticsProperty('discounts', discounts))..add(DiagnosticsProperty('autoActivateLesson', autoActivateLesson))..add(DiagnosticsProperty('middleRating', middleRating))..add(DiagnosticsProperty('videoAccessLastDate', videoAccessLastDate))..add(DiagnosticsProperty('coworkingAccessLastDate', coworkingAccessLastDate))..add(DiagnosticsProperty('accessToVideo', accessToVideo))..add(DiagnosticsProperty('hasPackage', hasPackage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupUser&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.groupUserId, groupUserId) || other.groupUserId == groupUserId)&&(identical(other.user, user) || other.user == user)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.status, status) || other.status == status)&&(identical(other.groupRole, groupRole) || other.groupRole == groupRole)&&(identical(other.format, format) || other.format == format)&&(identical(other.leadId, leadId) || other.leadId == leadId)&&(identical(other.confirmedBy, confirmedBy) || other.confirmedBy == confirmedBy)&&const DeepCollectionEquality().equals(other._prices, _prices)&&const DeepCollectionEquality().equals(other._discounts, _discounts)&&(identical(other.autoActivateLesson, autoActivateLesson) || other.autoActivateLesson == autoActivateLesson)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating)&&(identical(other.videoAccessLastDate, videoAccessLastDate) || other.videoAccessLastDate == videoAccessLastDate)&&(identical(other.coworkingAccessLastDate, coworkingAccessLastDate) || other.coworkingAccessLastDate == coworkingAccessLastDate)&&(identical(other.accessToVideo, accessToVideo) || other.accessToVideo == accessToVideo)&&(identical(other.hasPackage, hasPackage) || other.hasPackage == hasPackage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdBy,updatedBy,groupUserId,user,groupId,status,groupRole,format,leadId,confirmedBy,const DeepCollectionEquality().hash(_prices),const DeepCollectionEquality().hash(_discounts),autoActivateLesson,middleRating,videoAccessLastDate,coworkingAccessLastDate,accessToVideo,hasPackage]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupUser(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, groupUserId: $groupUserId, user: $user, groupId: $groupId, status: $status, groupRole: $groupRole, format: $format, leadId: $leadId, confirmedBy: $confirmedBy, prices: $prices, discounts: $discounts, autoActivateLesson: $autoActivateLesson, middleRating: $middleRating, videoAccessLastDate: $videoAccessLastDate, coworkingAccessLastDate: $coworkingAccessLastDate, accessToVideo: $accessToVideo, hasPackage: $hasPackage)';
}


}

/// @nodoc
abstract mixin class _$GroupUserCopyWith<$Res> implements $GroupUserCopyWith<$Res> {
  factory _$GroupUserCopyWith(_GroupUser value, $Res Function(_GroupUser) _then) = __$GroupUserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'group_user_id') int? groupUserId,@JsonKey(name: 'user') StudentUser? user,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'status') String? status,@JsonKey(name: 'group_role') String? groupRole,@JsonKey(name: 'format') String? format,@JsonKey(name: 'lead_id') int? leadId,@JsonKey(name: 'confirmed_by') UserIdDefault? confirmedBy,@JsonKey(name: 'prices') List<Prices>? prices,@JsonKey(name: 'discounts') List<Discounts>? discounts,@JsonKey(name: 'auto_activate_lesson') int? autoActivateLesson,@JsonKey(name: 'middle_rating') String? middleRating,@JsonKey(name: 'video_access_last_date') String? videoAccessLastDate,@JsonKey(name: 'coworking_access_last_date') String? coworkingAccessLastDate,@JsonKey(name: 'access_to_video') bool? accessToVideo,@JsonKey(name: 'has_package') bool? hasPackage
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;@override $StudentUserCopyWith<$Res>? get user;@override $UserIdDefaultCopyWith<$Res>? get confirmedBy;

}
/// @nodoc
class __$GroupUserCopyWithImpl<$Res>
    implements _$GroupUserCopyWith<$Res> {
  __$GroupUserCopyWithImpl(this._self, this._then);

  final _GroupUser _self;
  final $Res Function(_GroupUser) _then;

/// Create a copy of GroupUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? groupUserId = freezed,Object? user = freezed,Object? groupId = freezed,Object? status = freezed,Object? groupRole = freezed,Object? format = freezed,Object? leadId = freezed,Object? confirmedBy = freezed,Object? prices = freezed,Object? discounts = freezed,Object? autoActivateLesson = freezed,Object? middleRating = freezed,Object? videoAccessLastDate = freezed,Object? coworkingAccessLastDate = freezed,Object? accessToVideo = freezed,Object? hasPackage = freezed,}) {
  return _then(_GroupUser(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,groupUserId: freezed == groupUserId ? _self.groupUserId : groupUserId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as StudentUser?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,groupRole: freezed == groupRole ? _self.groupRole : groupRole // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,leadId: freezed == leadId ? _self.leadId : leadId // ignore: cast_nullable_to_non_nullable
as int?,confirmedBy: freezed == confirmedBy ? _self.confirmedBy : confirmedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,prices: freezed == prices ? _self._prices : prices // ignore: cast_nullable_to_non_nullable
as List<Prices>?,discounts: freezed == discounts ? _self._discounts : discounts // ignore: cast_nullable_to_non_nullable
as List<Discounts>?,autoActivateLesson: freezed == autoActivateLesson ? _self.autoActivateLesson : autoActivateLesson // ignore: cast_nullable_to_non_nullable
as int?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,videoAccessLastDate: freezed == videoAccessLastDate ? _self.videoAccessLastDate : videoAccessLastDate // ignore: cast_nullable_to_non_nullable
as String?,coworkingAccessLastDate: freezed == coworkingAccessLastDate ? _self.coworkingAccessLastDate : coworkingAccessLastDate // ignore: cast_nullable_to_non_nullable
as String?,accessToVideo: freezed == accessToVideo ? _self.accessToVideo : accessToVideo // ignore: cast_nullable_to_non_nullable
as bool?,hasPackage: freezed == hasPackage ? _self.hasPackage : hasPackage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of GroupUser
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
}/// Create a copy of GroupUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}/// Create a copy of GroupUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $StudentUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of GroupUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get confirmedBy {
    if (_self.confirmedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.confirmedBy!, (value) {
    return _then(_self.copyWith(confirmedBy: value));
  });
}
}


/// @nodoc
mixin _$StudentUser implements DiagnosticableTreeMixin {

@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'user') User? get user;@JsonKey(name: 'balance_account') BalanceAccount? get balanceAccount;
/// Create a copy of StudentUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentUserCopyWith<StudentUser> get copyWith => _$StudentUserCopyWithImpl<StudentUser>(this as StudentUser, _$identity);

  /// Serializes this StudentUser to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentUser'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('balanceAccount', balanceAccount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentUser&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.balanceAccount, balanceAccount) || other.balanceAccount == balanceAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,user,balanceAccount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentUser(userId: $userId, user: $user, balanceAccount: $balanceAccount)';
}


}

/// @nodoc
abstract mixin class $StudentUserCopyWith<$Res>  {
  factory $StudentUserCopyWith(StudentUser value, $Res Function(StudentUser) _then) = _$StudentUserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'user') User? user,@JsonKey(name: 'balance_account') BalanceAccount? balanceAccount
});


$UserCopyWith<$Res>? get user;$BalanceAccountCopyWith<$Res>? get balanceAccount;

}
/// @nodoc
class _$StudentUserCopyWithImpl<$Res>
    implements $StudentUserCopyWith<$Res> {
  _$StudentUserCopyWithImpl(this._self, this._then);

  final StudentUser _self;
  final $Res Function(StudentUser) _then;

/// Create a copy of StudentUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? user = freezed,Object? balanceAccount = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,balanceAccount: freezed == balanceAccount ? _self.balanceAccount : balanceAccount // ignore: cast_nullable_to_non_nullable
as BalanceAccount?,
  ));
}
/// Create a copy of StudentUser
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
}/// Create a copy of StudentUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalanceAccountCopyWith<$Res>? get balanceAccount {
    if (_self.balanceAccount == null) {
    return null;
  }

  return $BalanceAccountCopyWith<$Res>(_self.balanceAccount!, (value) {
    return _then(_self.copyWith(balanceAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentUser].
extension StudentUserPatterns on StudentUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentUser value)  $default,){
final _that = this;
switch (_that) {
case _StudentUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentUser value)?  $default,){
final _that = this;
switch (_that) {
case _StudentUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user, @JsonKey(name: 'balance_account')  BalanceAccount? balanceAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentUser() when $default != null:
return $default(_that.userId,_that.user,_that.balanceAccount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user, @JsonKey(name: 'balance_account')  BalanceAccount? balanceAccount)  $default,) {final _that = this;
switch (_that) {
case _StudentUser():
return $default(_that.userId,_that.user,_that.balanceAccount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'user')  User? user, @JsonKey(name: 'balance_account')  BalanceAccount? balanceAccount)?  $default,) {final _that = this;
switch (_that) {
case _StudentUser() when $default != null:
return $default(_that.userId,_that.user,_that.balanceAccount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentUser with DiagnosticableTreeMixin implements StudentUser {
  const _StudentUser({@JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'user') this.user, @JsonKey(name: 'balance_account') this.balanceAccount});
  factory _StudentUser.fromJson(Map<String, dynamic> json) => _$StudentUserFromJson(json);

@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'user') final  User? user;
@override@JsonKey(name: 'balance_account') final  BalanceAccount? balanceAccount;

/// Create a copy of StudentUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentUserCopyWith<_StudentUser> get copyWith => __$StudentUserCopyWithImpl<_StudentUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentUserToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentUser'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('balanceAccount', balanceAccount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentUser&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.balanceAccount, balanceAccount) || other.balanceAccount == balanceAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,user,balanceAccount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentUser(userId: $userId, user: $user, balanceAccount: $balanceAccount)';
}


}

/// @nodoc
abstract mixin class _$StudentUserCopyWith<$Res> implements $StudentUserCopyWith<$Res> {
  factory _$StudentUserCopyWith(_StudentUser value, $Res Function(_StudentUser) _then) = __$StudentUserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'user') User? user,@JsonKey(name: 'balance_account') BalanceAccount? balanceAccount
});


@override $UserCopyWith<$Res>? get user;@override $BalanceAccountCopyWith<$Res>? get balanceAccount;

}
/// @nodoc
class __$StudentUserCopyWithImpl<$Res>
    implements _$StudentUserCopyWith<$Res> {
  __$StudentUserCopyWithImpl(this._self, this._then);

  final _StudentUser _self;
  final $Res Function(_StudentUser) _then;

/// Create a copy of StudentUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? user = freezed,Object? balanceAccount = freezed,}) {
  return _then(_StudentUser(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,balanceAccount: freezed == balanceAccount ? _self.balanceAccount : balanceAccount // ignore: cast_nullable_to_non_nullable
as BalanceAccount?,
  ));
}

/// Create a copy of StudentUser
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
}/// Create a copy of StudentUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalanceAccountCopyWith<$Res>? get balanceAccount {
    if (_self.balanceAccount == null) {
    return null;
  }

  return $BalanceAccountCopyWith<$Res>(_self.balanceAccount!, (value) {
    return _then(_self.copyWith(balanceAccount: value));
  });
}
}


/// @nodoc
mixin _$BalanceAccount implements DiagnosticableTreeMixin {

@JsonKey(name: 'main_balance') String? get mainBalance;@JsonKey(name: 'voucher_balance') String? get voucherBalance;
/// Create a copy of BalanceAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceAccountCopyWith<BalanceAccount> get copyWith => _$BalanceAccountCopyWithImpl<BalanceAccount>(this as BalanceAccount, _$identity);

  /// Serializes this BalanceAccount to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BalanceAccount'))
    ..add(DiagnosticsProperty('mainBalance', mainBalance))..add(DiagnosticsProperty('voucherBalance', voucherBalance));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceAccount&&(identical(other.mainBalance, mainBalance) || other.mainBalance == mainBalance)&&(identical(other.voucherBalance, voucherBalance) || other.voucherBalance == voucherBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainBalance,voucherBalance);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BalanceAccount(mainBalance: $mainBalance, voucherBalance: $voucherBalance)';
}


}

/// @nodoc
abstract mixin class $BalanceAccountCopyWith<$Res>  {
  factory $BalanceAccountCopyWith(BalanceAccount value, $Res Function(BalanceAccount) _then) = _$BalanceAccountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'main_balance') String? mainBalance,@JsonKey(name: 'voucher_balance') String? voucherBalance
});




}
/// @nodoc
class _$BalanceAccountCopyWithImpl<$Res>
    implements $BalanceAccountCopyWith<$Res> {
  _$BalanceAccountCopyWithImpl(this._self, this._then);

  final BalanceAccount _self;
  final $Res Function(BalanceAccount) _then;

/// Create a copy of BalanceAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mainBalance = freezed,Object? voucherBalance = freezed,}) {
  return _then(_self.copyWith(
mainBalance: freezed == mainBalance ? _self.mainBalance : mainBalance // ignore: cast_nullable_to_non_nullable
as String?,voucherBalance: freezed == voucherBalance ? _self.voucherBalance : voucherBalance // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BalanceAccount].
extension BalanceAccountPatterns on BalanceAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceAccount value)  $default,){
final _that = this;
switch (_that) {
case _BalanceAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceAccount value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'main_balance')  String? mainBalance, @JsonKey(name: 'voucher_balance')  String? voucherBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalanceAccount() when $default != null:
return $default(_that.mainBalance,_that.voucherBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'main_balance')  String? mainBalance, @JsonKey(name: 'voucher_balance')  String? voucherBalance)  $default,) {final _that = this;
switch (_that) {
case _BalanceAccount():
return $default(_that.mainBalance,_that.voucherBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'main_balance')  String? mainBalance, @JsonKey(name: 'voucher_balance')  String? voucherBalance)?  $default,) {final _that = this;
switch (_that) {
case _BalanceAccount() when $default != null:
return $default(_that.mainBalance,_that.voucherBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BalanceAccount with DiagnosticableTreeMixin implements BalanceAccount {
  const _BalanceAccount({@JsonKey(name: 'main_balance') this.mainBalance, @JsonKey(name: 'voucher_balance') this.voucherBalance});
  factory _BalanceAccount.fromJson(Map<String, dynamic> json) => _$BalanceAccountFromJson(json);

@override@JsonKey(name: 'main_balance') final  String? mainBalance;
@override@JsonKey(name: 'voucher_balance') final  String? voucherBalance;

/// Create a copy of BalanceAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceAccountCopyWith<_BalanceAccount> get copyWith => __$BalanceAccountCopyWithImpl<_BalanceAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalanceAccountToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BalanceAccount'))
    ..add(DiagnosticsProperty('mainBalance', mainBalance))..add(DiagnosticsProperty('voucherBalance', voucherBalance));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceAccount&&(identical(other.mainBalance, mainBalance) || other.mainBalance == mainBalance)&&(identical(other.voucherBalance, voucherBalance) || other.voucherBalance == voucherBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainBalance,voucherBalance);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BalanceAccount(mainBalance: $mainBalance, voucherBalance: $voucherBalance)';
}


}

/// @nodoc
abstract mixin class _$BalanceAccountCopyWith<$Res> implements $BalanceAccountCopyWith<$Res> {
  factory _$BalanceAccountCopyWith(_BalanceAccount value, $Res Function(_BalanceAccount) _then) = __$BalanceAccountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'main_balance') String? mainBalance,@JsonKey(name: 'voucher_balance') String? voucherBalance
});




}
/// @nodoc
class __$BalanceAccountCopyWithImpl<$Res>
    implements _$BalanceAccountCopyWith<$Res> {
  __$BalanceAccountCopyWithImpl(this._self, this._then);

  final _BalanceAccount _self;
  final $Res Function(_BalanceAccount) _then;

/// Create a copy of BalanceAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mainBalance = freezed,Object? voucherBalance = freezed,}) {
  return _then(_BalanceAccount(
mainBalance: freezed == mainBalance ? _self.mainBalance : mainBalance // ignore: cast_nullable_to_non_nullable
as String?,voucherBalance: freezed == voucherBalance ? _self.voucherBalance : voucherBalance // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Prices implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'format') String? get format;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'block_cost') String? get blockCost;
/// Create a copy of Prices
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricesCopyWith<Prices> get copyWith => _$PricesCopyWithImpl<Prices>(this as Prices, _$identity);

  /// Serializes this Prices to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Prices'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('blockCost', blockCost));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Prices&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.type, type) || other.type == type)&&(identical(other.blockCost, blockCost) || other.blockCost == blockCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,format,type,blockCost);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Prices(id: $id, format: $format, type: $type, blockCost: $blockCost)';
}


}

/// @nodoc
abstract mixin class $PricesCopyWith<$Res>  {
  factory $PricesCopyWith(Prices value, $Res Function(Prices) _then) = _$PricesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'format') String? format,@JsonKey(name: 'type') String? type,@JsonKey(name: 'block_cost') String? blockCost
});




}
/// @nodoc
class _$PricesCopyWithImpl<$Res>
    implements $PricesCopyWith<$Res> {
  _$PricesCopyWithImpl(this._self, this._then);

  final Prices _self;
  final $Res Function(Prices) _then;

/// Create a copy of Prices
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? format = freezed,Object? type = freezed,Object? blockCost = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,blockCost: freezed == blockCost ? _self.blockCost : blockCost // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Prices].
extension PricesPatterns on Prices {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Prices value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Prices() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Prices value)  $default,){
final _that = this;
switch (_that) {
case _Prices():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Prices value)?  $default,){
final _that = this;
switch (_that) {
case _Prices() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'block_cost')  String? blockCost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Prices() when $default != null:
return $default(_that.id,_that.format,_that.type,_that.blockCost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'block_cost')  String? blockCost)  $default,) {final _that = this;
switch (_that) {
case _Prices():
return $default(_that.id,_that.format,_that.type,_that.blockCost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'format')  String? format, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'block_cost')  String? blockCost)?  $default,) {final _that = this;
switch (_that) {
case _Prices() when $default != null:
return $default(_that.id,_that.format,_that.type,_that.blockCost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Prices with DiagnosticableTreeMixin implements Prices {
  const _Prices({@JsonKey(name: 'id') this.id, @JsonKey(name: 'format') this.format, @JsonKey(name: 'type') this.type, @JsonKey(name: 'block_cost') this.blockCost});
  factory _Prices.fromJson(Map<String, dynamic> json) => _$PricesFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'format') final  String? format;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'block_cost') final  String? blockCost;

/// Create a copy of Prices
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricesCopyWith<_Prices> get copyWith => __$PricesCopyWithImpl<_Prices>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Prices'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('format', format))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('blockCost', blockCost));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Prices&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.type, type) || other.type == type)&&(identical(other.blockCost, blockCost) || other.blockCost == blockCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,format,type,blockCost);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Prices(id: $id, format: $format, type: $type, blockCost: $blockCost)';
}


}

/// @nodoc
abstract mixin class _$PricesCopyWith<$Res> implements $PricesCopyWith<$Res> {
  factory _$PricesCopyWith(_Prices value, $Res Function(_Prices) _then) = __$PricesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'format') String? format,@JsonKey(name: 'type') String? type,@JsonKey(name: 'block_cost') String? blockCost
});




}
/// @nodoc
class __$PricesCopyWithImpl<$Res>
    implements _$PricesCopyWith<$Res> {
  __$PricesCopyWithImpl(this._self, this._then);

  final _Prices _self;
  final $Res Function(_Prices) _then;

/// Create a copy of Prices
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? format = freezed,Object? type = freezed,Object? blockCost = freezed,}) {
  return _then(_Prices(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,blockCost: freezed == blockCost ? _self.blockCost : blockCost // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Discounts implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'uuid') String? get uuid;@JsonKey(name: 'valid_from') int? get validFrom;@JsonKey(name: 'valid_until') int? get validUntil;@JsonKey(name: 'discount_percent') String? get discountPercent;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'amount') String? get amount;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'is_group') bool? get isGroup;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'format') String? get format;
/// Create a copy of Discounts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscountsCopyWith<Discounts> get copyWith => _$DiscountsCopyWithImpl<Discounts>(this as Discounts, _$identity);

  /// Serializes this Discounts to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Discounts'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('uuid', uuid))..add(DiagnosticsProperty('validFrom', validFrom))..add(DiagnosticsProperty('validUntil', validUntil))..add(DiagnosticsProperty('discountPercent', discountPercent))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('isGroup', isGroup))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('format', format));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Discounts&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validUntil, validUntil) || other.validUntil == validUntil)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.status, status) || other.status == status)&&(identical(other.format, format) || other.format == format));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,uuid,validFrom,validUntil,discountPercent,type,amount,description,isGroup,status,format);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Discounts(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, uuid: $uuid, validFrom: $validFrom, validUntil: $validUntil, discountPercent: $discountPercent, type: $type, amount: $amount, description: $description, isGroup: $isGroup, status: $status, format: $format)';
}


}

/// @nodoc
abstract mixin class $DiscountsCopyWith<$Res>  {
  factory $DiscountsCopyWith(Discounts value, $Res Function(Discounts) _then) = _$DiscountsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'uuid') String? uuid,@JsonKey(name: 'valid_from') int? validFrom,@JsonKey(name: 'valid_until') int? validUntil,@JsonKey(name: 'discount_percent') String? discountPercent,@JsonKey(name: 'type') String? type,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'description') String? description,@JsonKey(name: 'is_group') bool? isGroup,@JsonKey(name: 'status') String? status,@JsonKey(name: 'format') String? format
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class _$DiscountsCopyWithImpl<$Res>
    implements $DiscountsCopyWith<$Res> {
  _$DiscountsCopyWithImpl(this._self, this._then);

  final Discounts _self;
  final $Res Function(Discounts) _then;

/// Create a copy of Discounts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? uuid = freezed,Object? validFrom = freezed,Object? validUntil = freezed,Object? discountPercent = freezed,Object? type = freezed,Object? amount = freezed,Object? description = freezed,Object? isGroup = freezed,Object? status = freezed,Object? format = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as int?,validUntil: freezed == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as int?,discountPercent: freezed == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isGroup: freezed == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Discounts
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
}/// Create a copy of Discounts
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [Discounts].
extension DiscountsPatterns on Discounts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Discounts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Discounts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Discounts value)  $default,){
final _that = this;
switch (_that) {
case _Discounts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Discounts value)?  $default,){
final _that = this;
switch (_that) {
case _Discounts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'valid_from')  int? validFrom, @JsonKey(name: 'valid_until')  int? validUntil, @JsonKey(name: 'discount_percent')  String? discountPercent, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'is_group')  bool? isGroup, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'format')  String? format)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Discounts() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.uuid,_that.validFrom,_that.validUntil,_that.discountPercent,_that.type,_that.amount,_that.description,_that.isGroup,_that.status,_that.format);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'valid_from')  int? validFrom, @JsonKey(name: 'valid_until')  int? validUntil, @JsonKey(name: 'discount_percent')  String? discountPercent, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'is_group')  bool? isGroup, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'format')  String? format)  $default,) {final _that = this;
switch (_that) {
case _Discounts():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.uuid,_that.validFrom,_that.validUntil,_that.discountPercent,_that.type,_that.amount,_that.description,_that.isGroup,_that.status,_that.format);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'uuid')  String? uuid, @JsonKey(name: 'valid_from')  int? validFrom, @JsonKey(name: 'valid_until')  int? validUntil, @JsonKey(name: 'discount_percent')  String? discountPercent, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'is_group')  bool? isGroup, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'format')  String? format)?  $default,) {final _that = this;
switch (_that) {
case _Discounts() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.uuid,_that.validFrom,_that.validUntil,_that.discountPercent,_that.type,_that.amount,_that.description,_that.isGroup,_that.status,_that.format);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Discounts with DiagnosticableTreeMixin implements Discounts {
  const _Discounts({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'uuid') this.uuid, @JsonKey(name: 'valid_from') this.validFrom, @JsonKey(name: 'valid_until') this.validUntil, @JsonKey(name: 'discount_percent') this.discountPercent, @JsonKey(name: 'type') this.type, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'description') this.description, @JsonKey(name: 'is_group') this.isGroup, @JsonKey(name: 'status') this.status, @JsonKey(name: 'format') this.format});
  factory _Discounts.fromJson(Map<String, dynamic> json) => _$DiscountsFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'uuid') final  String? uuid;
@override@JsonKey(name: 'valid_from') final  int? validFrom;
@override@JsonKey(name: 'valid_until') final  int? validUntil;
@override@JsonKey(name: 'discount_percent') final  String? discountPercent;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'amount') final  String? amount;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'is_group') final  bool? isGroup;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'format') final  String? format;

/// Create a copy of Discounts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscountsCopyWith<_Discounts> get copyWith => __$DiscountsCopyWithImpl<_Discounts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscountsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Discounts'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('uuid', uuid))..add(DiagnosticsProperty('validFrom', validFrom))..add(DiagnosticsProperty('validUntil', validUntil))..add(DiagnosticsProperty('discountPercent', discountPercent))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('isGroup', isGroup))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('format', format));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Discounts&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validUntil, validUntil) || other.validUntil == validUntil)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.status, status) || other.status == status)&&(identical(other.format, format) || other.format == format));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,uuid,validFrom,validUntil,discountPercent,type,amount,description,isGroup,status,format);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Discounts(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, uuid: $uuid, validFrom: $validFrom, validUntil: $validUntil, discountPercent: $discountPercent, type: $type, amount: $amount, description: $description, isGroup: $isGroup, status: $status, format: $format)';
}


}

/// @nodoc
abstract mixin class _$DiscountsCopyWith<$Res> implements $DiscountsCopyWith<$Res> {
  factory _$DiscountsCopyWith(_Discounts value, $Res Function(_Discounts) _then) = __$DiscountsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'uuid') String? uuid,@JsonKey(name: 'valid_from') int? validFrom,@JsonKey(name: 'valid_until') int? validUntil,@JsonKey(name: 'discount_percent') String? discountPercent,@JsonKey(name: 'type') String? type,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'description') String? description,@JsonKey(name: 'is_group') bool? isGroup,@JsonKey(name: 'status') String? status,@JsonKey(name: 'format') String? format
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class __$DiscountsCopyWithImpl<$Res>
    implements _$DiscountsCopyWith<$Res> {
  __$DiscountsCopyWithImpl(this._self, this._then);

  final _Discounts _self;
  final $Res Function(_Discounts) _then;

/// Create a copy of Discounts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? uuid = freezed,Object? validFrom = freezed,Object? validUntil = freezed,Object? discountPercent = freezed,Object? type = freezed,Object? amount = freezed,Object? description = freezed,Object? isGroup = freezed,Object? status = freezed,Object? format = freezed,}) {
  return _then(_Discounts(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as int?,validUntil: freezed == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as int?,discountPercent: freezed == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isGroup: freezed == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Discounts
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
}/// Create a copy of Discounts
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}
}

// dart format on
