// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MasterClass implements DiagnosticableTreeMixin {

@JsonKey(name: 'language') String? get language;@JsonKey(name: 'cabinet') Cabinet? get cabinet;@JsonKey(name: 'speakers') List<Speakers>? get speakers;@JsonKey(name: 'courses') List<Courses>? get courses;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'venue_name') String? get venueName;@JsonKey(name: 'venue_capacity') int? get venueCapacity;@JsonKey(name: 'banner') String? get banner;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'datetime') String? get datetime;@JsonKey(name: 'status') MasterClassStatus? get status;@JsonKey(name: 'video_key') String? get videoKey;@JsonKey(name: 'is_premium_only') bool? get isPremiumOnly;@JsonKey(name: 'is_premium_only_watch') bool? get isPremiumOnlyWatch;
/// Create a copy of MasterClass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterClassCopyWith<MasterClass> get copyWith => _$MasterClassCopyWithImpl<MasterClass>(this as MasterClass, _$identity);

  /// Serializes this MasterClass to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MasterClass'))
    ..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('cabinet', cabinet))..add(DiagnosticsProperty('speakers', speakers))..add(DiagnosticsProperty('courses', courses))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('venueName', venueName))..add(DiagnosticsProperty('venueCapacity', venueCapacity))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('videoKey', videoKey))..add(DiagnosticsProperty('isPremiumOnly', isPremiumOnly))..add(DiagnosticsProperty('isPremiumOnlyWatch', isPremiumOnlyWatch));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterClass&&(identical(other.language, language) || other.language == language)&&(identical(other.cabinet, cabinet) || other.cabinet == cabinet)&&const DeepCollectionEquality().equals(other.speakers, speakers)&&const DeepCollectionEquality().equals(other.courses, courses)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.venueCapacity, venueCapacity) || other.venueCapacity == venueCapacity)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.description, description) || other.description == description)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.status, status) || other.status == status)&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey)&&(identical(other.isPremiumOnly, isPremiumOnly) || other.isPremiumOnly == isPremiumOnly)&&(identical(other.isPremiumOnlyWatch, isPremiumOnlyWatch) || other.isPremiumOnlyWatch == isPremiumOnlyWatch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,language,cabinet,const DeepCollectionEquality().hash(speakers),const DeepCollectionEquality().hash(courses),id,name,venueName,venueCapacity,banner,description,datetime,status,videoKey,isPremiumOnly,isPremiumOnlyWatch);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MasterClass(language: $language, cabinet: $cabinet, speakers: $speakers, courses: $courses, id: $id, name: $name, venueName: $venueName, venueCapacity: $venueCapacity, banner: $banner, description: $description, datetime: $datetime, status: $status, videoKey: $videoKey, isPremiumOnly: $isPremiumOnly, isPremiumOnlyWatch: $isPremiumOnlyWatch)';
}


}

/// @nodoc
abstract mixin class $MasterClassCopyWith<$Res>  {
  factory $MasterClassCopyWith(MasterClass value, $Res Function(MasterClass) _then) = _$MasterClassCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'language') String? language,@JsonKey(name: 'cabinet') Cabinet? cabinet,@JsonKey(name: 'speakers') List<Speakers>? speakers,@JsonKey(name: 'courses') List<Courses>? courses,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'venue_name') String? venueName,@JsonKey(name: 'venue_capacity') int? venueCapacity,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'description') String? description,@JsonKey(name: 'datetime') String? datetime,@JsonKey(name: 'status') MasterClassStatus? status,@JsonKey(name: 'video_key') String? videoKey,@JsonKey(name: 'is_premium_only') bool? isPremiumOnly,@JsonKey(name: 'is_premium_only_watch') bool? isPremiumOnlyWatch
});


$CabinetCopyWith<$Res>? get cabinet;

}
/// @nodoc
class _$MasterClassCopyWithImpl<$Res>
    implements $MasterClassCopyWith<$Res> {
  _$MasterClassCopyWithImpl(this._self, this._then);

  final MasterClass _self;
  final $Res Function(MasterClass) _then;

/// Create a copy of MasterClass
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? language = freezed,Object? cabinet = freezed,Object? speakers = freezed,Object? courses = freezed,Object? id = freezed,Object? name = freezed,Object? venueName = freezed,Object? venueCapacity = freezed,Object? banner = freezed,Object? description = freezed,Object? datetime = freezed,Object? status = freezed,Object? videoKey = freezed,Object? isPremiumOnly = freezed,Object? isPremiumOnlyWatch = freezed,}) {
  return _then(_self.copyWith(
language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,cabinet: freezed == cabinet ? _self.cabinet : cabinet // ignore: cast_nullable_to_non_nullable
as Cabinet?,speakers: freezed == speakers ? _self.speakers : speakers // ignore: cast_nullable_to_non_nullable
as List<Speakers>?,courses: freezed == courses ? _self.courses : courses // ignore: cast_nullable_to_non_nullable
as List<Courses>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,venueCapacity: freezed == venueCapacity ? _self.venueCapacity : venueCapacity // ignore: cast_nullable_to_non_nullable
as int?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MasterClassStatus?,videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,isPremiumOnly: freezed == isPremiumOnly ? _self.isPremiumOnly : isPremiumOnly // ignore: cast_nullable_to_non_nullable
as bool?,isPremiumOnlyWatch: freezed == isPremiumOnlyWatch ? _self.isPremiumOnlyWatch : isPremiumOnlyWatch // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of MasterClass
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CabinetCopyWith<$Res>? get cabinet {
    if (_self.cabinet == null) {
    return null;
  }

  return $CabinetCopyWith<$Res>(_self.cabinet!, (value) {
    return _then(_self.copyWith(cabinet: value));
  });
}
}


/// Adds pattern-matching-related methods to [MasterClass].
extension MasterClassPatterns on MasterClass {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MasterClass value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MasterClass() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MasterClass value)  $default,){
final _that = this;
switch (_that) {
case _MasterClass():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MasterClass value)?  $default,){
final _that = this;
switch (_that) {
case _MasterClass() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'language')  String? language, @JsonKey(name: 'cabinet')  Cabinet? cabinet, @JsonKey(name: 'speakers')  List<Speakers>? speakers, @JsonKey(name: 'courses')  List<Courses>? courses, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'venue_name')  String? venueName, @JsonKey(name: 'venue_capacity')  int? venueCapacity, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'status')  MasterClassStatus? status, @JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'is_premium_only')  bool? isPremiumOnly, @JsonKey(name: 'is_premium_only_watch')  bool? isPremiumOnlyWatch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MasterClass() when $default != null:
return $default(_that.language,_that.cabinet,_that.speakers,_that.courses,_that.id,_that.name,_that.venueName,_that.venueCapacity,_that.banner,_that.description,_that.datetime,_that.status,_that.videoKey,_that.isPremiumOnly,_that.isPremiumOnlyWatch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'language')  String? language, @JsonKey(name: 'cabinet')  Cabinet? cabinet, @JsonKey(name: 'speakers')  List<Speakers>? speakers, @JsonKey(name: 'courses')  List<Courses>? courses, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'venue_name')  String? venueName, @JsonKey(name: 'venue_capacity')  int? venueCapacity, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'status')  MasterClassStatus? status, @JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'is_premium_only')  bool? isPremiumOnly, @JsonKey(name: 'is_premium_only_watch')  bool? isPremiumOnlyWatch)  $default,) {final _that = this;
switch (_that) {
case _MasterClass():
return $default(_that.language,_that.cabinet,_that.speakers,_that.courses,_that.id,_that.name,_that.venueName,_that.venueCapacity,_that.banner,_that.description,_that.datetime,_that.status,_that.videoKey,_that.isPremiumOnly,_that.isPremiumOnlyWatch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'language')  String? language, @JsonKey(name: 'cabinet')  Cabinet? cabinet, @JsonKey(name: 'speakers')  List<Speakers>? speakers, @JsonKey(name: 'courses')  List<Courses>? courses, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'venue_name')  String? venueName, @JsonKey(name: 'venue_capacity')  int? venueCapacity, @JsonKey(name: 'banner')  String? banner, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'datetime')  String? datetime, @JsonKey(name: 'status')  MasterClassStatus? status, @JsonKey(name: 'video_key')  String? videoKey, @JsonKey(name: 'is_premium_only')  bool? isPremiumOnly, @JsonKey(name: 'is_premium_only_watch')  bool? isPremiumOnlyWatch)?  $default,) {final _that = this;
switch (_that) {
case _MasterClass() when $default != null:
return $default(_that.language,_that.cabinet,_that.speakers,_that.courses,_that.id,_that.name,_that.venueName,_that.venueCapacity,_that.banner,_that.description,_that.datetime,_that.status,_that.videoKey,_that.isPremiumOnly,_that.isPremiumOnlyWatch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MasterClass with DiagnosticableTreeMixin implements MasterClass {
  const _MasterClass({@JsonKey(name: 'language') this.language, @JsonKey(name: 'cabinet') this.cabinet, @JsonKey(name: 'speakers') final  List<Speakers>? speakers, @JsonKey(name: 'courses') final  List<Courses>? courses, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'venue_name') this.venueName, @JsonKey(name: 'venue_capacity') this.venueCapacity, @JsonKey(name: 'banner') this.banner, @JsonKey(name: 'description') this.description, @JsonKey(name: 'datetime') this.datetime, @JsonKey(name: 'status') this.status, @JsonKey(name: 'video_key') this.videoKey, @JsonKey(name: 'is_premium_only') this.isPremiumOnly, @JsonKey(name: 'is_premium_only_watch') this.isPremiumOnlyWatch}): _speakers = speakers,_courses = courses;
  factory _MasterClass.fromJson(Map<String, dynamic> json) => _$MasterClassFromJson(json);

@override@JsonKey(name: 'language') final  String? language;
@override@JsonKey(name: 'cabinet') final  Cabinet? cabinet;
 final  List<Speakers>? _speakers;
@override@JsonKey(name: 'speakers') List<Speakers>? get speakers {
  final value = _speakers;
  if (value == null) return null;
  if (_speakers is EqualUnmodifiableListView) return _speakers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Courses>? _courses;
@override@JsonKey(name: 'courses') List<Courses>? get courses {
  final value = _courses;
  if (value == null) return null;
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'venue_name') final  String? venueName;
@override@JsonKey(name: 'venue_capacity') final  int? venueCapacity;
@override@JsonKey(name: 'banner') final  String? banner;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'datetime') final  String? datetime;
@override@JsonKey(name: 'status') final  MasterClassStatus? status;
@override@JsonKey(name: 'video_key') final  String? videoKey;
@override@JsonKey(name: 'is_premium_only') final  bool? isPremiumOnly;
@override@JsonKey(name: 'is_premium_only_watch') final  bool? isPremiumOnlyWatch;

/// Create a copy of MasterClass
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterClassCopyWith<_MasterClass> get copyWith => __$MasterClassCopyWithImpl<_MasterClass>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasterClassToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MasterClass'))
    ..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('cabinet', cabinet))..add(DiagnosticsProperty('speakers', speakers))..add(DiagnosticsProperty('courses', courses))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('venueName', venueName))..add(DiagnosticsProperty('venueCapacity', venueCapacity))..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('videoKey', videoKey))..add(DiagnosticsProperty('isPremiumOnly', isPremiumOnly))..add(DiagnosticsProperty('isPremiumOnlyWatch', isPremiumOnlyWatch));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasterClass&&(identical(other.language, language) || other.language == language)&&(identical(other.cabinet, cabinet) || other.cabinet == cabinet)&&const DeepCollectionEquality().equals(other._speakers, _speakers)&&const DeepCollectionEquality().equals(other._courses, _courses)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.venueCapacity, venueCapacity) || other.venueCapacity == venueCapacity)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.description, description) || other.description == description)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.status, status) || other.status == status)&&(identical(other.videoKey, videoKey) || other.videoKey == videoKey)&&(identical(other.isPremiumOnly, isPremiumOnly) || other.isPremiumOnly == isPremiumOnly)&&(identical(other.isPremiumOnlyWatch, isPremiumOnlyWatch) || other.isPremiumOnlyWatch == isPremiumOnlyWatch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,language,cabinet,const DeepCollectionEquality().hash(_speakers),const DeepCollectionEquality().hash(_courses),id,name,venueName,venueCapacity,banner,description,datetime,status,videoKey,isPremiumOnly,isPremiumOnlyWatch);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MasterClass(language: $language, cabinet: $cabinet, speakers: $speakers, courses: $courses, id: $id, name: $name, venueName: $venueName, venueCapacity: $venueCapacity, banner: $banner, description: $description, datetime: $datetime, status: $status, videoKey: $videoKey, isPremiumOnly: $isPremiumOnly, isPremiumOnlyWatch: $isPremiumOnlyWatch)';
}


}

/// @nodoc
abstract mixin class _$MasterClassCopyWith<$Res> implements $MasterClassCopyWith<$Res> {
  factory _$MasterClassCopyWith(_MasterClass value, $Res Function(_MasterClass) _then) = __$MasterClassCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'language') String? language,@JsonKey(name: 'cabinet') Cabinet? cabinet,@JsonKey(name: 'speakers') List<Speakers>? speakers,@JsonKey(name: 'courses') List<Courses>? courses,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'venue_name') String? venueName,@JsonKey(name: 'venue_capacity') int? venueCapacity,@JsonKey(name: 'banner') String? banner,@JsonKey(name: 'description') String? description,@JsonKey(name: 'datetime') String? datetime,@JsonKey(name: 'status') MasterClassStatus? status,@JsonKey(name: 'video_key') String? videoKey,@JsonKey(name: 'is_premium_only') bool? isPremiumOnly,@JsonKey(name: 'is_premium_only_watch') bool? isPremiumOnlyWatch
});


@override $CabinetCopyWith<$Res>? get cabinet;

}
/// @nodoc
class __$MasterClassCopyWithImpl<$Res>
    implements _$MasterClassCopyWith<$Res> {
  __$MasterClassCopyWithImpl(this._self, this._then);

  final _MasterClass _self;
  final $Res Function(_MasterClass) _then;

/// Create a copy of MasterClass
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? language = freezed,Object? cabinet = freezed,Object? speakers = freezed,Object? courses = freezed,Object? id = freezed,Object? name = freezed,Object? venueName = freezed,Object? venueCapacity = freezed,Object? banner = freezed,Object? description = freezed,Object? datetime = freezed,Object? status = freezed,Object? videoKey = freezed,Object? isPremiumOnly = freezed,Object? isPremiumOnlyWatch = freezed,}) {
  return _then(_MasterClass(
language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,cabinet: freezed == cabinet ? _self.cabinet : cabinet // ignore: cast_nullable_to_non_nullable
as Cabinet?,speakers: freezed == speakers ? _self._speakers : speakers // ignore: cast_nullable_to_non_nullable
as List<Speakers>?,courses: freezed == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<Courses>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,venueCapacity: freezed == venueCapacity ? _self.venueCapacity : venueCapacity // ignore: cast_nullable_to_non_nullable
as int?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MasterClassStatus?,videoKey: freezed == videoKey ? _self.videoKey : videoKey // ignore: cast_nullable_to_non_nullable
as String?,isPremiumOnly: freezed == isPremiumOnly ? _self.isPremiumOnly : isPremiumOnly // ignore: cast_nullable_to_non_nullable
as bool?,isPremiumOnlyWatch: freezed == isPremiumOnlyWatch ? _self.isPremiumOnlyWatch : isPremiumOnlyWatch // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of MasterClass
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CabinetCopyWith<$Res>? get cabinet {
    if (_self.cabinet == null) {
    return null;
  }

  return $CabinetCopyWith<$Res>(_self.cabinet!, (value) {
    return _then(_self.copyWith(cabinet: value));
  });
}
}


/// @nodoc
mixin _$Cabinet implements DiagnosticableTreeMixin {

@JsonKey(name: 'branch') Branch? get branch;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'capacity') int? get capacity;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'note') String? get note;
/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CabinetCopyWith<Cabinet> get copyWith => _$CabinetCopyWithImpl<Cabinet>(this as Cabinet, _$identity);

  /// Serializes this Cabinet to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Cabinet'))
    ..add(DiagnosticsProperty('branch', branch))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('capacity', capacity))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('note', note));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cabinet&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branch,id,name,type,capacity,description,status,note);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Cabinet(branch: $branch, id: $id, name: $name, type: $type, capacity: $capacity, description: $description, status: $status, note: $note)';
}


}

/// @nodoc
abstract mixin class $CabinetCopyWith<$Res>  {
  factory $CabinetCopyWith(Cabinet value, $Res Function(Cabinet) _then) = _$CabinetCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'branch') Branch? branch,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'type') String? type,@JsonKey(name: 'capacity') int? capacity,@JsonKey(name: 'description') String? description,@JsonKey(name: 'status') String? status,@JsonKey(name: 'note') String? note
});


$BranchCopyWith<$Res>? get branch;

}
/// @nodoc
class _$CabinetCopyWithImpl<$Res>
    implements $CabinetCopyWith<$Res> {
  _$CabinetCopyWithImpl(this._self, this._then);

  final Cabinet _self;
  final $Res Function(Cabinet) _then;

/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branch = freezed,Object? id = freezed,Object? name = freezed,Object? type = freezed,Object? capacity = freezed,Object? description = freezed,Object? status = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}


/// Adds pattern-matching-related methods to [Cabinet].
extension CabinetPatterns on Cabinet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cabinet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cabinet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cabinet value)  $default,){
final _that = this;
switch (_that) {
case _Cabinet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cabinet value)?  $default,){
final _that = this;
switch (_that) {
case _Cabinet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'branch')  Branch? branch, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'capacity')  int? capacity, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'note')  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cabinet() when $default != null:
return $default(_that.branch,_that.id,_that.name,_that.type,_that.capacity,_that.description,_that.status,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'branch')  Branch? branch, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'capacity')  int? capacity, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'note')  String? note)  $default,) {final _that = this;
switch (_that) {
case _Cabinet():
return $default(_that.branch,_that.id,_that.name,_that.type,_that.capacity,_that.description,_that.status,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'branch')  Branch? branch, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'capacity')  int? capacity, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'note')  String? note)?  $default,) {final _that = this;
switch (_that) {
case _Cabinet() when $default != null:
return $default(_that.branch,_that.id,_that.name,_that.type,_that.capacity,_that.description,_that.status,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cabinet with DiagnosticableTreeMixin implements Cabinet {
  const _Cabinet({@JsonKey(name: 'branch') this.branch, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'type') this.type, @JsonKey(name: 'capacity') this.capacity, @JsonKey(name: 'description') this.description, @JsonKey(name: 'status') this.status, @JsonKey(name: 'note') this.note});
  factory _Cabinet.fromJson(Map<String, dynamic> json) => _$CabinetFromJson(json);

@override@JsonKey(name: 'branch') final  Branch? branch;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'capacity') final  int? capacity;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'note') final  String? note;

/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CabinetCopyWith<_Cabinet> get copyWith => __$CabinetCopyWithImpl<_Cabinet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CabinetToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Cabinet'))
    ..add(DiagnosticsProperty('branch', branch))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('capacity', capacity))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('note', note));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cabinet&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branch,id,name,type,capacity,description,status,note);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Cabinet(branch: $branch, id: $id, name: $name, type: $type, capacity: $capacity, description: $description, status: $status, note: $note)';
}


}

/// @nodoc
abstract mixin class _$CabinetCopyWith<$Res> implements $CabinetCopyWith<$Res> {
  factory _$CabinetCopyWith(_Cabinet value, $Res Function(_Cabinet) _then) = __$CabinetCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'branch') Branch? branch,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'type') String? type,@JsonKey(name: 'capacity') int? capacity,@JsonKey(name: 'description') String? description,@JsonKey(name: 'status') String? status,@JsonKey(name: 'note') String? note
});


@override $BranchCopyWith<$Res>? get branch;

}
/// @nodoc
class __$CabinetCopyWithImpl<$Res>
    implements _$CabinetCopyWith<$Res> {
  __$CabinetCopyWithImpl(this._self, this._then);

  final _Cabinet _self;
  final $Res Function(_Cabinet) _then;

/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branch = freezed,Object? id = freezed,Object? name = freezed,Object? type = freezed,Object? capacity = freezed,Object? description = freezed,Object? status = freezed,Object? note = freezed,}) {
  return _then(_Cabinet(
branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Cabinet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}


/// @nodoc
mixin _$Branch implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'country') String? get country;@JsonKey(name: 'city') String? get city;@JsonKey(name: 'street') String? get street;@JsonKey(name: 'latitude') String? get latitude;@JsonKey(name: 'longitude') String? get longitude;@JsonKey(name: 'status') String? get status;
/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchCopyWith<Branch> get copyWith => _$BranchCopyWithImpl<Branch>(this as Branch, _$identity);

  /// Serializes this Branch to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Branch'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('street', street))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Branch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,country,city,street,latitude,longitude,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Branch(id: $id, name: $name, slug: $slug, country: $country, city: $city, street: $street, latitude: $latitude, longitude: $longitude, status: $status)';
}


}

/// @nodoc
abstract mixin class $BranchCopyWith<$Res>  {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) _then) = _$BranchCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'country') String? country,@JsonKey(name: 'city') String? city,@JsonKey(name: 'street') String? street,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class _$BranchCopyWithImpl<$Res>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._self, this._then);

  final Branch _self;
  final $Res Function(Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? country = freezed,Object? city = freezed,Object? street = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? status = freezed,}) {
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
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Branch].
extension BranchPatterns on Branch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Branch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Branch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Branch value)  $default,){
final _that = this;
switch (_that) {
case _Branch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Branch value)?  $default,){
final _that = this;
switch (_that) {
case _Branch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'status')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.country,_that.city,_that.street,_that.latitude,_that.longitude,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'status')  String? status)  $default,) {final _that = this;
switch (_that) {
case _Branch():
return $default(_that.id,_that.name,_that.slug,_that.country,_that.city,_that.street,_that.latitude,_that.longitude,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'status')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.country,_that.city,_that.street,_that.latitude,_that.longitude,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Branch with DiagnosticableTreeMixin implements Branch {
  const _Branch({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'country') this.country, @JsonKey(name: 'city') this.city, @JsonKey(name: 'street') this.street, @JsonKey(name: 'latitude') this.latitude, @JsonKey(name: 'longitude') this.longitude, @JsonKey(name: 'status') this.status});
  factory _Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'country') final  String? country;
@override@JsonKey(name: 'city') final  String? city;
@override@JsonKey(name: 'street') final  String? street;
@override@JsonKey(name: 'latitude') final  String? latitude;
@override@JsonKey(name: 'longitude') final  String? longitude;
@override@JsonKey(name: 'status') final  String? status;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchCopyWith<_Branch> get copyWith => __$BranchCopyWithImpl<_Branch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Branch'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('street', street))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Branch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,country,city,street,latitude,longitude,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Branch(id: $id, name: $name, slug: $slug, country: $country, city: $city, street: $street, latitude: $latitude, longitude: $longitude, status: $status)';
}


}

/// @nodoc
abstract mixin class _$BranchCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$BranchCopyWith(_Branch value, $Res Function(_Branch) _then) = __$BranchCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'country') String? country,@JsonKey(name: 'city') String? city,@JsonKey(name: 'street') String? street,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class __$BranchCopyWithImpl<$Res>
    implements _$BranchCopyWith<$Res> {
  __$BranchCopyWithImpl(this._self, this._then);

  final _Branch _self;
  final $Res Function(_Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? country = freezed,Object? city = freezed,Object? street = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? status = freezed,}) {
  return _then(_Branch(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Speakers implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'user_id') int? get userId; User? get user;@JsonKey(name: 'name') String? get name;
/// Create a copy of Speakers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeakersCopyWith<Speakers> get copyWith => _$SpeakersCopyWithImpl<Speakers>(this as Speakers, _$identity);

  /// Serializes this Speakers to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Speakers'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Speakers&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,user,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Speakers(id: $id, userId: $userId, user: $user, name: $name)';
}


}

/// @nodoc
abstract mixin class $SpeakersCopyWith<$Res>  {
  factory $SpeakersCopyWith(Speakers value, $Res Function(Speakers) _then) = _$SpeakersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId, User? user,@JsonKey(name: 'name') String? name
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$SpeakersCopyWithImpl<$Res>
    implements $SpeakersCopyWith<$Res> {
  _$SpeakersCopyWithImpl(this._self, this._then);

  final Speakers _self;
  final $Res Function(Speakers) _then;

/// Create a copy of Speakers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? user = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Speakers
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


/// Adds pattern-matching-related methods to [Speakers].
extension SpeakersPatterns on Speakers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Speakers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Speakers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Speakers value)  $default,){
final _that = this;
switch (_that) {
case _Speakers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Speakers value)?  $default,){
final _that = this;
switch (_that) {
case _Speakers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId,  User? user, @JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Speakers() when $default != null:
return $default(_that.id,_that.userId,_that.user,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId,  User? user, @JsonKey(name: 'name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _Speakers():
return $default(_that.id,_that.userId,_that.user,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId,  User? user, @JsonKey(name: 'name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Speakers() when $default != null:
return $default(_that.id,_that.userId,_that.user,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Speakers with DiagnosticableTreeMixin implements Speakers {
  const _Speakers({@JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, this.user, @JsonKey(name: 'name') this.name});
  factory _Speakers.fromJson(Map<String, dynamic> json) => _$SpeakersFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'user_id') final  int? userId;
@override final  User? user;
@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of Speakers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpeakersCopyWith<_Speakers> get copyWith => __$SpeakersCopyWithImpl<_Speakers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpeakersToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Speakers'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Speakers&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,user,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Speakers(id: $id, userId: $userId, user: $user, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SpeakersCopyWith<$Res> implements $SpeakersCopyWith<$Res> {
  factory _$SpeakersCopyWith(_Speakers value, $Res Function(_Speakers) _then) = __$SpeakersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId, User? user,@JsonKey(name: 'name') String? name
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$SpeakersCopyWithImpl<$Res>
    implements _$SpeakersCopyWith<$Res> {
  __$SpeakersCopyWithImpl(this._self, this._then);

  final _Speakers _self;
  final $Res Function(_Speakers) _then;

/// Create a copy of Speakers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? user = freezed,Object? name = freezed,}) {
  return _then(_Speakers(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Speakers
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
mixin _$Courses implements DiagnosticableTreeMixin {

@JsonKey(name: 'course') Course? get course;@JsonKey(name: 'id') int? get id;
/// Create a copy of Courses
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoursesCopyWith<Courses> get copyWith => _$CoursesCopyWithImpl<Courses>(this as Courses, _$identity);

  /// Serializes this Courses to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Courses'))
    ..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Courses&&(identical(other.course, course) || other.course == course)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Courses(course: $course, id: $id)';
}


}

/// @nodoc
abstract mixin class $CoursesCopyWith<$Res>  {
  factory $CoursesCopyWith(Courses value, $Res Function(Courses) _then) = _$CoursesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'course') Course? course,@JsonKey(name: 'id') int? id
});


$CourseCopyWith<$Res>? get course;

}
/// @nodoc
class _$CoursesCopyWithImpl<$Res>
    implements $CoursesCopyWith<$Res> {
  _$CoursesCopyWithImpl(this._self, this._then);

  final Courses _self;
  final $Res Function(Courses) _then;

/// Create a copy of Courses
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? course = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Courses
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
}
}


/// Adds pattern-matching-related methods to [Courses].
extension CoursesPatterns on Courses {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Courses value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Courses() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Courses value)  $default,){
final _that = this;
switch (_that) {
case _Courses():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Courses value)?  $default,){
final _that = this;
switch (_that) {
case _Courses() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'course')  Course? course, @JsonKey(name: 'id')  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Courses() when $default != null:
return $default(_that.course,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'course')  Course? course, @JsonKey(name: 'id')  int? id)  $default,) {final _that = this;
switch (_that) {
case _Courses():
return $default(_that.course,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'course')  Course? course, @JsonKey(name: 'id')  int? id)?  $default,) {final _that = this;
switch (_that) {
case _Courses() when $default != null:
return $default(_that.course,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Courses with DiagnosticableTreeMixin implements Courses {
  const _Courses({@JsonKey(name: 'course') this.course, @JsonKey(name: 'id') this.id});
  factory _Courses.fromJson(Map<String, dynamic> json) => _$CoursesFromJson(json);

@override@JsonKey(name: 'course') final  Course? course;
@override@JsonKey(name: 'id') final  int? id;

/// Create a copy of Courses
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoursesCopyWith<_Courses> get copyWith => __$CoursesCopyWithImpl<_Courses>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoursesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Courses'))
    ..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Courses&&(identical(other.course, course) || other.course == course)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Courses(course: $course, id: $id)';
}


}

/// @nodoc
abstract mixin class _$CoursesCopyWith<$Res> implements $CoursesCopyWith<$Res> {
  factory _$CoursesCopyWith(_Courses value, $Res Function(_Courses) _then) = __$CoursesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'course') Course? course,@JsonKey(name: 'id') int? id
});


@override $CourseCopyWith<$Res>? get course;

}
/// @nodoc
class __$CoursesCopyWithImpl<$Res>
    implements _$CoursesCopyWith<$Res> {
  __$CoursesCopyWithImpl(this._self, this._then);

  final _Courses _self;
  final $Res Function(_Courses) _then;

/// Create a copy of Courses
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? course = freezed,Object? id = freezed,}) {
  return _then(_Courses(
course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Courses
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
