// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_module_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaterialModuleItem _$MaterialModuleItemFromJson(Map<String, dynamic> json) =>
    _MaterialModuleItem(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdById: (json['created_by_id'] as num?)?.toInt(),
      updatedById: (json['updated_by_id'] as num?)?.toInt(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => Files.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Videos.fromJson(e as Map<String, dynamic>))
          .toList(),
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Questions.fromJson(e as Map<String, dynamic>))
          .toList(),
      module: json['module'] == null
          ? null
          : Module.fromJson(json['module'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      cover: json['cover'] as String?,
      position: (json['position'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      description: (json['description'] as List<dynamic>?)
          ?.map((e) => EditorJsBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$ModuleMaterialTypeEnumMap, json['type']),
      mentor: json['mentor'] as bool?,
      middleRating: json['middle_rating'] as String?,
    );

Map<String, dynamic> _$MaterialModuleItemToJson(_MaterialModuleItem instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by_id': instance.createdById,
      'updated_by_id': instance.updatedById,
      'files': instance.files,
      'videos': instance.videos,
      'questions': instance.questions,
      'module': instance.module,
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover,
      'position': instance.position,
      'duration': instance.duration,
      'description': instance.description,
      'type': _$ModuleMaterialTypeEnumMap[instance.type],
      'mentor': instance.mentor,
      'middle_rating': instance.middleRating,
    };

const _$ModuleMaterialTypeEnumMap = {
  ModuleMaterialType.text: 'text',
  ModuleMaterialType.video: 'video',
  ModuleMaterialType.test: 'test',
  ModuleMaterialType.practice: 'practice',
};

_Files _$FilesFromJson(Map<String, dynamic> json) => _Files(
  id: (json['id'] as num?)?.toInt(),
  materialId: (json['material_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  file: json['file'] as String?,
  position: (json['position'] as num?)?.toInt(),
);

Map<String, dynamic> _$FilesToJson(_Files instance) => <String, dynamic>{
  'id': instance.id,
  'material_id': instance.materialId,
  'name': instance.name,
  'file': instance.file,
  'position': instance.position,
};

_Videos _$VideosFromJson(Map<String, dynamic> json) => _Videos(
  id: (json['id'] as num?)?.toInt(),
  materialId: (json['material_id'] as num?)?.toInt(),
  slug: json['slug'] as String?,
  position: (json['position'] as num?)?.toInt(),
  video: json['video'] == null
      ? null
      : VideoModel.fromJson(json['video'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VideosToJson(_Videos instance) => <String, dynamic>{
  'id': instance.id,
  'material_id': instance.materialId,
  'slug': instance.slug,
  'position': instance.position,
  'video': instance.video,
};

_Questions _$QuestionsFromJson(Map<String, dynamic> json) => _Questions(
  answers: (json['answers'] as List<dynamic>?)
      ?.map((e) => Answers.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: (json['id'] as num?)?.toInt(),
  materialId: (json['material_id'] as num?)?.toInt(),
  text: json['text'] as String?,
  score: (json['score'] as num?)?.toInt(),
  image: json['image'] as String?,
  video: json['video'] as String?,
  multiselect: json['multiselect'] as bool?,
  position: (json['position'] as num?)?.toInt(),
);

Map<String, dynamic> _$QuestionsToJson(_Questions instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'id': instance.id,
      'material_id': instance.materialId,
      'text': instance.text,
      'score': instance.score,
      'image': instance.image,
      'video': instance.video,
      'multiselect': instance.multiselect,
      'position': instance.position,
    };

_Answers _$AnswersFromJson(Map<String, dynamic> json) => _Answers(
  id: (json['id'] as num?)?.toInt(),
  questionId: (json['question_id'] as num?)?.toInt(),
  text: json['text'] as String?,
  image: json['image'] as String?,
  video: json['video'] as String?,
  correct: json['correct'] as bool?,
);

Map<String, dynamic> _$AnswersToJson(_Answers instance) => <String, dynamic>{
  'id': instance.id,
  'question_id': instance.questionId,
  'text': instance.text,
  'image': instance.image,
  'video': instance.video,
  'correct': instance.correct,
};

_Module _$ModuleFromJson(Map<String, dynamic> json) => _Module(
  id: (json['id'] as num?)?.toInt(),
  productId: (json['product_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  position: (json['position'] as num?)?.toInt(),
  status: json['status'] as String?,
);

Map<String, dynamic> _$ModuleToJson(_Module instance) => <String, dynamic>{
  'id': instance.id,
  'product_id': instance.productId,
  'name': instance.name,
  'description': instance.description,
  'position': instance.position,
  'status': instance.status,
};
