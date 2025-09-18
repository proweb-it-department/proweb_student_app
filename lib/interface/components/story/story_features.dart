import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/bloc/story_groups/story_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/story/story_list_generate.dart';
import 'package:proweb_student_app/interface/components/story/view_story_model.dart';
import 'package:proweb_student_app/interface/components/story/widget/story_item_view.dart';

@RoutePage()
class StoryScreen extends StatelessWidget {
  final int initialGroup;
  final String hero;
  final List<ViewStoryModel> groups;
  const StoryScreen({super.key, required this.initialGroup, required this.groups, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: StoryFeatures(initialGroup: initialGroup, groups: groups, hero: hero),
    );
  }
}

class StoryFeatures extends StatefulWidget {
  final int initialGroup;
  final List<ViewStoryModel> groups;
  final String hero;
  const StoryFeatures({super.key, required this.initialGroup, required this.groups, required this.hero});

  @override
  State<StoryFeatures> createState() => _StoryFeaturesState();
}

class _StoryFeaturesState extends State<StoryFeatures> with SingleTickerProviderStateMixin {
  late PageController pageController;
  late AnimationController _controller;
  late Animation<Offset> _animation;
  late Animation<double> _scaleAnimation;
  Offset offset = Offset(0, 0);
  double _scale = 1;
  late List<ViewStoryModel> groups;
  late StoryGroupsBloc _storyIndexProvider;
  @override
  void initState() {
    pageController = PageController(initialPage: widget.initialGroup);

    _controller = AnimationController(duration: Duration(milliseconds: 300), vsync: this);

    _animation = Tween<Offset>(begin: Offset.zero, end: Offset.zero).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    setState(() {
      groups = widget.groups;
    });

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _storyIndexProvider = context.read<StoryGroupsBloc>();
  }

  @override
  void dispose() {
    _controller.dispose();
    final bloc = _storyIndexProvider;
    bloc.add(StoryGroupsEvent.sorted());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<StoryGroupsBloc>();
    bloc.state.when(
      initial: () {},
      complited: (story, isLoad, isError) {
        setState(() {
          groups = storyListGenerate(story, widget.hero, bloc);
        });
      },
    );
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: _animation.value + offset,
          child: Transform.scale(
            scale: _scaleAnimation.value != 1 ? _scaleAnimation.value : _scale,
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AspectRatio(
                  aspectRatio: 9 / 16,
                  child: PageView.builder(
                    itemCount: widget.groups.length,
                    controller: pageController,
                    itemBuilder: (context, index) {
                      return ChangeNotifierProvider(
                        create: (_) => StoryIndexProvider(),
                        child: StoryItemView(
                          storyModel: groups.elementAt(index),
                          pageController: pageController,
                          storyLength: groups.length,
                          currentIndex: index,
                          onDrag: (Offset p0) {
                            final posotion = 1 - offset.dy / MediaQuery.of(context).size.height;
                            double scale = posotion < 0.90 ? 0.90 : posotion;
                            if (p0.dy == 0) {
                              _controller.reset();
                              _animation = Tween<Offset>(begin: offset, end: Offset.zero).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
                              _scaleAnimation = Tween<double>(begin: _scale, end: 1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
                              _controller.forward();
                              scale = 1;
                            }
                            setState(() {
                              _scale = scale;
                            });
                            setState(() {
                              if (offset.dy > 150) {
                                offset = Offset(0, 150 + ((p0.dy - 150) / 3));
                              } else {
                                offset = p0;
                              }
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
