import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/utils/enum/story_enums.dart';
part 'story_groups_for_student.freezed.dart';
part 'story_groups_for_student.g.dart';

@freezed
abstract class StoryGroupsForStudent with _$StoryGroupsForStudent {
  const factory StoryGroupsForStudent({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'stories') List<Stories>? stories,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'finish') String? finish,
    @JsonKey(name: 'start') String? start,
    @JsonKey(name: 'is_premium_only') bool? isPremiumOnly,
    @JsonKey(name: 'preview') String? preview,
    @JsonKey(name: 'type') SoryType? type,
  }) = _StoryGroupsForStudent;

  factory StoryGroupsForStudent.fromJson(Map<String, Object?> json) => _$StoryGroupsForStudentFromJson(json);
}

@freezed
abstract class Stories with _$Stories {
  const factory Stories({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'poll_options') List<PollOptions>? pollOptions,
    @JsonKey(name: 'actions') List<Actions>? actions,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'story_group_id') int? storyGroupId,
    @JsonKey(name: 'content_type') SoryContentType? contentType,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'background_color') String? backgroundColor,
    @JsonKey(name: 'button_text') String? buttonText,
    @JsonKey(name: 'button_url') String? buttonUrl,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'question') String? question,
    @JsonKey(name: 'poll') bool? poll,
    @JsonKey(name: 'position') int? position,
  }) = _Stories;

  factory Stories.fromJson(Map<String, Object?> json) => _$StoriesFromJson(json);
}

@freezed
abstract class PollOptions with _$PollOptions {
  const factory PollOptions({@JsonKey(name: 'id') int? id, @JsonKey(name: 'text') String? text, @JsonKey(name: 'position') int? position}) = _PollOptions;

  factory PollOptions.fromJson(Map<String, Object?> json) => _$PollOptionsFromJson(json);
}

@freezed
abstract class Actions with _$Actions {
  const factory Actions({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'liked') bool? liked,
    @JsonKey(name: 'followed_link') bool? followedLink,
    @JsonKey(name: 'option_id') int? optionId,
  }) = _Actions;

  factory Actions.fromJson(Map<String, Object?> json) => _$ActionsFromJson(json);
}
