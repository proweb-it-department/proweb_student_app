part of 'story_groups_bloc.dart';

@freezed
class StoryGroupsState with _$StoryGroupsState {
  const factory StoryGroupsState.initial() = _Initial;
  const factory StoryGroupsState.complited({
    required List<StoryGroupsForStudent> story,
    required bool isLoad,
    required bool isError,
  }) = _StoryGroupsStateComplited;
}
