// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TelegramUser implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'username') String? get username;@JsonKey(name: 'phone') String? get phone;@JsonKey(name: 'language') String? get language;@JsonKey(name: 'status') String? get status;
/// Create a copy of TelegramUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelegramUserCopyWith<TelegramUser> get copyWith => _$TelegramUserCopyWithImpl<TelegramUser>(this as TelegramUser, _$identity);

  /// Serializes this TelegramUser to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TelegramUser'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelegramUser&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.language, language) || other.language == language)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,id,username,phone,language,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TelegramUser(createdAt: $createdAt, updatedAt: $updatedAt, id: $id, username: $username, phone: $phone, language: $language, status: $status)';
}


}

/// @nodoc
abstract mixin class $TelegramUserCopyWith<$Res>  {
  factory $TelegramUserCopyWith(TelegramUser value, $Res Function(TelegramUser) _then) = _$TelegramUserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'id') int? id,@JsonKey(name: 'username') String? username,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'language') String? language,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class _$TelegramUserCopyWithImpl<$Res>
    implements $TelegramUserCopyWith<$Res> {
  _$TelegramUserCopyWithImpl(this._self, this._then);

  final TelegramUser _self;
  final $Res Function(TelegramUser) _then;

/// Create a copy of TelegramUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? id = freezed,Object? username = freezed,Object? phone = freezed,Object? language = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TelegramUser].
extension TelegramUserPatterns on TelegramUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelegramUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelegramUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelegramUser value)  $default,){
final _that = this;
switch (_that) {
case _TelegramUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelegramUser value)?  $default,){
final _that = this;
switch (_that) {
case _TelegramUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'status')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelegramUser() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.username,_that.phone,_that.language,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'status')  String? status)  $default,) {final _that = this;
switch (_that) {
case _TelegramUser():
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.username,_that.phone,_that.language,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'language')  String? language, @JsonKey(name: 'status')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _TelegramUser() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.username,_that.phone,_that.language,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelegramUser with DiagnosticableTreeMixin implements TelegramUser {
  const _TelegramUser({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'id') this.id, @JsonKey(name: 'username') this.username, @JsonKey(name: 'phone') this.phone, @JsonKey(name: 'language') this.language, @JsonKey(name: 'status') this.status});
  factory _TelegramUser.fromJson(Map<String, dynamic> json) => _$TelegramUserFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'phone') final  String? phone;
@override@JsonKey(name: 'language') final  String? language;
@override@JsonKey(name: 'status') final  String? status;

/// Create a copy of TelegramUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelegramUserCopyWith<_TelegramUser> get copyWith => __$TelegramUserCopyWithImpl<_TelegramUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelegramUserToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TelegramUser'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelegramUser&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.language, language) || other.language == language)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,id,username,phone,language,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TelegramUser(createdAt: $createdAt, updatedAt: $updatedAt, id: $id, username: $username, phone: $phone, language: $language, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TelegramUserCopyWith<$Res> implements $TelegramUserCopyWith<$Res> {
  factory _$TelegramUserCopyWith(_TelegramUser value, $Res Function(_TelegramUser) _then) = __$TelegramUserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'id') int? id,@JsonKey(name: 'username') String? username,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'language') String? language,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class __$TelegramUserCopyWithImpl<$Res>
    implements _$TelegramUserCopyWith<$Res> {
  __$TelegramUserCopyWithImpl(this._self, this._then);

  final _TelegramUser _self;
  final $Res Function(_TelegramUser) _then;

/// Create a copy of TelegramUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? id = freezed,Object? username = freezed,Object? phone = freezed,Object? language = freezed,Object? status = freezed,}) {
  return _then(_TelegramUser(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
