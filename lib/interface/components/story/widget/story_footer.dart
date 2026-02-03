import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_story_presenter/flutter_story_presenter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/bloc/story_groups/story_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/course_avatar/course_avatar.dart';
import 'package:proweb_student_app/interface/components/story/view_story_model.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class FooterStoryGroupView extends StatelessWidget {
  final int currentIndex;
  final ViewStoryModel storyModel;
  final FlutterStoryController controller;
  const FooterStoryGroupView({
    super.key,
    required this.storyModel,
    required this.currentIndex,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final story = storyModel.stories.elementAtOrNull(currentIndex);
    final action = story?.action.firstOrNull;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (story?.buttonText != null && story?.buttonUrl != null)
            Expanded(
              child: FilledButton.icon(
                onPressed: () {
                  final bloc = context.read<StoryGroupsBloc>();
                  bloc.add(
                    StoryGroupsEvent.action(
                      storyId: story.storyId,
                      groupId: storyModel.groupId,
                      followed: true,
                    ),
                  );
                  controller.pause();
                  _openLink(story.buttonUrl!, context);
                },
                style: FilledButton.styleFrom(backgroundColor: Colors.white),
                icon: Icon(Icons.link, color: Colors.black),
                label: Text(
                  story!.buttonText!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.transparent),
            onPressed: () {
              if (story == null) return;
              final bloc = context.read<StoryGroupsBloc>();
              bloc.add(
                StoryGroupsEvent.action(
                  storyId: story.storyId,
                  groupId: storyModel.groupId,
                  liked: !(action?.liked ?? false),
                ),
              );
            },
            icon: Icon(
              action?.liked == true
                  ? Icons.favorite_outlined
                  : Icons.favorite_border_outlined,
              size: 30,
              color: action?.liked == true ? Colors.red : Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openLink(String link, BuildContext context) async {
    final data = link.trim();

    if (data.startsWith('http')) {
      await sl<LocalData>().openLink(url: data);
      return;
    }

    final linkData = data.split('|');
    final linkDataUrl = linkData.first;

    String? linkApp;
    final listPath = linkDataUrl.split('/');
    final isPath = listPath.length > 1;

    if (isPath) {
      final path = listPath.first;
      final data = listPath.last;

      if (path.isNotEmpty && data.isNotEmpty) {
        if (path == 'group') {
          final blocGroup = context.read<MyGroupsBloc>();
          final groups = blocGroup.state.when(
            initial: () => null,
            complited: (groups) => groups,
            loading: () => null,
            errorLoad: () => null,
            notFound: () => null,
          );
          if (groups != null && groups.isNotEmpty) {
            if (groups.length == 1) {
              final firstGroup = groups.firstOrNull;
              if (firstGroup != null) {
                final id = firstGroup.group?.id;
                if (id == null) return;
                linkApp = '/group/$id/${data.trim()}';
              }
            } else {
              final groupId = await showDialog<int>(
                context: context,
                builder: (context) {
                  return DialogSelectGroup(groups: groups);
                },
              );
              if (groupId == null) {
                controller.play();
                return;
              } else {
                linkApp = '/group/$groupId/${data.trim()}';
              }
            }
          } else if (groups == null || groups.isEmpty) {
            Fluttertoast.showToast(
              msg: "home.You_don't_have_any_transition_groups".tr(),
            );
          }
        } /* else if (path == 'courses') {
            router.goNamed('courseinfo', params: {'id': data.trim()});
          } else if (path == 'products') {
            router.goNamed('shopitem', params: {'id': data.trim()});
          } else if (path == 'masterclass') {
            router.goNamed('masterclass', params: {'id': data.trim()});
          } else if (path == 'packages') {
            router.goNamed('shoppackages', queryParams: {'id': data.trim()});
          } else if (path == 'service') {
            router.goNamed('shopservices', queryParams: {'service_id': data.trim()});
          } */
      }
    } else {
      final baseAction = [
        'coworking',
        'feedback',
        'shop',
        'branches',
        'courses',
        'rating',
        'balance',
        'messenger',
      ];
      final find = baseAction.firstWhere(
        (a) => a == linkDataUrl.trim(),
        orElse: () => '',
      );

      if (find.isNotEmpty) {
        final pathMap = {
          'branches': 'prowebbranch',
          'courses': 'prowebcourse',
          'balance': 'home/balance',
        };
        final routeName = pathMap[find] ?? find;
        linkApp = '/$routeName';
      }
    }

    if (linkApp != null && context.mounted) {
      final router = context.router;
      if (isPath) {
        router.back();
      }
      router.navigateNamed(linkApp);
    } else if (context.mounted) {
      final router = context.router;
      router.back();
    }
  }
}

class DialogSelectGroup extends StatefulWidget {
  final List<MyGroupsItem> groups;
  const DialogSelectGroup({super.key, required this.groups});

  @override
  State<DialogSelectGroup> createState() => _DialogSelectGroupState();
}

class _DialogSelectGroupState extends State<DialogSelectGroup> {
  int _selectedGroupId = 0;
  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    return Dialog(
      insetPadding: EdgeInsets.all(12),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 1,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60),
                ...widget.groups.map((group) {
                  if (group.group?.course?.icon != null &&
                      group.group?.course?.color != null) {
                    return RadioListTile<int>(
                      controlAffinity: ListTileControlAffinity.trailing,
                      secondary: CourseAvatar(
                        icon: group.group!.course!.icon!,
                        color: HexColor(group.group!.course!.color!),
                      ),
                      value: group.group?.id ?? 0,
                      groupValue: _selectedGroupId,
                      title: Text(
                        group.group!.course!.name ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text('#${group.group?.id}'),
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedGroupId = value;
                          });
                        }
                      },
                    );
                  }
                  return SizedBox();
                }),
                if (_selectedGroupId > 0) SizedBox(height: 60),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.all(10),
              color: customColor?.primaryBg,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: customColor?.primaryTextColor,
                    ),
                  ),
                  Center(
                    child: Text(
                      'group.SELECT_GROUP'.tr(),
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (_selectedGroupId > 0)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: 50,
                padding: EdgeInsets.all(10),
                color: customColor?.primaryBg,
                child: FilledButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      _selectedGroupId <= 0 ? null : _selectedGroupId,
                    );
                  },
                  child: Text('global_data.Choose'.tr()),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
