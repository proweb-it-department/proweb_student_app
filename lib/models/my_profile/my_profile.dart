import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'my_profile.freezed.dart';
part 'my_profile.g.dart';

@freezed
abstract class MyProfile with _$MyProfile {
  const factory MyProfile({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'patronymic') String? patronymic,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'street') String? street,
    @JsonKey(name: 'has_usable_password') required bool hasUsablePassword,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'contacts') List<Contacts>? contacts,
  }) = _MyProfile;

  factory MyProfile.fromJson(Map<String, Object?> json) =>
      _$MyProfileFromJson(json);
}

@freezed
abstract class Contacts with _$Contacts {
  const factory Contacts({
    @JsonKey(name: 'contact_name') String? contactName,
    @JsonKey(name: 'contact_phone') String? contactPhone,
  }) = _Contacts;

  factory Contacts.fromJson(Map<String, Object?> json) =>
      _$ContactsFromJson(json);
}
