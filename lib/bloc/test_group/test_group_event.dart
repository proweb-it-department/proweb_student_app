part of 'test_group_bloc.dart';

@freezed
abstract class TestGroupEvent with _$TestGroupEvent {
  const factory TestGroupEvent.started({
    required int groupId,
    required int limit,
    required int offset,
  }) = _Started;
}
