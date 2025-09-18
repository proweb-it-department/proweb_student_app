part of 'story_groups_bloc.dart';

@freezed
class StoryGroupsEvent with _$StoryGroupsEvent {
  const factory StoryGroupsEvent.started({
    required String languageCode,
  }) = _Started;
  const factory StoryGroupsEvent.sorted() = _StoryGroupsEventSorted;
  const factory StoryGroupsEvent.action({
    required int storyId,
    required int groupId,
    bool? liked,
    bool? followed,
    int? optionId,
  }) = _StoryGroupsEventaction;
}
