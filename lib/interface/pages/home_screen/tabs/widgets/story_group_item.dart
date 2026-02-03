import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/story/view_story_model.dart';
import 'package:proweb_student_app/models/story_groups_for_student/story_groups_for_student.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class StoryGroupItem extends StatelessWidget {
  final bool isSmall;
  final int index;
  final StoryGroupsForStudent storyGroup;
  final List<ViewStoryModel> storyGroups;
  final String hero;
  const StoryGroupItem({
    super.key,
    required this.isSmall,
    required this.storyGroup,
    required this.index,
    required this.storyGroups,
    this.hero = 'storygroup',
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final isView = (storyGroup.stories ?? [])
        .map((a) => (a.actions ?? []).isNotEmpty)
        .where((element) => !element)
        .toList();
    final double sized = isSmall ? 35 : 70;
    final double padding = isSmall ? 1 : 1;
    final double borderRadius = isSmall ? 5 : 15;
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            context.router.push(
              StoryRoute(initialGroup: index, groups: storyGroups, hero: hero),
            );
          },
          child: Container(
            width: sized,
            height: sized,
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              color: customColors?.additionalTwo,
              gradient: isView.isNotEmpty
                  ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFF7300),
                        Color(0xFFFF007F),
                        Color(0xFF0077FF),
                        Color(0xFF7D00FF),
                        Color(0xFFFF007F),
                      ],
                    )
                  : null,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius - 1),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(padding),
                decoration: BoxDecoration(color: customColors?.primaryBg),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius - 2),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(storyGroup.preview!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
