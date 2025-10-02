import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'my_groups_item.freezed.dart';
part 'my_groups_item.g.dart';

@freezed
abstract class MyGroupsItem with _$MyGroupsItem {
  const factory MyGroupsItem({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'group_user_id') int? groupUserId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'status', unknownEnumValue: StudentStatus.unknown)
    StudentStatus? status,
    @JsonKey(name: 'payment_type') StudentPaymentType? paymentType,
    @JsonKey(name: 'group_role') String? groupRole,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'lead_id') int? leadId,
    @JsonKey(name: 'auto_activate_lesson') int? autoActivateLesson,
    @JsonKey(name: 'middle_rating') String? middleRating,
    @JsonKey(name: 'coworking_access_last_date')
    String? coworkingAccessLastDate,
    @JsonKey(name: 'user') UserIdDefault? user,
    @JsonKey(name: 'video_access_last_date') String? videoAccessLastDate,
    @JsonKey(name: 'group') Group? group,
    @JsonKey(name: 'prices') List<Prices>? prices,
    @JsonKey(name: 'notifications') List<Notifications>? notifications,
    @JsonKey(name: 'has_package') bool? hasPackage,
    @JsonKey(name: 'access_to_video') bool? accessToVideo,
  }) = _MyGroupsItem;

  factory MyGroupsItem.fromJson(Map<String, Object?> json) =>
      _$MyGroupsItemFromJson(json);
}

@freezed
abstract class Group with _$Group {
  const factory Group({
    @JsonKey(name: 'course') Course? course,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'graduated_date') String? graduatedDate,
    @JsonKey(name: 'disbanded_date') String? disbandedDate,
    @JsonKey(name: 'has_double_lesson') bool? hasDoubleLesson,
    @JsonKey(name: 'status') MyGroupStatus? status,
    @JsonKey(name: 'study_time') String? studyTime,
    @JsonKey(name: 'days') List<int>? days,
    @JsonKey(name: 'start_lesson_number') int? startLessonNumber,
    @JsonKey(name: 'version') Version? version,
    @JsonKey(name: 'cabinet') Cabinet? cabinet,
    @JsonKey(name: 'launch') Launch? launch,
    @JsonKey(name: 'main_teacher') MainTeacher? mainTeacher,
    @JsonKey(name: 'main_admin') MainAdmin? mainAdmin,
    @JsonKey(name: 'lessons') List<Lessons>? lessons,
    @JsonKey(name: 'schedules') List<Schedules>? schedules,
  }) = _Group;

  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);
}

@freezed
abstract class Course with _$Course {
  const factory Course({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'posters') List<Posters>? posters,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}

@freezed
abstract class Posters with _$Posters {
  const factory Posters({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'course_id') int? courseId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
  }) = _Posters;

  factory Posters.fromJson(Map<String, Object?> json) =>
      _$PostersFromJson(json);
}

@freezed
abstract class Version with _$Version {
  const factory Version({
    @JsonKey(name: 'version_id') int? versionId,
    @JsonKey(name: 'version') int? version,
    @JsonKey(name: 'version_number') int? versionNumber,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'lesson_count') int? lessonCount,
    @JsonKey(name: 'lesson_duration') int? lessonDuration,
    @JsonKey(name: 'block_count') int? blockCount,
    @JsonKey(name: 'block_lesson_count') int? blockLessonCount,
  }) = _Version;

  factory Version.fromJson(Map<String, Object?> json) =>
      _$VersionFromJson(json);
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

@freezed
abstract class Launch with _$Launch {
  const factory Launch({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'assigned_to') int? assignedTo,
  }) = _Launch;

  factory Launch.fromJson(Map<String, Object?> json) => _$LaunchFromJson(json);
}

@freezed
abstract class MainTeacher with _$MainTeacher {
  const factory MainTeacher({
    @JsonKey(name: 'group_user_id') int? groupUserId,
    @JsonKey(name: 'user_id') int? userId,
  }) = _MainTeacher;

  factory MainTeacher.fromJson(Map<String, Object?> json) =>
      _$MainTeacherFromJson(json);
}

@freezed
abstract class MainAdmin with _$MainAdmin {
  const factory MainAdmin({
    @JsonKey(name: 'group_user_id') int? groupUserId,
    @JsonKey(name: 'user_id') int? userId,
  }) = _MainAdmin;

  factory MainAdmin.fromJson(Map<String, Object?> json) =>
      _$MainAdminFromJson(json);
}

@freezed
abstract class Lessons with _$Lessons {
  const factory Lessons({
    @JsonKey(name: 'lesson_id') int? lessonId,
    @JsonKey(name: 'datetime') String? datetime,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'rescheduled_reason') String? rescheduledReason,
    @JsonKey(name: 'lesson_number') int? lessonNumber,
  }) = _Lessons;

  factory Lessons.fromJson(Map<String, Object?> json) =>
      _$LessonsFromJson(json);
}

@freezed
abstract class Schedules with _$Schedules {
  const factory Schedules({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'day') int? day,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'cabinet') Cabinet? cabinet,
  }) = _Schedules;

  factory Schedules.fromJson(Map<String, Object?> json) =>
      _$SchedulesFromJson(json);
}

@freezed
abstract class Prices with _$Prices {
  const factory Prices({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'block_cost') String? blockCost,
  }) = _Prices;

  factory Prices.fromJson(Map<String, Object?> json) => _$PricesFromJson(json);
}

@freezed
abstract class Notifications with _$Notifications {
  const factory Notifications({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'send') bool? send,
    @JsonKey(name: 'status') StatusNotificationGroupUser? status,
  }) = _Notifications;

  factory Notifications.fromJson(Map<String, Object?> json) =>
      _$NotificationsFromJson(json);
}
