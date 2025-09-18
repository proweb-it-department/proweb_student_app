// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branche.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Branche implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'country') String? get country;@JsonKey(name: 'city') String? get city;@JsonKey(name: 'street') String? get street;@JsonKey(name: 'latitude') String? get latitude;@JsonKey(name: 'longitude') String? get longitude;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'cabinet_count') int? get cabinetCount;@JsonKey(name: 'cw_count') int? get cwCount;
/// Create a copy of Branche
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrancheCopyWith<Branche> get copyWith => _$BrancheCopyWithImpl<Branche>(this as Branche, _$identity);

  /// Serializes this Branche to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Branche'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('street', street))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('cabinetCount', cabinetCount))..add(DiagnosticsProperty('cwCount', cwCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Branche&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status)&&(identical(other.cabinetCount, cabinetCount) || other.cabinetCount == cabinetCount)&&(identical(other.cwCount, cwCount) || other.cwCount == cwCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,country,city,street,latitude,longitude,status,cabinetCount,cwCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Branche(id: $id, name: $name, slug: $slug, country: $country, city: $city, street: $street, latitude: $latitude, longitude: $longitude, status: $status, cabinetCount: $cabinetCount, cwCount: $cwCount)';
}


}

/// @nodoc
abstract mixin class $BrancheCopyWith<$Res>  {
  factory $BrancheCopyWith(Branche value, $Res Function(Branche) _then) = _$BrancheCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'country') String? country,@JsonKey(name: 'city') String? city,@JsonKey(name: 'street') String? street,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'status') String? status,@JsonKey(name: 'cabinet_count') int? cabinetCount,@JsonKey(name: 'cw_count') int? cwCount
});




}
/// @nodoc
class _$BrancheCopyWithImpl<$Res>
    implements $BrancheCopyWith<$Res> {
  _$BrancheCopyWithImpl(this._self, this._then);

  final Branche _self;
  final $Res Function(Branche) _then;

/// Create a copy of Branche
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? country = freezed,Object? city = freezed,Object? street = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? status = freezed,Object? cabinetCount = freezed,Object? cwCount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,cabinetCount: freezed == cabinetCount ? _self.cabinetCount : cabinetCount // ignore: cast_nullable_to_non_nullable
as int?,cwCount: freezed == cwCount ? _self.cwCount : cwCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Branche].
extension BranchePatterns on Branche {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Branche value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Branche() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Branche value)  $default,){
final _that = this;
switch (_that) {
case _Branche():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Branche value)?  $default,){
final _that = this;
switch (_that) {
case _Branche() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'cabinet_count')  int? cabinetCount, @JsonKey(name: 'cw_count')  int? cwCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Branche() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.country,_that.city,_that.street,_that.latitude,_that.longitude,_that.status,_that.cabinetCount,_that.cwCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'cabinet_count')  int? cabinetCount, @JsonKey(name: 'cw_count')  int? cwCount)  $default,) {final _that = this;
switch (_that) {
case _Branche():
return $default(_that.id,_that.name,_that.slug,_that.country,_that.city,_that.street,_that.latitude,_that.longitude,_that.status,_that.cabinetCount,_that.cwCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'cabinet_count')  int? cabinetCount, @JsonKey(name: 'cw_count')  int? cwCount)?  $default,) {final _that = this;
switch (_that) {
case _Branche() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.country,_that.city,_that.street,_that.latitude,_that.longitude,_that.status,_that.cabinetCount,_that.cwCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Branche with DiagnosticableTreeMixin implements Branche {
  const _Branche({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'country') this.country, @JsonKey(name: 'city') this.city, @JsonKey(name: 'street') this.street, @JsonKey(name: 'latitude') this.latitude, @JsonKey(name: 'longitude') this.longitude, @JsonKey(name: 'status') this.status, @JsonKey(name: 'cabinet_count') this.cabinetCount, @JsonKey(name: 'cw_count') this.cwCount});
  factory _Branche.fromJson(Map<String, dynamic> json) => _$BrancheFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'country') final  String? country;
@override@JsonKey(name: 'city') final  String? city;
@override@JsonKey(name: 'street') final  String? street;
@override@JsonKey(name: 'latitude') final  String? latitude;
@override@JsonKey(name: 'longitude') final  String? longitude;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'cabinet_count') final  int? cabinetCount;
@override@JsonKey(name: 'cw_count') final  int? cwCount;

/// Create a copy of Branche
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrancheCopyWith<_Branche> get copyWith => __$BrancheCopyWithImpl<_Branche>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrancheToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Branche'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('street', street))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('cabinetCount', cabinetCount))..add(DiagnosticsProperty('cwCount', cwCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Branche&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status)&&(identical(other.cabinetCount, cabinetCount) || other.cabinetCount == cabinetCount)&&(identical(other.cwCount, cwCount) || other.cwCount == cwCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,country,city,street,latitude,longitude,status,cabinetCount,cwCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Branche(id: $id, name: $name, slug: $slug, country: $country, city: $city, street: $street, latitude: $latitude, longitude: $longitude, status: $status, cabinetCount: $cabinetCount, cwCount: $cwCount)';
}


}

/// @nodoc
abstract mixin class _$BrancheCopyWith<$Res> implements $BrancheCopyWith<$Res> {
  factory _$BrancheCopyWith(_Branche value, $Res Function(_Branche) _then) = __$BrancheCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'country') String? country,@JsonKey(name: 'city') String? city,@JsonKey(name: 'street') String? street,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'status') String? status,@JsonKey(name: 'cabinet_count') int? cabinetCount,@JsonKey(name: 'cw_count') int? cwCount
});




}
/// @nodoc
class __$BrancheCopyWithImpl<$Res>
    implements _$BrancheCopyWith<$Res> {
  __$BrancheCopyWithImpl(this._self, this._then);

  final _Branche _self;
  final $Res Function(_Branche) _then;

/// Create a copy of Branche
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? country = freezed,Object? city = freezed,Object? street = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? status = freezed,Object? cabinetCount = freezed,Object? cwCount = freezed,}) {
  return _then(_Branche(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,cabinetCount: freezed == cabinetCount ? _self.cabinetCount : cabinetCount // ignore: cast_nullable_to_non_nullable
as int?,cwCount: freezed == cwCount ? _self.cwCount : cwCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
