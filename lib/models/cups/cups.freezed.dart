// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cups implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') CupName? get name;@JsonKey(name: 'description') CupName? get description;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'coins') int? get coins;@JsonKey(name: 'is_active') bool? get isActive;@JsonKey(name: 'reward_available_for_achievement') bool? get rewardAvailableForAchievement;@JsonKey(name: 'users') List<CupsUsers>? get users;
/// Create a copy of Cups
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CupsCopyWith<Cups> get copyWith => _$CupsCopyWithImpl<Cups>(this as Cups, _$identity);

  /// Serializes this Cups to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Cups'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('coins', coins))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('rewardAvailableForAchievement', rewardAvailableForAchievement))..add(DiagnosticsProperty('users', users));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cups&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.coins, coins) || other.coins == coins)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.rewardAvailableForAchievement, rewardAvailableForAchievement) || other.rewardAvailableForAchievement == rewardAvailableForAchievement)&&const DeepCollectionEquality().equals(other.users, users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,icon,coins,isActive,rewardAvailableForAchievement,const DeepCollectionEquality().hash(users));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Cups(id: $id, name: $name, description: $description, icon: $icon, coins: $coins, isActive: $isActive, rewardAvailableForAchievement: $rewardAvailableForAchievement, users: $users)';
}


}

/// @nodoc
abstract mixin class $CupsCopyWith<$Res>  {
  factory $CupsCopyWith(Cups value, $Res Function(Cups) _then) = _$CupsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') CupName? name,@JsonKey(name: 'description') CupName? description,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'coins') int? coins,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'reward_available_for_achievement') bool? rewardAvailableForAchievement,@JsonKey(name: 'users') List<CupsUsers>? users
});


$CupNameCopyWith<$Res>? get name;$CupNameCopyWith<$Res>? get description;

}
/// @nodoc
class _$CupsCopyWithImpl<$Res>
    implements $CupsCopyWith<$Res> {
  _$CupsCopyWithImpl(this._self, this._then);

  final Cups _self;
  final $Res Function(Cups) _then;

/// Create a copy of Cups
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? icon = freezed,Object? coins = freezed,Object? isActive = freezed,Object? rewardAvailableForAchievement = freezed,Object? users = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as CupName?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as CupName?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,coins: freezed == coins ? _self.coins : coins // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,rewardAvailableForAchievement: freezed == rewardAvailableForAchievement ? _self.rewardAvailableForAchievement : rewardAvailableForAchievement // ignore: cast_nullable_to_non_nullable
as bool?,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<CupsUsers>?,
  ));
}
/// Create a copy of Cups
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CupNameCopyWith<$Res>? get name {
    if (_self.name == null) {
    return null;
  }

  return $CupNameCopyWith<$Res>(_self.name!, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of Cups
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CupNameCopyWith<$Res>? get description {
    if (_self.description == null) {
    return null;
  }

  return $CupNameCopyWith<$Res>(_self.description!, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// Adds pattern-matching-related methods to [Cups].
extension CupsPatterns on Cups {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cups value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cups() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cups value)  $default,){
final _that = this;
switch (_that) {
case _Cups():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cups value)?  $default,){
final _that = this;
switch (_that) {
case _Cups() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  CupName? name, @JsonKey(name: 'description')  CupName? description, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'coins')  int? coins, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'reward_available_for_achievement')  bool? rewardAvailableForAchievement, @JsonKey(name: 'users')  List<CupsUsers>? users)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cups() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.icon,_that.coins,_that.isActive,_that.rewardAvailableForAchievement,_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  CupName? name, @JsonKey(name: 'description')  CupName? description, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'coins')  int? coins, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'reward_available_for_achievement')  bool? rewardAvailableForAchievement, @JsonKey(name: 'users')  List<CupsUsers>? users)  $default,) {final _that = this;
switch (_that) {
case _Cups():
return $default(_that.id,_that.name,_that.description,_that.icon,_that.coins,_that.isActive,_that.rewardAvailableForAchievement,_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  CupName? name, @JsonKey(name: 'description')  CupName? description, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'coins')  int? coins, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'reward_available_for_achievement')  bool? rewardAvailableForAchievement, @JsonKey(name: 'users')  List<CupsUsers>? users)?  $default,) {final _that = this;
switch (_that) {
case _Cups() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.icon,_that.coins,_that.isActive,_that.rewardAvailableForAchievement,_that.users);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cups with DiagnosticableTreeMixin implements Cups {
  const _Cups({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'coins') this.coins, @JsonKey(name: 'is_active') this.isActive, @JsonKey(name: 'reward_available_for_achievement') this.rewardAvailableForAchievement, @JsonKey(name: 'users') final  List<CupsUsers>? users}): _users = users;
  factory _Cups.fromJson(Map<String, dynamic> json) => _$CupsFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  CupName? name;
@override@JsonKey(name: 'description') final  CupName? description;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'coins') final  int? coins;
@override@JsonKey(name: 'is_active') final  bool? isActive;
@override@JsonKey(name: 'reward_available_for_achievement') final  bool? rewardAvailableForAchievement;
 final  List<CupsUsers>? _users;
@override@JsonKey(name: 'users') List<CupsUsers>? get users {
  final value = _users;
  if (value == null) return null;
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Cups
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CupsCopyWith<_Cups> get copyWith => __$CupsCopyWithImpl<_Cups>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CupsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Cups'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('coins', coins))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('rewardAvailableForAchievement', rewardAvailableForAchievement))..add(DiagnosticsProperty('users', users));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cups&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.coins, coins) || other.coins == coins)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.rewardAvailableForAchievement, rewardAvailableForAchievement) || other.rewardAvailableForAchievement == rewardAvailableForAchievement)&&const DeepCollectionEquality().equals(other._users, _users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,icon,coins,isActive,rewardAvailableForAchievement,const DeepCollectionEquality().hash(_users));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Cups(id: $id, name: $name, description: $description, icon: $icon, coins: $coins, isActive: $isActive, rewardAvailableForAchievement: $rewardAvailableForAchievement, users: $users)';
}


}

/// @nodoc
abstract mixin class _$CupsCopyWith<$Res> implements $CupsCopyWith<$Res> {
  factory _$CupsCopyWith(_Cups value, $Res Function(_Cups) _then) = __$CupsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') CupName? name,@JsonKey(name: 'description') CupName? description,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'coins') int? coins,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'reward_available_for_achievement') bool? rewardAvailableForAchievement,@JsonKey(name: 'users') List<CupsUsers>? users
});


@override $CupNameCopyWith<$Res>? get name;@override $CupNameCopyWith<$Res>? get description;

}
/// @nodoc
class __$CupsCopyWithImpl<$Res>
    implements _$CupsCopyWith<$Res> {
  __$CupsCopyWithImpl(this._self, this._then);

  final _Cups _self;
  final $Res Function(_Cups) _then;

/// Create a copy of Cups
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? icon = freezed,Object? coins = freezed,Object? isActive = freezed,Object? rewardAvailableForAchievement = freezed,Object? users = freezed,}) {
  return _then(_Cups(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as CupName?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as CupName?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,coins: freezed == coins ? _self.coins : coins // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,rewardAvailableForAchievement: freezed == rewardAvailableForAchievement ? _self.rewardAvailableForAchievement : rewardAvailableForAchievement // ignore: cast_nullable_to_non_nullable
as bool?,users: freezed == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<CupsUsers>?,
  ));
}

/// Create a copy of Cups
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CupNameCopyWith<$Res>? get name {
    if (_self.name == null) {
    return null;
  }

  return $CupNameCopyWith<$Res>(_self.name!, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of Cups
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CupNameCopyWith<$Res>? get description {
    if (_self.description == null) {
    return null;
  }

  return $CupNameCopyWith<$Res>(_self.description!, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// @nodoc
mixin _$CupName implements DiagnosticableTreeMixin {

@JsonKey(name: 'ru') String? get ru;@JsonKey(name: 'uz') String? get uz;
/// Create a copy of CupName
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CupNameCopyWith<CupName> get copyWith => _$CupNameCopyWithImpl<CupName>(this as CupName, _$identity);

  /// Serializes this CupName to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CupName'))
    ..add(DiagnosticsProperty('ru', ru))..add(DiagnosticsProperty('uz', uz));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CupName&&(identical(other.ru, ru) || other.ru == ru)&&(identical(other.uz, uz) || other.uz == uz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ru,uz);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CupName(ru: $ru, uz: $uz)';
}


}

/// @nodoc
abstract mixin class $CupNameCopyWith<$Res>  {
  factory $CupNameCopyWith(CupName value, $Res Function(CupName) _then) = _$CupNameCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ru') String? ru,@JsonKey(name: 'uz') String? uz
});




}
/// @nodoc
class _$CupNameCopyWithImpl<$Res>
    implements $CupNameCopyWith<$Res> {
  _$CupNameCopyWithImpl(this._self, this._then);

  final CupName _self;
  final $Res Function(CupName) _then;

/// Create a copy of CupName
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ru = freezed,Object? uz = freezed,}) {
  return _then(_self.copyWith(
ru: freezed == ru ? _self.ru : ru // ignore: cast_nullable_to_non_nullable
as String?,uz: freezed == uz ? _self.uz : uz // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CupName].
extension CupNamePatterns on CupName {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CupName value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CupName() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CupName value)  $default,){
final _that = this;
switch (_that) {
case _CupName():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CupName value)?  $default,){
final _that = this;
switch (_that) {
case _CupName() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ru')  String? ru, @JsonKey(name: 'uz')  String? uz)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CupName() when $default != null:
return $default(_that.ru,_that.uz);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ru')  String? ru, @JsonKey(name: 'uz')  String? uz)  $default,) {final _that = this;
switch (_that) {
case _CupName():
return $default(_that.ru,_that.uz);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ru')  String? ru, @JsonKey(name: 'uz')  String? uz)?  $default,) {final _that = this;
switch (_that) {
case _CupName() when $default != null:
return $default(_that.ru,_that.uz);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CupName with DiagnosticableTreeMixin implements CupName {
  const _CupName({@JsonKey(name: 'ru') this.ru, @JsonKey(name: 'uz') this.uz});
  factory _CupName.fromJson(Map<String, dynamic> json) => _$CupNameFromJson(json);

@override@JsonKey(name: 'ru') final  String? ru;
@override@JsonKey(name: 'uz') final  String? uz;

/// Create a copy of CupName
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CupNameCopyWith<_CupName> get copyWith => __$CupNameCopyWithImpl<_CupName>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CupNameToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CupName'))
    ..add(DiagnosticsProperty('ru', ru))..add(DiagnosticsProperty('uz', uz));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CupName&&(identical(other.ru, ru) || other.ru == ru)&&(identical(other.uz, uz) || other.uz == uz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ru,uz);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CupName(ru: $ru, uz: $uz)';
}


}

/// @nodoc
abstract mixin class _$CupNameCopyWith<$Res> implements $CupNameCopyWith<$Res> {
  factory _$CupNameCopyWith(_CupName value, $Res Function(_CupName) _then) = __$CupNameCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ru') String? ru,@JsonKey(name: 'uz') String? uz
});




}
/// @nodoc
class __$CupNameCopyWithImpl<$Res>
    implements _$CupNameCopyWith<$Res> {
  __$CupNameCopyWithImpl(this._self, this._then);

  final _CupName _self;
  final $Res Function(_CupName) _then;

/// Create a copy of CupName
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ru = freezed,Object? uz = freezed,}) {
  return _then(_CupName(
ru: freezed == ru ? _self.ru : ru // ignore: cast_nullable_to_non_nullable
as String?,uz: freezed == uz ? _self.uz : uz // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CupsUsers implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'is_achieved') bool? get isAchieved;@JsonKey(name: 'achieved_at') String? get achievedAt;@JsonKey(name: 'is_reward_received') bool? get isRewardReceived;@JsonKey(name: 'reward_received_at') String? get rewardReceivedAt;
/// Create a copy of CupsUsers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CupsUsersCopyWith<CupsUsers> get copyWith => _$CupsUsersCopyWithImpl<CupsUsers>(this as CupsUsers, _$identity);

  /// Serializes this CupsUsers to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CupsUsers'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('isAchieved', isAchieved))..add(DiagnosticsProperty('achievedAt', achievedAt))..add(DiagnosticsProperty('isRewardReceived', isRewardReceived))..add(DiagnosticsProperty('rewardReceivedAt', rewardReceivedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CupsUsers&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isAchieved, isAchieved) || other.isAchieved == isAchieved)&&(identical(other.achievedAt, achievedAt) || other.achievedAt == achievedAt)&&(identical(other.isRewardReceived, isRewardReceived) || other.isRewardReceived == isRewardReceived)&&(identical(other.rewardReceivedAt, rewardReceivedAt) || other.rewardReceivedAt == rewardReceivedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,isAchieved,achievedAt,isRewardReceived,rewardReceivedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CupsUsers(id: $id, userId: $userId, isAchieved: $isAchieved, achievedAt: $achievedAt, isRewardReceived: $isRewardReceived, rewardReceivedAt: $rewardReceivedAt)';
}


}

/// @nodoc
abstract mixin class $CupsUsersCopyWith<$Res>  {
  factory $CupsUsersCopyWith(CupsUsers value, $Res Function(CupsUsers) _then) = _$CupsUsersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'is_achieved') bool? isAchieved,@JsonKey(name: 'achieved_at') String? achievedAt,@JsonKey(name: 'is_reward_received') bool? isRewardReceived,@JsonKey(name: 'reward_received_at') String? rewardReceivedAt
});




}
/// @nodoc
class _$CupsUsersCopyWithImpl<$Res>
    implements $CupsUsersCopyWith<$Res> {
  _$CupsUsersCopyWithImpl(this._self, this._then);

  final CupsUsers _self;
  final $Res Function(CupsUsers) _then;

/// Create a copy of CupsUsers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? isAchieved = freezed,Object? achievedAt = freezed,Object? isRewardReceived = freezed,Object? rewardReceivedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,isAchieved: freezed == isAchieved ? _self.isAchieved : isAchieved // ignore: cast_nullable_to_non_nullable
as bool?,achievedAt: freezed == achievedAt ? _self.achievedAt : achievedAt // ignore: cast_nullable_to_non_nullable
as String?,isRewardReceived: freezed == isRewardReceived ? _self.isRewardReceived : isRewardReceived // ignore: cast_nullable_to_non_nullable
as bool?,rewardReceivedAt: freezed == rewardReceivedAt ? _self.rewardReceivedAt : rewardReceivedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CupsUsers].
extension CupsUsersPatterns on CupsUsers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CupsUsers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CupsUsers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CupsUsers value)  $default,){
final _that = this;
switch (_that) {
case _CupsUsers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CupsUsers value)?  $default,){
final _that = this;
switch (_that) {
case _CupsUsers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'is_achieved')  bool? isAchieved, @JsonKey(name: 'achieved_at')  String? achievedAt, @JsonKey(name: 'is_reward_received')  bool? isRewardReceived, @JsonKey(name: 'reward_received_at')  String? rewardReceivedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CupsUsers() when $default != null:
return $default(_that.id,_that.userId,_that.isAchieved,_that.achievedAt,_that.isRewardReceived,_that.rewardReceivedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'is_achieved')  bool? isAchieved, @JsonKey(name: 'achieved_at')  String? achievedAt, @JsonKey(name: 'is_reward_received')  bool? isRewardReceived, @JsonKey(name: 'reward_received_at')  String? rewardReceivedAt)  $default,) {final _that = this;
switch (_that) {
case _CupsUsers():
return $default(_that.id,_that.userId,_that.isAchieved,_that.achievedAt,_that.isRewardReceived,_that.rewardReceivedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'is_achieved')  bool? isAchieved, @JsonKey(name: 'achieved_at')  String? achievedAt, @JsonKey(name: 'is_reward_received')  bool? isRewardReceived, @JsonKey(name: 'reward_received_at')  String? rewardReceivedAt)?  $default,) {final _that = this;
switch (_that) {
case _CupsUsers() when $default != null:
return $default(_that.id,_that.userId,_that.isAchieved,_that.achievedAt,_that.isRewardReceived,_that.rewardReceivedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CupsUsers with DiagnosticableTreeMixin implements CupsUsers {
  const _CupsUsers({@JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'is_achieved') this.isAchieved, @JsonKey(name: 'achieved_at') this.achievedAt, @JsonKey(name: 'is_reward_received') this.isRewardReceived, @JsonKey(name: 'reward_received_at') this.rewardReceivedAt});
  factory _CupsUsers.fromJson(Map<String, dynamic> json) => _$CupsUsersFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'is_achieved') final  bool? isAchieved;
@override@JsonKey(name: 'achieved_at') final  String? achievedAt;
@override@JsonKey(name: 'is_reward_received') final  bool? isRewardReceived;
@override@JsonKey(name: 'reward_received_at') final  String? rewardReceivedAt;

/// Create a copy of CupsUsers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CupsUsersCopyWith<_CupsUsers> get copyWith => __$CupsUsersCopyWithImpl<_CupsUsers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CupsUsersToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CupsUsers'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('isAchieved', isAchieved))..add(DiagnosticsProperty('achievedAt', achievedAt))..add(DiagnosticsProperty('isRewardReceived', isRewardReceived))..add(DiagnosticsProperty('rewardReceivedAt', rewardReceivedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CupsUsers&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isAchieved, isAchieved) || other.isAchieved == isAchieved)&&(identical(other.achievedAt, achievedAt) || other.achievedAt == achievedAt)&&(identical(other.isRewardReceived, isRewardReceived) || other.isRewardReceived == isRewardReceived)&&(identical(other.rewardReceivedAt, rewardReceivedAt) || other.rewardReceivedAt == rewardReceivedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,isAchieved,achievedAt,isRewardReceived,rewardReceivedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CupsUsers(id: $id, userId: $userId, isAchieved: $isAchieved, achievedAt: $achievedAt, isRewardReceived: $isRewardReceived, rewardReceivedAt: $rewardReceivedAt)';
}


}

/// @nodoc
abstract mixin class _$CupsUsersCopyWith<$Res> implements $CupsUsersCopyWith<$Res> {
  factory _$CupsUsersCopyWith(_CupsUsers value, $Res Function(_CupsUsers) _then) = __$CupsUsersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'is_achieved') bool? isAchieved,@JsonKey(name: 'achieved_at') String? achievedAt,@JsonKey(name: 'is_reward_received') bool? isRewardReceived,@JsonKey(name: 'reward_received_at') String? rewardReceivedAt
});




}
/// @nodoc
class __$CupsUsersCopyWithImpl<$Res>
    implements _$CupsUsersCopyWith<$Res> {
  __$CupsUsersCopyWithImpl(this._self, this._then);

  final _CupsUsers _self;
  final $Res Function(_CupsUsers) _then;

/// Create a copy of CupsUsers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? isAchieved = freezed,Object? achievedAt = freezed,Object? isRewardReceived = freezed,Object? rewardReceivedAt = freezed,}) {
  return _then(_CupsUsers(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,isAchieved: freezed == isAchieved ? _self.isAchieved : isAchieved // ignore: cast_nullable_to_non_nullable
as bool?,achievedAt: freezed == achievedAt ? _self.achievedAt : achievedAt // ignore: cast_nullable_to_non_nullable
as String?,isRewardReceived: freezed == isRewardReceived ? _self.isRewardReceived : isRewardReceived // ignore: cast_nullable_to_non_nullable
as bool?,rewardReceivedAt: freezed == rewardReceivedAt ? _self.rewardReceivedAt : rewardReceivedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
