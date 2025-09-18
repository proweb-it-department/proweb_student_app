part of 'homework_relation_bloc.dart';

@freezed
class HomeworkRelationState with _$HomeworkRelationState {
  const factory HomeworkRelationState.initial() = _Initial;
  const factory HomeworkRelationState.load() = _HomeworkRelationLoad;
  const factory HomeworkRelationState.error() = _HomeworkRelationEror;
  const factory HomeworkRelationState.complite({
    required HomeworkStudentRelationGroup relation,
    required HomeworkGroup work,
    required List<GlobalComment> comments,
    required bool isLoadComment,
  }) = _HomeworkRelationComplite;
}
