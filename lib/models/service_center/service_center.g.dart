// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceCenter _$ServiceCenterFromJson(Map<String, dynamic> json) =>
    _ServiceCenter(
      branchName: json['branch_name'] as String?,
      student: json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
      studentPcServices: (json['student_pc_services'] as List<dynamic>?)
          ?.map((e) => StudentPcServices.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdById: (json['created_by_id'] as num?)?.toInt(),
      updatedById: (json['updated_by_id'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
      branchId: (json['branch_id'] as num?)?.toInt(),
      responsibleUserId: (json['responsible_user_id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      receivedAt: json['received_at'] as String?,
      returnedAt: json['returned_at'] as String?,
    );

Map<String, dynamic> _$ServiceCenterToJson(_ServiceCenter instance) =>
    <String, dynamic>{
      'branch_name': instance.branchName,
      'student': instance.student,
      'student_pc_services': instance.studentPcServices,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by_id': instance.createdById,
      'updated_by_id': instance.updatedById,
      'id': instance.id,
      'status': instance.status,
      'branch_id': instance.branchId,
      'responsible_user_id': instance.responsibleUserId,
      'user': instance.user,
      'received_at': instance.receivedAt,
      'returned_at': instance.returnedAt,
    };

_Student _$StudentFromJson(Map<String, dynamic> json) => _Student(
  group: json['group'] == null
      ? null
      : Group.fromJson(json['group'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  status: json['status'] as String?,
  groupRole: json['group_role'] as String?,
  format: json['format'] as String?,
  leadId: (json['lead_id'] as num?)?.toInt(),
  autoActivateLesson: (json['auto_activate_lesson'] as num?)?.toInt(),
  middleRating: json['middle_rating'] as String?,
  coworkingAccessLastDate: json['coworking_access_last_date'] as String?,
  videoAccessLastDate: json['video_access_last_date'] as String?,
  accessToVideo: json['access_to_video'] as bool?,
  hasPackage: json['has_package'] as bool?,
  paymentType: json['payment_type'] as String?,
  partiallyCompletedDate: json['partially_completed_date'] as String?,
  partiallyCompletedLesson: (json['partially_completed_lesson'] as num?)
      ?.toInt(),
);

Map<String, dynamic> _$StudentToJson(_Student instance) => <String, dynamic>{
  'group': instance.group,
  'id': instance.id,
  'user_id': instance.userId,
  'status': instance.status,
  'group_role': instance.groupRole,
  'format': instance.format,
  'lead_id': instance.leadId,
  'auto_activate_lesson': instance.autoActivateLesson,
  'middle_rating': instance.middleRating,
  'coworking_access_last_date': instance.coworkingAccessLastDate,
  'video_access_last_date': instance.videoAccessLastDate,
  'access_to_video': instance.accessToVideo,
  'has_package': instance.hasPackage,
  'payment_type': instance.paymentType,
  'partially_completed_date': instance.partiallyCompletedDate,
  'partially_completed_lesson': instance.partiallyCompletedLesson,
};

_Group _$GroupFromJson(Map<String, dynamic> json) => _Group(
  mainTeacherUserId: (json['main_teacher_user_id'] as num?)?.toInt(),
  course: json['course'] == null
      ? null
      : Course.fromJson(json['course'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  format: json['format'] as String?,
  type: json['type'] as String?,
  startDate: json['start_date'] as String?,
  graduatedDate: json['graduated_date'] as String?,
  disbandedDate: json['disbanded_date'] as String?,
  hasDoubleLesson: json['has_double_lesson'] as bool?,
  status: json['status'] as String?,
  studyTime: json['study_time'] as String?,
  days: (json['days'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  startLessonNumber: (json['start_lesson_number'] as num?)?.toInt(),
  videoDeleted: json['video_deleted'] as bool?,
  courseId: (json['course_id'] as num?)?.toInt(),
  launchId: (json['launch_id'] as num?)?.toInt(),
  cabinetId: (json['cabinet_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$GroupToJson(_Group instance) => <String, dynamic>{
  'main_teacher_user_id': instance.mainTeacherUserId,
  'course': instance.course,
  'id': instance.id,
  'format': instance.format,
  'type': instance.type,
  'start_date': instance.startDate,
  'graduated_date': instance.graduatedDate,
  'disbanded_date': instance.disbandedDate,
  'has_double_lesson': instance.hasDoubleLesson,
  'status': instance.status,
  'study_time': instance.studyTime,
  'days': instance.days,
  'start_lesson_number': instance.startLessonNumber,
  'video_deleted': instance.videoDeleted,
  'course_id': instance.courseId,
  'launch_id': instance.launchId,
  'cabinet_id': instance.cabinetId,
};

_Course _$CourseFromJson(Map<String, dynamic> json) => _Course(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  banner: json['banner'] as String?,
  adsBanner: json['ads_banner'] as String?,
  color: json['color'] as String?,
  slug: json['slug'] as String?,
  language: json['language'] as String?,
);

Map<String, dynamic> _$CourseToJson(_Course instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'banner': instance.banner,
  'ads_banner': instance.adsBanner,
  'color': instance.color,
  'slug': instance.slug,
  'language': instance.language,
};

_StudentPcServices _$StudentPcServicesFromJson(Map<String, dynamic> json) =>
    _StudentPcServices(
      maintenanceServiceName: json['maintenance_service_name'] as String?,
      id: (json['id'] as num?)?.toInt(),
      maintenanceServiceId: (json['maintenance_service_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StudentPcServicesToJson(_StudentPcServices instance) =>
    <String, dynamic>{
      'maintenance_service_name': instance.maintenanceServiceName,
      'id': instance.id,
      'maintenance_service_id': instance.maintenanceServiceId,
    };
