// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GlobalComment _$GlobalCommentFromJson(Map<String, dynamic> json) =>
    _GlobalComment(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      content: json['content'] as String?,
      isActive: json['is_active'] as bool?,
      parent: json['parent'] == null
          ? null
          : Parent.fromJson(json['parent'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => Files.fromJson(e as Map<String, dynamic>))
          .toList(),
      childrens: (json['childrens'] as List<dynamic>?)
          ?.map((e) => Childrens.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GlobalCommentToJson(_GlobalComment instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'content': instance.content,
      'is_active': instance.isActive,
      'parent': instance.parent,
      'files': instance.files,
      'childrens': instance.childrens,
    };

_Parent _$ParentFromJson(Map<String, dynamic> json) => _Parent(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  content: json['content'] as String?,
);

Map<String, dynamic> _$ParentToJson(_Parent instance) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'id': instance.id,
  'content': instance.content,
};

_Files _$FilesFromJson(Map<String, dynamic> json) =>
    _Files(id: (json['id'] as num?)?.toInt(), file: json['file'] as String?);

Map<String, dynamic> _$FilesToJson(_Files instance) => <String, dynamic>{
  'id': instance.id,
  'file': instance.file,
};

_Childrens _$ChildrensFromJson(Map<String, dynamic> json) => _Childrens(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  content: json['content'] as String?,
);

Map<String, dynamic> _$ChildrensToJson(_Childrens instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'content': instance.content,
    };
