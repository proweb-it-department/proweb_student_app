part of 'homework_relation_bloc.dart';

@freezed
class HomeworkRelationEvent with _$HomeworkRelationEvent {
  const factory HomeworkRelationEvent.started({
    required int relationId,
  }) = _Started;
  const factory HomeworkRelationEvent.reloadWS({
    required int relationId,
  }) = _HomeworkRelationReloadWs;
  const factory HomeworkRelationEvent.pass({
    required List<ModelFile> files,
    required List<String> links,
    String? note,
  }) = _HomeworkRelationPass;
  const factory HomeworkRelationEvent.createComment({
    required List<String> files,
    required String comment,
  }) = _HomeworkRelationComment;
}
