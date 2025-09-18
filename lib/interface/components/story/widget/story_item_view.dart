import 'package:flutter/material.dart';
import 'package:flutter_story_presenter/flutter_story_presenter.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/bloc/story_groups/story_groups_bloc.dart';
import 'package:proweb_student_app/dependencies/story_dept_view.dart';
import 'package:proweb_student_app/interface/components/story/view_story_model.dart';
import 'package:proweb_student_app/interface/components/story/widget/story_footer.dart';
import 'package:proweb_student_app/interface/components/story/widget/story_header.dart';

typedef OnDrag = void Function(Offset);

class StoryItemView extends StatefulWidget {
  final ViewStoryModel storyModel;
  final PageController pageController;
  final int storyLength;
  final int currentIndex;
  final OnDrag onDrag;
  const StoryItemView({super.key, required this.storyModel, required this.pageController, required this.storyLength, required this.currentIndex, required this.onDrag});

  @override
  State<StoryItemView> createState() => _StoryItemViewState();
}

class _StoryItemViewState extends State<StoryItemView> {
  late FlutterStoryController controller;
  Offset offset = Offset(0, 0);
  Offset offsetChange = Offset(0, 0);
  int currentIndex = 0;
  @override
  void initState() {
    controller = FlutterStoryController();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final storyViewIndicatorConfig = StoryViewIndicatorConfig(height: 2, activeColor: Colors.white, backgroundCompletedColor: Colors.white, backgroundDisabledColor: Colors.white.withAlpha((255 / 2).round()), horizontalGap: 1, borderRadius: 3, enableTopSafeArea: false, enableBottomSafeArea: false);
    bool isStart = false;
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: FlutterStoryPROWEB(
        flutterStoryController: controller,
        items: widget.storyModel.stories.map((story) => story.story).toList(),
        storyViewIndicatorConfig: storyViewIndicatorConfig,
        initialIndex: 0,
        headerWidget: HeaderStoryGroupView(storyModel: widget.storyModel, controller: controller),
        footerWidget: Consumer<StoryIndexProvider>(
          builder: (context, storyIndex, child) {
            return FooterStoryGroupView(key: ValueKey(storyIndex.currentIndex), storyModel: widget.storyModel, currentIndex: storyIndex.currentIndex, controller: controller);
          },
        ),
        onStoryChanged: (p0) {
          if (widget.storyModel.stories[p0].story.storyItemType == StoryItemType.custom) {
            controller.playCustomWidget();
          }
          final bloc = context.read<StoryGroupsBloc>();
          bloc.add(StoryGroupsEvent.action(storyId: widget.storyModel.stories.elementAt(p0).storyId, groupId: widget.storyModel.groupId));
          context.read<StoryIndexProvider>().updateIndex(p0);
        },
        onRightTap: () {
          if (context.read<StoryIndexProvider>().currentIndex == (widget.storyModel.stories.length - 1)) {
            if ((widget.storyLength - 1) == widget.currentIndex) {
              Navigator.of(context).pop();
            } else {
              widget.pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
            }
          }
        },
        onPreviousCompleted: () async {
          if (widget.currentIndex == 0) {
          } else {
            widget.pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
          }
        },
        onSlideDown: (p0) {
          offset.dy;
          final dy = p0.globalPosition.dy - offset.dy;
          if (mounted) {
            setState(() {
              offsetChange = Offset(0, dy < 0 ? 0 : dy);
            });
          }
          widget.onDrag(offsetChange);
        },
        onSlideEnd: (p0, index) {
          final top = 1 - (offsetChange.dy * 2) / MediaQuery.of(context).size.height;
          if (top < 0.5) {
            Navigator.of(context).pop();
          } else {
            if (widget.storyModel.stories[index].story.storyItemType == StoryItemType.custom) {
              controller.playCustomWidget();
            } else {
              controller.play();
            }
          }
          if (mounted) {
            setState(() {
              offsetChange = Offset(0, 0);
              offset = Offset(0, 0);
            });
          }
          widget.onDrag(offsetChange);
        },
        onSlideStart: (p0) {
          if (mounted) {
            setState(() {
              offset = p0.globalPosition;
            });
          }
        },
        onCompleted: () async {
          if (!isStart) {
            isStart = true;
            if ((widget.storyLength - 1) == widget.currentIndex) {
              Navigator.of(context).pop();
            } else {
              widget.pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
            }
          } else {
            isStart = false;
          }
        },
        onVideoLoad: (p0) {},
        restartOnCompleted: false,
      ),
    );
  }
}

class StoryIndexProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateIndex(int index) {
    _currentIndex = index;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }
}
