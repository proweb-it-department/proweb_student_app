// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyProfile implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'phone') String get phone;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'patronymic') String? get patronymic;@JsonKey(name: 'date_of_birth') String? get dateOfBirth;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'country') String? get country;@JsonKey(name: 'city') String? get city;@JsonKey(name: 'street') String? get street;@JsonKey(name: 'has_usable_password') bool get hasUsablePassword;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'contacts') List<Contacts>? get contacts;
/// Create a copy of MyProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyProfileCopyWith<MyProfile> get copyWith => _$MyProfileCopyWithImpl<MyProfile>(this as MyProfile, _$identity);

  /// Serializes this MyProfile to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyProfile'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('lastName', lastName))..add(DiagnosticsProperty('patronymic', patronymic))..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('street', street))..add(DiagnosticsProperty('hasUsablePassword', hasUsablePassword))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('contacts', contacts));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.type, type) || other.type == type)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.image, image) || other.image == image)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.hasUsablePassword, hasUsablePassword) || other.hasUsablePassword == hasUsablePassword)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.contacts, contacts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,email,type,firstName,lastName,patronymic,dateOfBirth,image,country,city,street,hasUsablePassword,isActive,const DeepCollectionEquality().hash(contacts));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyProfile(id: $id, phone: $phone, email: $email, type: $type, firstName: $firstName, lastName: $lastName, patronymic: $patronymic, dateOfBirth: $dateOfBirth, image: $image, country: $country, city: $city, street: $street, hasUsablePassword: $hasUsablePassword, isActive: $isActive, contacts: $contacts)';
}


}

/// @nodoc
abstract mixin class $MyProfileCopyWith<$Res>  {
  factory $MyProfileCopyWith(MyProfile value, $Res Function(MyProfile) _then) = _$MyProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'phone') String phone,@JsonKey(name: 'email') String? email,@JsonKey(name: 'type') String? type,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'patronymic') String? patronymic,@JsonKey(name: 'date_of_birth') String? dateOfBirth,@JsonKey(name: 'image') String? image,@JsonKey(name: 'country') String? country,@JsonKey(name: 'city') String? city,@JsonKey(name: 'street') String? street,@JsonKey(name: 'has_usable_password') bool hasUsablePassword,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'contacts') List<Contacts>? contacts
});




}
/// @nodoc
class _$MyProfileCopyWithImpl<$Res>
    implements $MyProfileCopyWith<$Res> {
  _$MyProfileCopyWithImpl(this._self, this._then);

  final MyProfile _self;
  final $Res Function(MyProfile) _then;

/// Create a copy of MyProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phone = null,Object? email = freezed,Object? type = freezed,Object? firstName = null,Object? lastName = freezed,Object? patronymic = freezed,Object? dateOfBirth = freezed,Object? image = freezed,Object? country = freezed,Object? city = freezed,Object? street = freezed,Object? hasUsablePassword = null,Object? isActive = null,Object? contacts = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,hasUsablePassword: null == hasUsablePassword ? _self.hasUsablePassword : hasUsablePassword // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,contacts: freezed == contacts ? _self.contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<Contacts>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyProfile].
extension MyProfilePatterns on MyProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyProfile value)  $default,){
final _that = this;
switch (_that) {
case _MyProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyProfile value)?  $default,){
final _that = this;
switch (_that) {
case _MyProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'phone')  String phone, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'patronymic')  String? patronymic, @JsonKey(name: 'date_of_birth')  String? dateOfBirth, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'has_usable_password')  bool hasUsablePassword, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'contacts')  List<Contacts>? contacts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyProfile() when $default != null:
return $default(_that.id,_that.phone,_that.email,_that.type,_that.firstName,_that.lastName,_that.patronymic,_that.dateOfBirth,_that.image,_that.country,_that.city,_that.street,_that.hasUsablePassword,_that.isActive,_that.contacts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'phone')  String phone, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'patronymic')  String? patronymic, @JsonKey(name: 'date_of_birth')  String? dateOfBirth, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'has_usable_password')  bool hasUsablePassword, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'contacts')  List<Contacts>? contacts)  $default,) {final _that = this;
switch (_that) {
case _MyProfile():
return $default(_that.id,_that.phone,_that.email,_that.type,_that.firstName,_that.lastName,_that.patronymic,_that.dateOfBirth,_that.image,_that.country,_that.city,_that.street,_that.hasUsablePassword,_that.isActive,_that.contacts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'phone')  String phone, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'patronymic')  String? patronymic, @JsonKey(name: 'date_of_birth')  String? dateOfBirth, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'has_usable_password')  bool hasUsablePassword, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'contacts')  List<Contacts>? contacts)?  $default,) {final _that = this;
switch (_that) {
case _MyProfile() when $default != null:
return $default(_that.id,_that.phone,_that.email,_that.type,_that.firstName,_that.lastName,_that.patronymic,_that.dateOfBirth,_that.image,_that.country,_that.city,_that.street,_that.hasUsablePassword,_that.isActive,_that.contacts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyProfile with DiagnosticableTreeMixin implements MyProfile {
  const _MyProfile({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'phone') required this.phone, @JsonKey(name: 'email') this.email, @JsonKey(name: 'type') this.type, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'patronymic') this.patronymic, @JsonKey(name: 'date_of_birth') this.dateOfBirth, @JsonKey(name: 'image') this.image, @JsonKey(name: 'country') this.country, @JsonKey(name: 'city') this.city, @JsonKey(name: 'street') this.street, @JsonKey(name: 'has_usable_password') required this.hasUsablePassword, @JsonKey(name: 'is_active') required this.isActive, @JsonKey(name: 'contacts') final  List<Contacts>? contacts}): _contacts = contacts;
  factory _MyProfile.fromJson(Map<String, dynamic> json) => _$MyProfileFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'phone') final  String phone;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'patronymic') final  String? patronymic;
@override@JsonKey(name: 'date_of_birth') final  String? dateOfBirth;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'country') final  String? country;
@override@JsonKey(name: 'city') final  String? city;
@override@JsonKey(name: 'street') final  String? street;
@override@JsonKey(name: 'has_usable_password') final  bool hasUsablePassword;
@override@JsonKey(name: 'is_active') final  bool isActive;
 final  List<Contacts>? _contacts;
@override@JsonKey(name: 'contacts') List<Contacts>? get contacts {
  final value = _contacts;
  if (value == null) return null;
  if (_contacts is EqualUnmodifiableListView) return _contacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MyProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyProfileCopyWith<_MyProfile> get copyWith => __$MyProfileCopyWithImpl<_MyProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyProfileToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyProfile'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('lastName', lastName))..add(DiagnosticsProperty('patronymic', patronymic))..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('street', street))..add(DiagnosticsProperty('hasUsablePassword', hasUsablePassword))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('contacts', contacts));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.type, type) || other.type == type)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.image, image) || other.image == image)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.hasUsablePassword, hasUsablePassword) || other.hasUsablePassword == hasUsablePassword)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._contacts, _contacts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,email,type,firstName,lastName,patronymic,dateOfBirth,image,country,city,street,hasUsablePassword,isActive,const DeepCollectionEquality().hash(_contacts));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyProfile(id: $id, phone: $phone, email: $email, type: $type, firstName: $firstName, lastName: $lastName, patronymic: $patronymic, dateOfBirth: $dateOfBirth, image: $image, country: $country, city: $city, street: $street, hasUsablePassword: $hasUsablePassword, isActive: $isActive, contacts: $contacts)';
}


}

/// @nodoc
abstract mixin class _$MyProfileCopyWith<$Res> implements $MyProfileCopyWith<$Res> {
  factory _$MyProfileCopyWith(_MyProfile value, $Res Function(_MyProfile) _then) = __$MyProfileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'phone') String phone,@JsonKey(name: 'email') String? email,@JsonKey(name: 'type') String? type,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'patronymic') String? patronymic,@JsonKey(name: 'date_of_birth') String? dateOfBirth,@JsonKey(name: 'image') String? image,@JsonKey(name: 'country') String? country,@JsonKey(name: 'city') String? city,@JsonKey(name: 'street') String? street,@JsonKey(name: 'has_usable_password') bool hasUsablePassword,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'contacts') List<Contacts>? contacts
});




}
/// @nodoc
class __$MyProfileCopyWithImpl<$Res>
    implements _$MyProfileCopyWith<$Res> {
  __$MyProfileCopyWithImpl(this._self, this._then);

  final _MyProfile _self;
  final $Res Function(_MyProfile) _then;

/// Create a copy of MyProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phone = null,Object? email = freezed,Object? type = freezed,Object? firstName = null,Object? lastName = freezed,Object? patronymic = freezed,Object? dateOfBirth = freezed,Object? image = freezed,Object? country = freezed,Object? city = freezed,Object? street = freezed,Object? hasUsablePassword = null,Object? isActive = null,Object? contacts = freezed,}) {
  return _then(_MyProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,hasUsablePassword: null == hasUsablePassword ? _self.hasUsablePassword : hasUsablePassword // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,contacts: freezed == contacts ? _self._contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<Contacts>?,
  ));
}


}


/// @nodoc
mixin _$Contacts implements DiagnosticableTreeMixin {

@JsonKey(name: 'contact_name') String? get contactName;@JsonKey(name: 'contact_phone') String? get contactPhone;
/// Create a copy of Contacts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactsCopyWith<Contacts> get copyWith => _$ContactsCopyWithImpl<Contacts>(this as Contacts, _$identity);

  /// Serializes this Contacts to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Contacts'))
    ..add(DiagnosticsProperty('contactName', contactName))..add(DiagnosticsProperty('contactPhone', contactPhone));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Contacts&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contactName,contactPhone);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Contacts(contactName: $contactName, contactPhone: $contactPhone)';
}


}

/// @nodoc
abstract mixin class $ContactsCopyWith<$Res>  {
  factory $ContactsCopyWith(Contacts value, $Res Function(Contacts) _then) = _$ContactsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'contact_name') String? contactName,@JsonKey(name: 'contact_phone') String? contactPhone
});




}
/// @nodoc
class _$ContactsCopyWithImpl<$Res>
    implements $ContactsCopyWith<$Res> {
  _$ContactsCopyWithImpl(this._self, this._then);

  final Contacts _self;
  final $Res Function(Contacts) _then;

/// Create a copy of Contacts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contactName = freezed,Object? contactPhone = freezed,}) {
  return _then(_self.copyWith(
contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Contacts].
extension ContactsPatterns on Contacts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Contacts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Contacts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Contacts value)  $default,){
final _that = this;
switch (_that) {
case _Contacts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Contacts value)?  $default,){
final _that = this;
switch (_that) {
case _Contacts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'contact_name')  String? contactName, @JsonKey(name: 'contact_phone')  String? contactPhone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Contacts() when $default != null:
return $default(_that.contactName,_that.contactPhone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'contact_name')  String? contactName, @JsonKey(name: 'contact_phone')  String? contactPhone)  $default,) {final _that = this;
switch (_that) {
case _Contacts():
return $default(_that.contactName,_that.contactPhone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'contact_name')  String? contactName, @JsonKey(name: 'contact_phone')  String? contactPhone)?  $default,) {final _that = this;
switch (_that) {
case _Contacts() when $default != null:
return $default(_that.contactName,_that.contactPhone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Contacts with DiagnosticableTreeMixin implements Contacts {
  const _Contacts({@JsonKey(name: 'contact_name') this.contactName, @JsonKey(name: 'contact_phone') this.contactPhone});
  factory _Contacts.fromJson(Map<String, dynamic> json) => _$ContactsFromJson(json);

@override@JsonKey(name: 'contact_name') final  String? contactName;
@override@JsonKey(name: 'contact_phone') final  String? contactPhone;

/// Create a copy of Contacts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactsCopyWith<_Contacts> get copyWith => __$ContactsCopyWithImpl<_Contacts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Contacts'))
    ..add(DiagnosticsProperty('contactName', contactName))..add(DiagnosticsProperty('contactPhone', contactPhone));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Contacts&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contactName,contactPhone);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Contacts(contactName: $contactName, contactPhone: $contactPhone)';
}


}

/// @nodoc
abstract mixin class _$ContactsCopyWith<$Res> implements $ContactsCopyWith<$Res> {
  factory _$ContactsCopyWith(_Contacts value, $Res Function(_Contacts) _then) = __$ContactsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'contact_name') String? contactName,@JsonKey(name: 'contact_phone') String? contactPhone
});




}
/// @nodoc
class __$ContactsCopyWithImpl<$Res>
    implements _$ContactsCopyWith<$Res> {
  __$ContactsCopyWithImpl(this._self, this._then);

  final _Contacts _self;
  final $Res Function(_Contacts) _then;

/// Create a copy of Contacts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contactName = freezed,Object? contactPhone = freezed,}) {
  return _then(_Contacts(
contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
