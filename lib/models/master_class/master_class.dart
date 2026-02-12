import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/user/user.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'master_class.freezed.dart';
part 'master_class.g.dart';

@freezed
abstract class MasterClass with _$MasterClass {
  const factory MasterClass({
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'cabinet') Cabinet? cabinet,
    @JsonKey(name: 'speakers') List<Speakers>? speakers,
    @JsonKey(name: 'courses') List<Courses>? courses,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'venue_name') String? venueName,
    @JsonKey(name: 'venue_capacity') int? venueCapacity,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'datetime') String? datetime,
    @JsonKey(name: 'status') MasterClassStatus? status,
    @JsonKey(name: 'video_key') String? videoKey,
    @JsonKey(name: 'is_premium_only') bool? isPremiumOnly,
    @JsonKey(name: 'is_premium_only_watch') bool? isPremiumOnlyWatch,
  }) = _MasterClass;

  factory MasterClass.fromJson(Map<String, Object?> json) =>
      _$MasterClassFromJson(json);
}

@freezed
abstract class Cabinet with _$Cabinet {
  const factory Cabinet({
    @JsonKey(name: 'branch') Branch? branch,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'capacity') int? capacity,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'note') String? note,
  }) = _Cabinet;

  factory Cabinet.fromJson(Map<String, Object?> json) =>
      _$CabinetFromJson(json);
}

@freezed
abstract class Branch with _$Branch {
  const factory Branch({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'street') String? street,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'longitude') String? longitude,
    @JsonKey(name: 'status') String? status,
  }) = _Branch;

  factory Branch.fromJson(Map<String, Object?> json) => _$BranchFromJson(json);
}

@freezed
abstract class Speakers with _$Speakers {
  const factory Speakers({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    User? user,
    @JsonKey(name: 'name') String? name,
  }) = _Speakers;

  factory Speakers.fromJson(Map<String, Object?> json) =>
      _$SpeakersFromJson(json);
}

@freezed
abstract class Courses with _$Courses {
  const factory Courses({
    @JsonKey(name: 'course') Course? course,
    @JsonKey(name: 'id') int? id,
  }) = _Courses;

  factory Courses.fromJson(Map<String, Object?> json) =>
      _$CoursesFromJson(json);
}

@freezed
abstract class Course with _$Course {
  const factory Course({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'ads_banner') String? adsBanner,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'language') String? language,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}
