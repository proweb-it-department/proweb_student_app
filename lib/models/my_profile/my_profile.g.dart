// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyProfile _$MyProfileFromJson(Map<String, dynamic> json) => _MyProfile(
  id: (json['id'] as num).toInt(),
  phone: json['phone'] as String,
  email: json['email'] as String?,
  type: json['type'] as String?,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String?,
  patronymic: json['patronymic'] as String?,
  dateOfBirth: json['date_of_birth'] as String?,
  image: json['image'] as String?,
  country: json['country'] as String?,
  city: json['city'] as String?,
  street: json['street'] as String?,
  hasUsablePassword: json['has_usable_password'] as bool,
  isActive: json['is_active'] as bool,
  contacts: (json['contacts'] as List<dynamic>?)
      ?.map((e) => Contacts.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MyProfileToJson(_MyProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'email': instance.email,
      'type': instance.type,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'patronymic': instance.patronymic,
      'date_of_birth': instance.dateOfBirth,
      'image': instance.image,
      'country': instance.country,
      'city': instance.city,
      'street': instance.street,
      'has_usable_password': instance.hasUsablePassword,
      'is_active': instance.isActive,
      'contacts': instance.contacts,
    };

_Contacts _$ContactsFromJson(Map<String, dynamic> json) => _Contacts(
  contactName: json['contact_name'] as String?,
  contactPhone: json['contact_phone'] as String?,
);

Map<String, dynamic> _$ContactsToJson(_Contacts instance) => <String, dynamic>{
  'contact_name': instance.contactName,
  'contact_phone': instance.contactPhone,
};
