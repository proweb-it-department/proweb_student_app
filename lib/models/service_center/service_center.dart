import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/user/user.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'service_center.freezed.dart';
part 'service_center.g.dart';

@freezed
abstract class ServiceCenter with _$ServiceCenter {
  const factory ServiceCenter({
    @JsonKey(name: 'branch_name') String? branchName,
    @JsonKey(name: 'student') Student? student,
    @JsonKey(name: 'student_pc_services')
    List<StudentPcServices>? studentPcServices,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'status') ServiceCenterStatus? status,
    @JsonKey(name: 'branch_id') int? branchId,
    @JsonKey(name: 'responsible_user_id') int? responsibleUserId,
    User? user,
    @JsonKey(name: 'received_at') String? receivedAt,
    @JsonKey(name: 'returned_at') String? returnedAt,
  }) = _ServiceCenter;

  factory ServiceCenter.fromJson(Map<String, Object?> json) =>
      _$ServiceCenterFromJson(json);
}

@freezed
abstract class Student with _$Student {
  const factory Student({
    @JsonKey(name: 'group') Group? group,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'group_role') String? groupRole,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'lead_id') int? leadId,
    @JsonKey(name: 'auto_activate_lesson') int? autoActivateLesson,
    @JsonKey(name: 'middle_rating') String? middleRating,
    @JsonKey(name: 'coworking_access_last_date')
    String? coworkingAccessLastDate,
    @JsonKey(name: 'video_access_last_date') String? videoAccessLastDate,
    @JsonKey(name: 'access_to_video') bool? accessToVideo,
    @JsonKey(name: 'has_package') bool? hasPackage,
    @JsonKey(name: 'payment_type') String? paymentType,
    @JsonKey(name: 'partially_completed_date') String? partiallyCompletedDate,
    @JsonKey(name: 'partially_completed_lesson') int? partiallyCompletedLesson,
  }) = _Student;

  factory Student.fromJson(Map<String, Object?> json) =>
      _$StudentFromJson(json);
}

@freezed
abstract class Group with _$Group {
  const factory Group({
    @JsonKey(name: 'main_teacher_user_id') int? mainTeacherUserId,
    @JsonKey(name: 'course') Course? course,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'graduated_date') String? graduatedDate,
    @JsonKey(name: 'disbanded_date') String? disbandedDate,
    @JsonKey(name: 'has_double_lesson') bool? hasDoubleLesson,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'study_time') String? studyTime,
    @JsonKey(name: 'days') List<int>? days,
    @JsonKey(name: 'start_lesson_number') int? startLessonNumber,
    @JsonKey(name: 'video_deleted') bool? videoDeleted,
    @JsonKey(name: 'course_id') int? courseId,
    @JsonKey(name: 'launch_id') int? launchId,
    @JsonKey(name: 'cabinet_id') int? cabinetId,
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
abstract class StudentPcServices with _$StudentPcServices {
  const factory StudentPcServices({
    @JsonKey(name: 'maintenance_service_name') String? maintenanceServiceName,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'maintenance_service_id') int? maintenanceServiceId,
  }) = _StudentPcServices;

  factory StudentPcServices.fromJson(Map<String, Object?> json) =>
      _$StudentPcServicesFromJson(json);
}
