import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/story_groups/story_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/story/story_list_generate.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/story_group_item.dart';

class StoryGroupsView extends StatefulWidget {
  const StoryGroupsView({super.key});

  @override
  State<StoryGroupsView> createState() => _StoryGroupsViewState();
}

class _StoryGroupsViewState extends State<StoryGroupsView> {
  bool isView = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryGroupsBloc, StoryGroupsState>(
      bloc: context.read<StoryGroupsBloc>()
        ..add(
          StoryGroupsEvent.started(languageCode: context.locale.languageCode),
        ),
      builder: (context, state) {
        return state.when(
          initial: () => SizedBox(),
          complited: (story, isLoad, isError) {
            return Padding(
              padding: EdgeInsets.only(
                top: ((isLoad || isError) && story.isEmpty ? 0 : 20),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: (isLoad || isError) && story.isEmpty ? 0 : 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemCount: story.length,
                  itemBuilder: (context, index) {
                    final item = story.elementAt(index);
                    final hero = 'storygroup';
                    final stories = storyListGenerate(
                      story,
                      hero,
                      context.read<StoryGroupsBloc>(),
                    );
                    return StoryGroupItem(
                      isSmall: false,
                      storyGroup: item,
                      index: index,
                      storyGroups: stories,
                      hero: hero,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
