// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupDetail _$GroupDetailFromJson(Map<String, dynamic> json) => _GroupDetail(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  format: json['format'] as String?,
  type: json['type'] as String?,
  startDate: json['start_date'] as String?,
  graduatedDate: json['graduated_date'] as String?,
  disbandedDate: json['disbanded_date'] as String?,
  hasDoubleLesson: json['has_double_lesson'] as bool?,
  status: $enumDecodeNullable(_$MyGroupStatusEnumMap, json['status']),
  studyTime: json['study_time'] as String?,
  days: (json['days'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  startLessonNumber: (json['start_lesson_number'] as num?)?.toInt(),
  course: json['course'] == null
      ? null
      : Course.fromJson(json['course'] as Map<String, dynamic>),
  version: json['version'] == null
      ? null
      : Version.fromJson(json['version'] as Map<String, dynamic>),
  cabinet: json['cabinet'] == null
      ? null
      : Cabinet.fromJson(json['cabinet'] as Map<String, dynamic>),
  launch: json['launch'] == null
      ? null
      : Launch.fromJson(json['launch'] as Map<String, dynamic>),
  mainTeacher: json['main_teacher'] == null
      ? null
      : MainUser.fromJson(json['main_teacher'] as Map<String, dynamic>),
  mainAdmin: json['main_admin'] == null
      ? null
      : MainUser.fromJson(json['main_admin'] as Map<String, dynamic>),
  lessons: (json['lessons'] as List<dynamic>?)
      ?.map((e) => Lessons.fromJson(e as Map<String, dynamic>))
      .toList(),
  schedules: (json['schedules'] as List<dynamic>?)
      ?.map((e) => Schedules.fromJson(e as Map<String, dynamic>))
      .toList(),
  discount: json['discount'] == null
      ? null
      : Discount.fromJson(json['discount'] as Map<String, dynamic>),
  onlineDiscount: json['online_discount'] == null
      ? null
      : OnlineDiscount.fromJson(
          json['online_discount'] as Map<String, dynamic>,
        ),
  courseVersion: json['course_version'] == null
      ? null
      : CourseVersion.fromJson(json['course_version'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GroupDetailToJson(_GroupDetail instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'format': instance.format,
      'type': instance.type,
      'start_date': instance.startDate,
      'graduated_date': instance.graduatedDate,
      'disbanded_date': instance.disbandedDate,
      'has_double_lesson': instance.hasDoubleLesson,
      'status': _$MyGroupStatusEnumMap[instance.status],
      'study_time': instance.studyTime,
      'days': instance.days,
      'start_lesson_number': instance.startLessonNumber,
      'course': instance.course,
      'version': instance.version,
      'cabinet': instance.cabinet,
      'launch': instance.launch,
      'main_teacher': instance.mainTeacher,
      'main_admin': instance.mainAdmin,
      'lessons': instance.lessons,
      'schedules': instance.schedules,
      'discount': instance.discount,
      'online_discount': instance.onlineDiscount,
      'course_version': instance.courseVersion,
    };

const _$MyGroupStatusEnumMap = {
  MyGroupStatus.draft: 'draft',
  MyGroupStatus.active: 'active',
  MyGroupStatus.archive: 'archive',
  MyGroupStatus.started: 'started',
  MyGroupStatus.disbanded: 'disbanded',
  MyGroupStatus.graduaded: 'graduaded',
};

_Course _$CourseFromJson(Map<String, dynamic> json) => _Course(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  color: json['color'] as String?,
  banner: json['banner'] as String?,
  language: json['language'] as String?,
  posters: (json['posters'] as List<dynamic>?)
      ?.map((e) => Posters.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CourseToJson(_Course instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'color': instance.color,
  'banner': instance.banner,
  'language': instance.language,
  'posters': instance.posters,
};

_Posters _$PostersFromJson(Map<String, dynamic> json) => _Posters(
  id: (json['id'] as num?)?.toInt(),
  courseId: (json['course_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$PostersToJson(_Posters instance) => <String, dynamic>{
  'id': instance.id,
  'course_id': instance.courseId,
  'name': instance.name,
  'image': instance.image,
};

_Version _$VersionFromJson(Map<String, dynamic> json) => _Version(
  versionId: (json['version_id'] as num?)?.toInt(),
  version: (json['version'] as num?)?.toInt(),
  versionNumber: (json['version_number'] as num?)?.toInt(),
  name: json['name'] as String?,
  lessonCount: (json['lesson_count'] as num?)?.toInt(),
  lessonDuration: (json['lesson_duration'] as num?)?.toInt(),
  blockCount: (json['block_count'] as num?)?.toInt(),
  blockLessonCount: (json['block_lesson_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$VersionToJson(_Version instance) => <String, dynamic>{
  'version_id': instance.versionId,
  'version': instance.version,
  'version_number': instance.versionNumber,
  'name': instance.name,
  'lesson_count': instance.lessonCount,
  'lesson_duration': instance.lessonDuration,
  'block_count': instance.blockCount,
  'block_lesson_count': instance.blockLessonCount,
};

_Cabinet _$CabinetFromJson(Map<String, dynamic> json) => _Cabinet(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  branchId: (json['branch_id'] as num?)?.toInt(),
  type: json['type'] as String?,
  capacity: (json['capacity'] as num?)?.toInt(),
  description: json['description'] as String?,
  status: json['status'] as String?,
  note: json['note'] as String?,
  branch: json['branch'] == null
      ? null
      : Branch.fromJson(json['branch'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CabinetToJson(_Cabinet instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'branch_id': instance.branchId,
  'type': instance.type,
  'capacity': instance.capacity,
  'description': instance.description,
  'status': instance.status,
  'note': instance.note,
  'branch': instance.branch,
};

_Branch _$BranchFromJson(Map<String, dynamic> json) => _Branch(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  country: json['country'] as String?,
  city: json['city'] as String?,
  street: json['street'] as String?,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$BranchToJson(_Branch instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'country': instance.country,
  'city': instance.city,
  'street': instance.street,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'status': instance.status,
};

_Launch _$LaunchFromJson(Map<String, dynamic> json) => _Launch(
  id: (json['id'] as num?)?.toInt(),
  assignedTo: (json['assigned_to'] as num?)?.toInt(),
);

Map<String, dynamic> _$LaunchToJson(_Launch instance) => <String, dynamic>{
  'id': instance.id,
  'assigned_to': instance.assignedTo,
};

_MainUser _$MainUserFromJson(Map<String, dynamic> json) => _MainUser(
  groupUserId: (json['group_user_id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MainUserToJson(_MainUser instance) => <String, dynamic>{
  'group_user_id': instance.groupUserId,
  'user_id': instance.userId,
  'user': instance.user,
};

_Lessons _$LessonsFromJson(Map<String, dynamic> json) => _Lessons(
  lessonId: (json['lesson_id'] as num?)?.toInt(),
  datetime: json['datetime'] as String?,
  status: json['status'] as String?,
  rescheduledReason: json['rescheduled_reason'] as String?,
  lessonNumber: (json['lesson_number'] as num?)?.toInt(),
);

Map<String, dynamic> _$LessonsToJson(_Lessons instance) => <String, dynamic>{
  'lesson_id': instance.lessonId,
  'datetime': instance.datetime,
  'status': instance.status,
  'rescheduled_reason': instance.rescheduledReason,
  'lesson_number': instance.lessonNumber,
};

_Schedules _$SchedulesFromJson(Map<String, dynamic> json) => _Schedules(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  day: (json['day'] as num?)?.toInt(),
  time: json['time'] as String?,
  cabinet: json['cabinet'] == null
      ? null
      : Cabinet.fromJson(json['cabinet'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SchedulesToJson(_Schedules instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'day': instance.day,
      'time': instance.time,
      'cabinet': instance.cabinet,
    };

_Discount _$DiscountFromJson(Map<String, dynamic> json) => _Discount(
  id: (json['id'] as num?)?.toInt(),
  uuid: json['uuid'] as String?,
  isGroup: json['is_group'] as bool?,
  discountPercent: json['discount_percent'] as String?,
  type: json['type'] as String?,
  amount: json['amount'] as String?,
  format: json['format'] as String?,
  description: json['description'] as String?,
  combine: json['combine'] == null
      ? null
      : Combine.fromJson(json['combine'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DiscountToJson(_Discount instance) => <String, dynamic>{
  'id': instance.id,
  'uuid': instance.uuid,
  'is_group': instance.isGroup,
  'discount_percent': instance.discountPercent,
  'type': instance.type,
  'amount': instance.amount,
  'format': instance.format,
  'description': instance.description,
  'combine': instance.combine,
};

_Combine _$CombineFromJson(Map<String, dynamic> json) => _Combine(
  additionalProp1: json['additionalProp1'] as String?,
  additionalProp2: json['additionalProp2'] as String?,
  additionalProp3: json['additionalProp3'] as String?,
);

Map<String, dynamic> _$CombineToJson(_Combine instance) => <String, dynamic>{
  'additionalProp1': instance.additionalProp1,
  'additionalProp2': instance.additionalProp2,
  'additionalProp3': instance.additionalProp3,
};

_OnlineDiscount _$OnlineDiscountFromJson(Map<String, dynamic> json) =>
    _OnlineDiscount(
      id: (json['id'] as num?)?.toInt(),
      uuid: json['uuid'] as String?,
      isGroup: json['is_group'] as bool?,
      discountPercent: json['discount_percent'] as String?,
      type: json['type'] as String?,
      amount: json['amount'] as String?,
      format: json['format'] as String?,
      description: json['description'] as String?,
      combine: json['combine'] == null
          ? null
          : Combine.fromJson(json['combine'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OnlineDiscountToJson(_OnlineDiscount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'is_group': instance.isGroup,
      'discount_percent': instance.discountPercent,
      'type': instance.type,
      'amount': instance.amount,
      'format': instance.format,
      'description': instance.description,
      'combine': instance.combine,
    };

_CourseVersion _$CourseVersionFromJson(Map<String, dynamic> json) =>
    _CourseVersion(
      versionId: (json['version_id'] as num?)?.toInt(),
      version: (json['version'] as num?)?.toInt(),
      versionNumber: (json['version_number'] as num?)?.toInt(),
      name: json['name'] as String?,
      lessonCount: (json['lesson_count'] as num?)?.toInt(),
      lessonDuration: (json['lesson_duration'] as num?)?.toInt(),
      blockCount: (json['block_count'] as num?)?.toInt(),
      blockLessonCount: (json['block_lesson_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CourseVersionToJson(_CourseVersion instance) =>
    <String, dynamic>{
      'version_id': instance.versionId,
      'version': instance.version,
      'version_number': instance.versionNumber,
      'name': instance.name,
      'lesson_count': instance.lessonCount,
      'lesson_duration': instance.lessonDuration,
      'block_count': instance.blockCount,
      'block_lesson_count': instance.blockLessonCount,
    };
