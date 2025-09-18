// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GradeBookModel _$GradeBookModelFromJson(Map<String, dynamic> json) =>
    _GradeBookModel(
      studentid: (json['studentid'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      works: (json['works'] as List<dynamic>)
          .map((e) => GradeBookModelWork.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GradeBookModelToJson(_GradeBookModel instance) =>
    <String, dynamic>{
      'studentid': instance.studentid,
      'score': instance.score,
      'works': instance.works,
    };

_GradeBookModelWork _$GradeBookModelWorkFromJson(Map<String, dynamic> json) =>
    _GradeBookModelWork(
      workId: (json['workId'] as num).toInt(),
      name: json['name'] as String,
      createdate: json['createdate'] as String,
      workType: $enumDecode(_$GradeBookWorkTypeEnumMap, json['workType']),
      studentType: $enumDecode(
        _$GradeBookWorkStudentTypeEnumMap,
        json['studentType'],
      ),
    );

Map<String, dynamic> _$GradeBookModelWorkToJson(_GradeBookModelWork instance) =>
    <String, dynamic>{
      'workId': instance.workId,
      'name': instance.name,
      'createdate': instance.createdate,
      'workType': _$GradeBookWorkTypeEnumMap[instance.workType]!,
      'studentType': _$GradeBookWorkStudentTypeEnumMap[instance.studentType]!,
    };

const _$GradeBookWorkTypeEnumMap = {
  GradeBookWorkType.work: 'work',
  GradeBookWorkType.testing: 'testing',
};

const _$GradeBookWorkStudentTypeEnumMap = {
  GradeBookWorkStudentType.passed: 'passed',
  GradeBookWorkStudentType.examination: 'examination',
  GradeBookWorkStudentType.didntpass: 'didntpass',
  GradeBookWorkStudentType.noconnection: 'noconnection',
  GradeBookWorkStudentType.none: 'none',
};
