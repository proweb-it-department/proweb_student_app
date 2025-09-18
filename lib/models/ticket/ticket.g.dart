// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Ticket _$TicketFromJson(Map<String, dynamic> json) => _Ticket(
  id: (json['id'] as num?)?.toInt(),
  openedUser: json['opened_user'] == null
      ? null
      : UserIdDefault.fromJson(json['opened_user'] as Map<String, dynamic>),
  closedUser: json['closed_user'] == null
      ? null
      : UserIdDefault.fromJson(json['closed_user'] as Map<String, dynamic>),
  responsibleUser: json['responsible_user'] == null
      ? null
      : UserIdDefault.fromJson(
          json['responsible_user'] as Map<String, dynamic>,
        ),
  type: $enumDecodeNullable(_$FeadbackTypeEnumMap, json['type']),
  status: $enumDecodeNullable(_$FeadbackStatusEnumMap, json['status']),
  openDate: json['open_date'] as String?,
  closedDate: json['closed_date'] as String?,
  text: json['text'] as String?,
  score: (json['score'] as num?)?.toInt(),
  closingOffers: (json['closing_offers'] as List<dynamic>?)
      ?.map((e) => ClosingOffers.fromJson(e as Map<String, dynamic>))
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tags.fromJson(e as Map<String, dynamic>))
      .toList(),
  studentLessonRelation: json['student_lesson_relation'] == null
      ? null
      : StudentLessonRelation.fromJson(
          json['student_lesson_relation'] as Map<String, dynamic>,
        ),
  materialRelation: json['material_relation'] == null
      ? null
      : MaterialRelation.fromJson(
          json['material_relation'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TicketToJson(_Ticket instance) => <String, dynamic>{
  'id': instance.id,
  'opened_user': instance.openedUser,
  'closed_user': instance.closedUser,
  'responsible_user': instance.responsibleUser,
  'type': _$FeadbackTypeEnumMap[instance.type],
  'status': _$FeadbackStatusEnumMap[instance.status],
  'open_date': instance.openDate,
  'closed_date': instance.closedDate,
  'text': instance.text,
  'score': instance.score,
  'closing_offers': instance.closingOffers,
  'tags': instance.tags,
  'student_lesson_relation': instance.studentLessonRelation,
  'material_relation': instance.materialRelation,
};

const _$FeadbackTypeEnumMap = {
  FeadbackType.praise: 'praise',
  FeadbackType.offer: 'offer',
  FeadbackType.complaint: 'complaint',
  FeadbackType.softwareError: 'software_error',
};

const _$FeadbackStatusEnumMap = {
  FeadbackStatus.open: 'open',
  FeadbackStatus.closed: 'closed',
};

_ClosingOffers _$ClosingOffersFromJson(Map<String, dynamic> json) =>
    _ClosingOffers(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$FeadbackOfferStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$ClosingOffersToJson(_ClosingOffers instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'status': _$FeadbackOfferStatusEnumMap[instance.status],
    };

const _$FeadbackOfferStatusEnumMap = {
  FeadbackOfferStatus.proposed: 'proposed',
  FeadbackOfferStatus.accepted: 'accepted',
  FeadbackOfferStatus.rejected: 'rejected',
};

_Tags _$TagsFromJson(Map<String, dynamic> json) => _Tags(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdById: (json['created_by_id'] as num?)?.toInt(),
  updatedById: (json['updated_by_id'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  ticketId: (json['ticket_id'] as num?)?.toInt(),
  tag: json['tag'] == null
      ? null
      : Tag.fromJson(json['tag'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TagsToJson(_Tags instance) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by_id': instance.createdById,
  'updated_by_id': instance.updatedById,
  'id': instance.id,
  'ticket_id': instance.ticketId,
  'tag': instance.tag,
};

_Tag _$TagFromJson(Map<String, dynamic> json) => _Tag(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  scores: (json['scores'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  archive: json['archive'] as bool?,
  accessStudent: json['access_student'] as bool?,
);

Map<String, dynamic> _$TagToJson(_Tag instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'scores': instance.scores,
  'archive': instance.archive,
  'access_student': instance.accessStudent,
};

_StudentLessonRelation _$StudentLessonRelationFromJson(
  Map<String, dynamic> json,
) => _StudentLessonRelation(
  id: (json['id'] as num?)?.toInt(),
  groupLessonId: (json['group_lesson_id'] as num?)?.toInt(),
  studentId: (json['student_id'] as num?)?.toInt(),
  accessToLesson: json['access_to_lesson'] as bool?,
  visited: json['visited'] as bool?,
  visitedType: json['visited_type'] as String?,
  writeOffFormat: json['write_off_format'] as String?,
  score: (json['score'] as num?)?.toInt(),
  note: json['note'] as String?,
  accessToVideo: json['access_to_video'] as bool?,
  groupLesson: json['group_lesson'] == null
      ? null
      : GroupLesson.fromJson(json['group_lesson'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentLessonRelationToJson(
  _StudentLessonRelation instance,
) => <String, dynamic>{
  'id': instance.id,
  'group_lesson_id': instance.groupLessonId,
  'student_id': instance.studentId,
  'access_to_lesson': instance.accessToLesson,
  'visited': instance.visited,
  'visited_type': instance.visitedType,
  'write_off_format': instance.writeOffFormat,
  'score': instance.score,
  'note': instance.note,
  'access_to_video': instance.accessToVideo,
  'group_lesson': instance.groupLesson,
};

_GroupLesson _$GroupLessonFromJson(Map<String, dynamic> json) => _GroupLesson(
  id: (json['id'] as num?)?.toInt(),
  groupId: (json['group_id'] as num?)?.toInt(),
  type: json['type'] as String?,
  status: json['status'] as String?,
  rescheduledReason: json['rescheduled_reason'] as String?,
  lessonNumber: (json['lesson_number'] as num?)?.toInt(),
  middleRating: json['middle_rating'] as String?,
  unitedId: (json['united_id'] as num?)?.toInt(),
  videos: (json['videos'] as List<dynamic>?)
      ?.map((e) => Videos.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GroupLessonToJson(_GroupLesson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'type': instance.type,
      'status': instance.status,
      'rescheduled_reason': instance.rescheduledReason,
      'lesson_number': instance.lessonNumber,
      'middle_rating': instance.middleRating,
      'united_id': instance.unitedId,
      'videos': instance.videos,
    };

_Videos _$VideosFromJson(Map<String, dynamic> json) => _Videos(
  id: (json['id'] as num?)?.toInt(),
  lessonId: (json['lesson_id'] as num?)?.toInt(),
  videoKey: json['video_key'] as String?,
);

Map<String, dynamic> _$VideosToJson(_Videos instance) => <String, dynamic>{
  'id': instance.id,
  'lesson_id': instance.lessonId,
  'video_key': instance.videoKey,
};

_MaterialRelation _$MaterialRelationFromJson(Map<String, dynamic> json) =>
    _MaterialRelation(
      material: json['material'] == null
          ? null
          : Material.fromJson(json['material'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      assessment: (json['assessment'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MaterialRelationToJson(_MaterialRelation instance) =>
    <String, dynamic>{
      'material': instance.material,
      'id': instance.id,
      'assessment': instance.assessment,
    };

_Material _$MaterialFromJson(Map<String, dynamic> json) => _Material(
  module: json['module'] == null
      ? null
      : Module.fromJson(json['module'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$MaterialToJson(_Material instance) => <String, dynamic>{
  'module': instance.module,
  'id': instance.id,
  'name': instance.name,
};

_Module _$ModuleFromJson(Map<String, dynamic> json) => _Module(
  product: json['product'] == null
      ? null
      : Product.fromJson(json['product'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$ModuleToJson(_Module instance) => <String, dynamic>{
  'product': instance.product,
  'id': instance.id,
  'name': instance.name,
};

_Product _$ProductFromJson(Map<String, dynamic> json) =>
    _Product(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
