part of 'test_group_bloc.dart';

@freezed
class TestGroupState with _$TestGroupState {
  const factory TestGroupState.initial() = _Initial;
  const factory TestGroupState.load() = _TestGroupLoad;
  const factory TestGroupState.error() = _TestGroupError;
  const factory TestGroupState.complited({
    required ResponseLazeList<TestListGroup> data,
  }) = _TestGroupComplited;
}
