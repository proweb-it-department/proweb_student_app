import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/models/story_groups_for_student/story_groups_for_student.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'story_groups_event.dart';
part 'story_groups_state.dart';
part 'story_groups_bloc.freezed.dart';

class StoryGroupsBloc extends Bloc<StoryGroupsEvent, StoryGroupsState> {
  StoryGroupsBloc() : super(_Initial()) {
    on<StoryGroupsEvent>((event, emit) async {
      started(String langCode) async {
        final currentStory = state.whenOrNull(complited: (story, isLoad, isError) => story);
        emit(StoryGroupsState.complited(story: currentStory ?? [], isLoad: true, isError: false));
        final main = sl<GetResponsesMain>();
        final story = await main.story(languageCode: langCode);
        if (story == null) {
          return emit(StoryGroupsState.complited(story: currentStory ?? [], isLoad: false, isError: true));
        }
        final storySrted = _sortStoriesGroup([...story]);
        return emit(StoryGroupsState.complited(story: [...storySrted], isLoad: false, isError: false));
      }

      sorted() async {
        final currentStory = state.whenOrNull(complited: (story, isLoad, isError) => story);
        final storySrted = _sortStoriesGroup([...(currentStory ?? [])]);
        return emit(StoryGroupsState.complited(story: [...storySrted], isLoad: false, isError: false));
      }

      action(int storyId, int groupId, bool? liked, bool? followed, int? optionId) async {
        final currentStory = state.whenOrNull(complited: (story, isLoad, isError) => story);
        if (currentStory == null || currentStory.isEmpty) return;
        final groupStory = currentStory.where((element) {
          return element.id == groupId;
        });
        final List<Stories> stories = [];
        for (var a in groupStory) {
          stories.addAll((a.stories ?? []));
        }
        final curentStory = stories.firstWhere((element) => element.id == storyId, orElse: () => Stories());
        if (curentStory.id == null) return;
        final actionStory = curentStory.actions?.firstOrNull;
        Map<String, dynamic> map = {"story_id": storyId};
        bool addedParams = false;
        if (liked is bool) {
          map['liked'] = liked;
          map['followed_link'] = actionStory?.followedLink ?? false;
          addedParams = true;
        }
        if (actionStory?.followedLink == true && followed != null && followed == true) {
          return;
        } else if (followed != null) {
          map['followed_link'] = followed;
          map['liked'] = actionStory?.liked ?? false;
          addedParams = true;
        }
        if (actionStory?.optionId != null && optionId != null) {
          return;
        } else if (optionId != null) {
          map['option_id'] = optionId;
          addedParams = true;
        }
        if (actionStory != null && !addedParams) return;
        final form = FormData.fromMap(map);
        final main = sl<PostResponsesMain>();
        final response = await main.storyAction(form);
        if (response == null) return;
        final storiesAll = currentStory.map((storyGroup) {
          if (storyGroup.id != groupId) return storyGroup;
          final group = storyGroup.copyWith(
            stories: storyGroup.stories?.map((storyItem) {
              if (storyItem.id != storyId) return storyItem;
              return storyItem.copyWith(actions: [response]);
            }).toList(),
          );
          return group;
        }).toList();
        return emit(StoryGroupsState.complited(story: [...storiesAll], isLoad: false, isError: false));
      }

      await event.when(started: started, sorted: sorted, action: action);
    });
  }
  List<StoryGroupsForStudent> _sortStoriesGroup(List<StoryGroupsForStudent> storyForStudent) {
    storyForStudent.sort((a, b) {
      return b.createdAt!.compareTo(a.createdAt!);
    });

    storyForStudent.sort((a, b) {
      int aSort = 20;
      int bSort = 20;

      bool isA = a.stories?.any((c) => c.actions == null || c.actions!.isEmpty) ?? false;
      bool isB = b.stories?.any((c) => c.actions == null || c.actions!.isEmpty) ?? false;

      if (isA) aSort = 0;
      if (isB) bSort = 0;

      return aSort - bSort;
    });
    return storyForStudent;
  }
}
