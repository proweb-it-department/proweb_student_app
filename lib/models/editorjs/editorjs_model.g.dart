// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editorjs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditorJsBlock _$EditorJsBlockFromJson(Map<String, dynamic> json) =>
    _EditorJsBlock(
      id: json['id'] as String,
      type: json['type'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$EditorJsBlockToJson(_EditorJsBlock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'data': instance.data,
    };

_HeaderData _$HeaderDataFromJson(Map<String, dynamic> json) => _HeaderData(
  text: json['text'] as String,
  level: (json['level'] as num).toInt(),
);

Map<String, dynamic> _$HeaderDataToJson(_HeaderData instance) =>
    <String, dynamic>{'text': instance.text, 'level': instance.level};

_ParagraphData _$ParagraphDataFromJson(Map<String, dynamic> json) =>
    _ParagraphData(text: json['text'] as String);

Map<String, dynamic> _$ParagraphDataToJson(_ParagraphData instance) =>
    <String, dynamic>{'text': instance.text};

_ListData _$ListDataFromJson(Map<String, dynamic> json) => _ListData(
  items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
  style: json['style'] as String,
);

Map<String, dynamic> _$ListDataToJson(_ListData instance) => <String, dynamic>{
  'items': instance.items,
  'style': instance.style,
};

_CodeData _$CodeDataFromJson(Map<String, dynamic> json) => _CodeData(
  code: json['code'] as String,
  languageCode: json['languageCode'] as String,
);

Map<String, dynamic> _$CodeDataToJson(_CodeData instance) => <String, dynamic>{
  'code': instance.code,
  'languageCode': instance.languageCode,
};
