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
  const StoryItemView({
    super.key,
    required this.storyModel,
    required this.pageController,
    required this.storyLength,
    required this.currentIndex,
    required this.onDrag,
  });

  @override
  State<StoryItemView> createState() => _StoryItemViewState();
}

class _StoryItemViewState extends State<StoryItemView> {
  late FlutterStoryController controller;
  Offset offset = Offset(0, 0);
  Offset offsetChange = Offset(0, 0);
  int currentIndex = 0;
  double _dragDistance = 0;

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
    final storyViewIndicatorConfig = StoryViewIndicatorConfig(
      height: 2,
      activeColor: Colors.white,
      backgroundCompletedColor: Colors.white,
      backgroundDisabledColor: Colors.white.withAlpha((255 / 2).round()),
      horizontalGap: 1,
      borderRadius: 3,
      enableTopSafeArea: false,
      enableBottomSafeArea: false,
    );
    bool isStart = false;
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: FlutterStoryPROWEB(
        flutterStoryController: controller,
        items: widget.storyModel.stories.map((story) => story.story).toList(),
        storyViewIndicatorConfig: storyViewIndicatorConfig,
        initialIndex: 0,
        headerWidget: HeaderStoryGroupView(
          storyModel: widget.storyModel,
          controller: controller,
        ),
        footerWidget: Consumer<StoryIndexProvider>(
          builder: (context, storyIndex, child) {
            return FooterStoryGroupView(
              key: ValueKey(storyIndex.currentIndex),
              storyModel: widget.storyModel,
              currentIndex: storyIndex.currentIndex,
              controller: controller,
            );
          },
        ),
        onStoryChanged: (p0) {
          if (widget.storyModel.stories[p0].story.storyItemType ==
              StoryItemType.custom) {
            controller.playCustomWidget();
          }
          final bloc = context.read<StoryGroupsBloc>();
          bloc.add(
            StoryGroupsEvent.action(
              storyId: widget.storyModel.stories.elementAt(p0).storyId,
              groupId: widget.storyModel.groupId,
            ),
          );
          context.read<StoryIndexProvider>().updateIndex(p0);
        },
        onRightTap: () {
          if (context.read<StoryIndexProvider>().currentIndex ==
              (widget.storyModel.stories.length - 1)) {
            if ((widget.storyLength - 1) == widget.currentIndex) {
              Navigator.of(context).pop();
            } else {
              widget.pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          }
        },
        onPreviousCompleted: () async {
          if (widget.currentIndex == 0) {
          } else {
            widget.pageController.previousPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        onSlideDown: (details) {
          _dragDistance += details.delta.dy;

          if (_dragDistance < 0) _dragDistance = 0;

          final offset = Offset(0, _dragDistance);

          widget.onDrag(offset);

          if (mounted) {
            setState(() {
              offsetChange = offset;
            });
          }
        },

        onSlideEnd: (p0, index) {
          final screenHeight = MediaQuery.of(context).size.height;
          final progress = _dragDistance / screenHeight;

          if (progress > 0.25) {
            Navigator.of(context).pop();
            return;
          }

          if (widget.storyModel.stories[index].story.storyItemType ==
              StoryItemType.custom) {
            controller.playCustomWidget();
          } else {
            controller.play();
          }

          _dragDistance = 0;

          widget.onDrag(Offset.zero);

          if (mounted) {
            setState(() {
              offsetChange = Offset.zero;
            });
          }
        },
        onSlideStart: (_) {
          _dragDistance = 0;
        },
        onCompleted: () async {
          if (!isStart) {
            isStart = true;
            if ((widget.storyLength - 1) == widget.currentIndex) {
              Navigator.of(context).pop();
            } else {
              widget.pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
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
