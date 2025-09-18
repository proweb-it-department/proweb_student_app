import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user_skill.freezed.dart';
part 'user_skill.g.dart';

@freezed
abstract class UserSkill with _$UserSkill {
  const factory UserSkill({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'skill_id') int? skillId,
    @JsonKey(name: 'skill') Skill? skill,
  }) = _UserSkill;

  factory UserSkill.fromJson(Map<String, Object?> json) =>
      _$UserSkillFromJson(json);
}

@freezed
abstract class Skill with _$Skill {
  const factory Skill({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'logo') String? logo,
  }) = _Skill;

  factory Skill.fromJson(Map<String, Object?> json) => _$SkillFromJson(json);
}
