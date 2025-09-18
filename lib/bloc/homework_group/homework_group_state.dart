part of 'homework_group_bloc.dart';

@freezed
class HomeworkGroupState with _$HomeworkGroupState {
  const factory HomeworkGroupState.initial() = _Initial;
  const factory HomeworkGroupState.load() = _HomeworkGroupLoad;
  const factory HomeworkGroupState.error() = _HomeworkGroupError;
  const factory HomeworkGroupState.complited({
    required ResponseLazeList<HomeworkListGroup> data,
  }) = _HomeworkGroupComplited;
}
