import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
abstract class Ticket with _$Ticket {
  const factory Ticket({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'opened_user') UserIdDefault? openedUser,
    @JsonKey(name: 'closed_user') UserIdDefault? closedUser,
    @JsonKey(name: 'responsible_user') UserIdDefault? responsibleUser,
    @JsonKey(name: 'type') FeadbackType? type,
    @JsonKey(name: 'status') FeadbackStatus? status,
    @JsonKey(name: 'open_date') String? openDate,
    @JsonKey(name: 'closed_date') String? closedDate,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'closing_offers') List<ClosingOffers>? closingOffers,
    @JsonKey(name: 'tags') List<Tags>? tags,
    @JsonKey(name: 'student_lesson_relation')
    StudentLessonRelation? studentLessonRelation,
    @JsonKey(name: 'material_relation') MaterialRelation? materialRelation,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, Object?> json) => _$TicketFromJson(json);
}

@freezed
abstract class ClosingOffers with _$ClosingOffers {
  const factory ClosingOffers({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'status') FeadbackOfferStatus? status,
  }) = _ClosingOffers;

  factory ClosingOffers.fromJson(Map<String, Object?> json) =>
      _$ClosingOffersFromJson(json);
}

@freezed
abstract class Tags with _$Tags {
  const factory Tags({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'ticket_id') int? ticketId,
    @JsonKey(name: 'tag') Tag? tag,
  }) = _Tags;

  factory Tags.fromJson(Map<String, Object?> json) => _$TagsFromJson(json);
}

@freezed
abstract class Tag with _$Tag {
  const factory Tag({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'scores') List<int>? scores,
    @JsonKey(name: 'archive') bool? archive,
    @JsonKey(name: 'access_student') bool? accessStudent,
  }) = _Tag;

  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);
}

@freezed
abstract class StudentLessonRelation with _$StudentLessonRelation {
  const factory StudentLessonRelation({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'group_lesson_id') int? groupLessonId,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'access_to_lesson') bool? accessToLesson,
    @JsonKey(name: 'visited') bool? visited,
    @JsonKey(name: 'visited_type') String? visitedType,
    @JsonKey(name: 'write_off_format') String? writeOffFormat,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'access_to_video') bool? accessToVideo,
    @JsonKey(name: 'group_lesson') GroupLesson? groupLesson,
  }) = _StudentLessonRelation;

  factory StudentLessonRelation.fromJson(Map<String, Object?> json) =>
      _$StudentLessonRelationFromJson(json);
}

@freezed
abstract class GroupLesson with _$GroupLesson {
  const factory GroupLesson({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'group_id') int? groupId,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'rescheduled_reason') String? rescheduledReason,
    @JsonKey(name: 'lesson_number') int? lessonNumber,
    @JsonKey(name: 'middle_rating') String? middleRating,
    @JsonKey(name: 'united_id') int? unitedId,
    @JsonKey(name: 'videos') List<Videos>? videos,
  }) = _GroupLesson;

  factory GroupLesson.fromJson(Map<String, Object?> json) =>
      _$GroupLessonFromJson(json);
}

@freezed
abstract class Videos with _$Videos {
  const factory Videos({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'lesson_id') int? lessonId,
    @JsonKey(name: 'video_key') String? videoKey,
  }) = _Videos;

  factory Videos.fromJson(Map<String, Object?> json) => _$VideosFromJson(json);
}

@freezed
abstract class MaterialRelation with _$MaterialRelation {
  const factory MaterialRelation({
    @JsonKey(name: 'material') Material? material,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'assessment') int? assessment,
  }) = _MaterialRelation;

  factory MaterialRelation.fromJson(Map<String, Object?> json) =>
      _$MaterialRelationFromJson(json);
}

@freezed
abstract class Material with _$Material {
  const factory Material({
    @JsonKey(name: 'module') Module? module,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Material;

  factory Material.fromJson(Map<String, Object?> json) =>
      _$MaterialFromJson(json);
}

@freezed
abstract class Module with _$Module {
  const factory Module({
    @JsonKey(name: 'product') Product? product,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Module;

  factory Module.fromJson(Map<String, Object?> json) => _$ModuleFromJson(json);
}

@freezed
abstract class Product with _$Product {
  const factory Product({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
