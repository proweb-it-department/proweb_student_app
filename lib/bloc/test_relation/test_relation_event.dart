part of 'test_relation_bloc.dart';

@freezed
class TestRelationEvent with _$TestRelationEvent {
  const factory TestRelationEvent.started({
    required int relationId,
  }) = _Started;
  const factory TestRelationEvent.reloadWS({
    required int relationId,
  }) = _TestRelationSendReloadWs;
  const factory TestRelationEvent.sendAnswer({
    required double totlaScore,
    required List<Map<String, dynamic>> answers,
    required int relationId,
  }) = _TestRelationSendAnswer;
  const factory TestRelationEvent.createComment({
    required List<String> files,
    required String comment,
  }) = _TestRelationComment;
}
