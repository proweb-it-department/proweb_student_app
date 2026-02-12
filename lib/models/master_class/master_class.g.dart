// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MasterClass _$MasterClassFromJson(Map<String, dynamic> json) => _MasterClass(
  language: json['language'] as String?,
  cabinet: json['cabinet'] == null
      ? null
      : Cabinet.fromJson(json['cabinet'] as Map<String, dynamic>),
  speakers: (json['speakers'] as List<dynamic>?)
      ?.map((e) => Speakers.fromJson(e as Map<String, dynamic>))
      .toList(),
  courses: (json['courses'] as List<dynamic>?)
      ?.map((e) => Courses.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  venueName: json['venue_name'] as String?,
  venueCapacity: (json['venue_capacity'] as num?)?.toInt(),
  banner: json['banner'] as String?,
  description: json['description'] as String?,
  datetime: json['datetime'] as String?,
  status: $enumDecodeNullable(_$MasterClassStatusEnumMap, json['status']),
  videoKey: json['video_key'] as String?,
  isPremiumOnly: json['is_premium_only'] as bool?,
  isPremiumOnlyWatch: json['is_premium_only_watch'] as bool?,
);

Map<String, dynamic> _$MasterClassToJson(_MasterClass instance) =>
    <String, dynamic>{
      'language': instance.language,
      'cabinet': instance.cabinet,
      'speakers': instance.speakers,
      'courses': instance.courses,
      'id': instance.id,
      'name': instance.name,
      'venue_name': instance.venueName,
      'venue_capacity': instance.venueCapacity,
      'banner': instance.banner,
      'description': instance.description,
      'datetime': instance.datetime,
      'status': _$MasterClassStatusEnumMap[instance.status],
      'video_key': instance.videoKey,
      'is_premium_only': instance.isPremiumOnly,
      'is_premium_only_watch': instance.isPremiumOnlyWatch,
    };

const _$MasterClassStatusEnumMap = {
  MasterClassStatus.draft: 'draft',
  MasterClassStatus.active: 'active',
  MasterClassStatus.archive: 'archive',
  MasterClassStatus.completed: 'completed',
};

_Cabinet _$CabinetFromJson(Map<String, dynamic> json) => _Cabinet(
  branch: json['branch'] == null
      ? null
      : Branch.fromJson(json['branch'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  type: json['type'] as String?,
  capacity: (json['capacity'] as num?)?.toInt(),
  description: json['description'] as String?,
  status: json['status'] as String?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$CabinetToJson(_Cabinet instance) => <String, dynamic>{
  'branch': instance.branch,
  'id': instance.id,
  'name': instance.name,
  'type': instance.type,
  'capacity': instance.capacity,
  'description': instance.description,
  'status': instance.status,
  'note': instance.note,
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

_Speakers _$SpeakersFromJson(Map<String, dynamic> json) => _Speakers(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  name: json['name'] as String?,
);

Map<String, dynamic> _$SpeakersToJson(_Speakers instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'user': instance.user,
  'name': instance.name,
};

_Courses _$CoursesFromJson(Map<String, dynamic> json) => _Courses(
  course: json['course'] == null
      ? null
      : Course.fromJson(json['course'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
);

Map<String, dynamic> _$CoursesToJson(_Courses instance) => <String, dynamic>{
  'course': instance.course,
  'id': instance.id,
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
