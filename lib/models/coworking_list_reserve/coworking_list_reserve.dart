import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/user/user.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'coworking_list_reserve.freezed.dart';
part 'coworking_list_reserve.g.dart';

@freezed
abstract class CoworkingListReserve with _$CoworkingListReserve {
  const factory CoworkingListReserve({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'student') Student? student,
    @JsonKey(name: 'seat') Seat? seat,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'coworker_user_id') int? coworkerUserId,
    @JsonKey(name: 'coworker') User? coworker,
    @JsonKey(name: 'teacher_user_id') int? teacherUserId,
    @JsonKey(name: 'teacher') User? teacher,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'reserve_time') String? reserveTime,
    @JsonKey(name: 'arrival_time') String? arrivalTime,
    @JsonKey(name: 'leaving_time') String? leavingTime,
    @JsonKey(name: 'current_lesson_number') int? currentLessonNumber,
    @JsonKey(name: 'status') StatusCoworkingReserve? status,
    @JsonKey(name: 'no_seat_reservation') bool? noSeatReservation,
    @JsonKey(name: 'note') String? note,
  }) = _CoworkingListReserve;

  factory CoworkingListReserve.fromJson(Map<String, Object?> json) =>
      _$CoworkingListReserveFromJson(json);
}

@freezed
abstract class Student with _$Student {
  const factory Student({
    @JsonKey(name: 'has_package') bool? hasPackage,
    @JsonKey(name: 'group') Group? group,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
  }) = _Student;

  factory Student.fromJson(Map<String, Object?> json) =>
      _$StudentFromJson(json);
}

@freezed
abstract class Group with _$Group {
  const factory Group({
    @JsonKey(name: 'course') Course? course,
    @JsonKey(name: 'version') Version? version,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'days') List<int>? days,
  }) = _Group;

  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);
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

@freezed
abstract class Version with _$Version {
  const factory Version({
    @JsonKey(name: 'block_count') int? blockCount,
    @JsonKey(name: 'block_lesson_count') int? blockLessonCount,
    @JsonKey(name: 'lesson_count') int? lessonCount,
  }) = _Version;

  factory Version.fromJson(Map<String, Object?> json) =>
      _$VersionFromJson(json);
}

@freezed
abstract class Seat with _$Seat {
  const factory Seat({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'cabinet_id') int? cabinetId,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'number') int? number,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'cabinet') Cabinet? cabinet,
  }) = _Seat;

  factory Seat.fromJson(Map<String, Object?> json) => _$SeatFromJson(json);
}

@freezed
abstract class Cabinet with _$Cabinet {
  const factory Cabinet({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'branch_id') int? branchId,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'capacity') int? capacity,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'branch') Branch? branch,
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
