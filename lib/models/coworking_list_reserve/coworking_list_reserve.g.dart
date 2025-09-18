// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coworking_list_reserve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoworkingListReserve _$CoworkingListReserveFromJson(
  Map<String, dynamic> json,
) => _CoworkingListReserve(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdById: (json['created_by_id'] as num?)?.toInt(),
  updatedById: (json['updated_by_id'] as num?)?.toInt(),
  student: json['student'] == null
      ? null
      : Student.fromJson(json['student'] as Map<String, dynamic>),
  seat: json['seat'] == null
      ? null
      : Seat.fromJson(json['seat'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  coworkerUserId: (json['coworker_user_id'] as num?)?.toInt(),
  coworker: json['coworker'] == null
      ? null
      : User.fromJson(json['coworker'] as Map<String, dynamic>),
  teacherUserId: (json['teacher_user_id'] as num?)?.toInt(),
  teacher: json['teacher'] == null
      ? null
      : User.fromJson(json['teacher'] as Map<String, dynamic>),
  date: json['date'] as String?,
  reserveTime: json['reserve_time'] as String?,
  arrivalTime: json['arrival_time'] as String?,
  leavingTime: json['leaving_time'] as String?,
  currentLessonNumber: (json['current_lesson_number'] as num?)?.toInt(),
  status: $enumDecodeNullable(_$StatusCoworkingReserveEnumMap, json['status']),
  noSeatReservation: json['no_seat_reservation'] as bool?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$CoworkingListReserveToJson(
  _CoworkingListReserve instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by_id': instance.createdById,
  'updated_by_id': instance.updatedById,
  'student': instance.student,
  'seat': instance.seat,
  'id': instance.id,
  'coworker_user_id': instance.coworkerUserId,
  'coworker': instance.coworker,
  'teacher_user_id': instance.teacherUserId,
  'teacher': instance.teacher,
  'date': instance.date,
  'reserve_time': instance.reserveTime,
  'arrival_time': instance.arrivalTime,
  'leaving_time': instance.leavingTime,
  'current_lesson_number': instance.currentLessonNumber,
  'status': _$StatusCoworkingReserveEnumMap[instance.status],
  'no_seat_reservation': instance.noSeatReservation,
  'note': instance.note,
};

const _$StatusCoworkingReserveEnumMap = {
  StatusCoworkingReserve.reserve: 'reserve',
  StatusCoworkingReserve.came: 'came',
  StatusCoworkingReserve.gone: 'gone',
  StatusCoworkingReserve.notCome: 'not_come',
};

_Student _$StudentFromJson(Map<String, dynamic> json) => _Student(
  hasPackage: json['has_package'] as bool?,
  group: json['group'] == null
      ? null
      : Group.fromJson(json['group'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$StudentToJson(_Student instance) => <String, dynamic>{
  'has_package': instance.hasPackage,
  'group': instance.group,
  'id': instance.id,
  'user_id': instance.userId,
};

_Group _$GroupFromJson(Map<String, dynamic> json) => _Group(
  course: json['course'] == null
      ? null
      : Course.fromJson(json['course'] as Map<String, dynamic>),
  version: json['version'] == null
      ? null
      : Version.fromJson(json['version'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  days: (json['days'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$GroupToJson(_Group instance) => <String, dynamic>{
  'course': instance.course,
  'version': instance.version,
  'id': instance.id,
  'days': instance.days,
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

_Version _$VersionFromJson(Map<String, dynamic> json) => _Version(
  blockCount: (json['block_count'] as num?)?.toInt(),
  blockLessonCount: (json['block_lesson_count'] as num?)?.toInt(),
  lessonCount: (json['lesson_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$VersionToJson(_Version instance) => <String, dynamic>{
  'block_count': instance.blockCount,
  'block_lesson_count': instance.blockLessonCount,
  'lesson_count': instance.lessonCount,
};

_Seat _$SeatFromJson(Map<String, dynamic> json) => _Seat(
  id: (json['id'] as num?)?.toInt(),
  cabinetId: (json['cabinet_id'] as num?)?.toInt(),
  type: json['type'] as String?,
  number: (json['number'] as num?)?.toInt(),
  status: json['status'] as String?,
  cabinet: json['cabinet'] == null
      ? null
      : Cabinet.fromJson(json['cabinet'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SeatToJson(_Seat instance) => <String, dynamic>{
  'id': instance.id,
  'cabinet_id': instance.cabinetId,
  'type': instance.type,
  'number': instance.number,
  'status': instance.status,
  'cabinet': instance.cabinet,
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
