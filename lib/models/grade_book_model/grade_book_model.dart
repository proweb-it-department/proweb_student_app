import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'grade_book_model.freezed.dart';
part 'grade_book_model.g.dart';

@freezed
abstract class GradeBookModel with _$GradeBookModel {
  const factory GradeBookModel({
    required int studentid,
    required double score,
    required List<GradeBookModelWork> works,
  }) = _GradeBookModel;

  factory GradeBookModel.fromJson(Map<String, Object?> json) =>
      _$GradeBookModelFromJson(json);
}

@freezed
abstract class GradeBookModelWork with _$GradeBookModelWork {
  const factory GradeBookModelWork({
    required int workId,
    required String name,
    required String createdate,
    required GradeBookWorkType workType,
    required GradeBookWorkStudentType studentType,
  }) = _GradeBookModelWork;

  factory GradeBookModelWork.fromJson(Map<String, Object?> json) =>
      _$GradeBookModelWorkFromJson(json);
}
