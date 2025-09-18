// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_groups_for_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoryGroupsForStudent _$StoryGroupsForStudentFromJson(
  Map<String, dynamic> json,
) => _StoryGroupsForStudent(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdById: (json['created_by_id'] as num?)?.toInt(),
  updatedById: (json['updated_by_id'] as num?)?.toInt(),
  language: json['language'] as String?,
  stories: (json['stories'] as List<dynamic>?)
      ?.map((e) => Stories.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  finish: json['finish'] as String?,
  start: json['start'] as String?,
  isPremiumOnly: json['is_premium_only'] as bool?,
  preview: json['preview'] as String?,
  type: $enumDecodeNullable(_$SoryTypeEnumMap, json['type']),
);

Map<String, dynamic> _$StoryGroupsForStudentToJson(
  _StoryGroupsForStudent instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by_id': instance.createdById,
  'updated_by_id': instance.updatedById,
  'language': instance.language,
  'stories': instance.stories,
  'id': instance.id,
  'title': instance.title,
  'finish': instance.finish,
  'start': instance.start,
  'is_premium_only': instance.isPremiumOnly,
  'preview': instance.preview,
  'type': _$SoryTypeEnumMap[instance.type],
};

const _$SoryTypeEnumMap = {
  SoryType.staff: 'staff',
  SoryType.student: 'student',
};

_Stories _$StoriesFromJson(Map<String, dynamic> json) => _Stories(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdById: (json['created_by_id'] as num?)?.toInt(),
  updatedById: (json['updated_by_id'] as num?)?.toInt(),
  pollOptions: (json['poll_options'] as List<dynamic>?)
      ?.map((e) => PollOptions.fromJson(e as Map<String, dynamic>))
      .toList(),
  actions: (json['actions'] as List<dynamic>?)
      ?.map((e) => Actions.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: (json['id'] as num?)?.toInt(),
  storyGroupId: (json['story_group_id'] as num?)?.toInt(),
  contentType: $enumDecodeNullable(
    _$SoryContentTypeEnumMap,
    json['content_type'],
  ),
  content: json['content'] as String?,
  backgroundColor: json['background_color'] as String?,
  buttonText: json['button_text'] as String?,
  buttonUrl: json['button_url'] as String?,
  duration: (json['duration'] as num?)?.toInt(),
  question: json['question'] as String?,
  poll: json['poll'] as bool?,
  position: (json['position'] as num?)?.toInt(),
);

Map<String, dynamic> _$StoriesToJson(_Stories instance) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by_id': instance.createdById,
  'updated_by_id': instance.updatedById,
  'poll_options': instance.pollOptions,
  'actions': instance.actions,
  'id': instance.id,
  'story_group_id': instance.storyGroupId,
  'content_type': _$SoryContentTypeEnumMap[instance.contentType],
  'content': instance.content,
  'background_color': instance.backgroundColor,
  'button_text': instance.buttonText,
  'button_url': instance.buttonUrl,
  'duration': instance.duration,
  'question': instance.question,
  'poll': instance.poll,
  'position': instance.position,
};

const _$SoryContentTypeEnumMap = {
  SoryContentType.photo: 'photo',
  SoryContentType.video: 'video',
  SoryContentType.none: 'none',
};

_PollOptions _$PollOptionsFromJson(Map<String, dynamic> json) => _PollOptions(
  id: (json['id'] as num?)?.toInt(),
  text: json['text'] as String?,
  position: (json['position'] as num?)?.toInt(),
);

Map<String, dynamic> _$PollOptionsToJson(_PollOptions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'position': instance.position,
    };

_Actions _$ActionsFromJson(Map<String, dynamic> json) => _Actions(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdById: (json['created_by_id'] as num?)?.toInt(),
  updatedById: (json['updated_by_id'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  liked: json['liked'] as bool?,
  followedLink: json['followed_link'] as bool?,
  optionId: (json['option_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$ActionsToJson(_Actions instance) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by_id': instance.createdById,
  'updated_by_id': instance.updatedById,
  'id': instance.id,
  'user_id': instance.userId,
  'liked': instance.liked,
  'followed_link': instance.followedLink,
  'option_id': instance.optionId,
};
