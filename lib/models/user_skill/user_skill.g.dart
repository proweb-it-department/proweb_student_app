// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSkill _$UserSkillFromJson(Map<String, dynamic> json) => _UserSkill(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  score: (json['score'] as num?)?.toInt(),
  skillId: (json['skill_id'] as num?)?.toInt(),
  skill: json['skill'] == null
      ? null
      : Skill.fromJson(json['skill'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserSkillToJson(_UserSkill instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'id': instance.id,
      'user_id': instance.userId,
      'score': instance.score,
      'skill_id': instance.skillId,
      'skill': instance.skill,
    };

_Skill _$SkillFromJson(Map<String, dynamic> json) => _Skill(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  color: json['color'] as String?,
  logo: json['logo'] as String?,
);

Map<String, dynamic> _$SkillToJson(_Skill instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': instance.color,
  'logo': instance.logo,
};
