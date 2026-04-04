import 'package:auto_route/annotations.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/bloc/my_watched_lesson/my_watched_lesson_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_watched_lesson_widget.dart';
import 'package:proweb_student_app/models/my_watched_lesson/my_watched_lesson.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class MyWatchedLessonScreen extends StatelessWidget {
  final int? groupId;
  final String? isWatched;
  const MyWatchedLessonScreen({
    super.key,
    @QueryParam('groupId') this.groupId,
    @QueryParam('watched') this.isWatched,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyWatchedLessonBloc()
        ..add(
          MyWatchedLessonEvent.started(
            isWatched: isWatched ?? 'no',
            groupId: groupId,
            limit: LimitRequest.lessonsWatched,
          ),
        ),
      child: ChangeNotifierProvider(
        create: (_) => WatchedStatus(status: isWatched ?? 'no'),
        child: AnnotatedRegion(
          value: FlexColorScheme.themedSystemNavigationBar(
            context,
            systemNavBarStyle: FlexSystemNavBarStyle.transparent,
          ),
          child: Scaffold(
            appBar: AppBar(title: Text('Просмотр уроков')),
            body: MyWatchedLessonBody(groupId: groupId),
          ),
        ),
      ),
    );
  }
}

class MyWatchedLessonBody extends StatelessWidget {
  final int? groupId;
  const MyWatchedLessonBody({super.key, this.groupId});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final provider = context.watch<WatchedStatus>();
    final bloc = context.read<MyWatchedLessonBloc>();
    return BlocBuilder<MyWatchedLessonBloc, MyWatchedLessonState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            SizedBox(
              width: double.infinity,
              child: SegmentedButton<String>(
                expandedInsets: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 2,
                ),
                style: segementStyle(customColors),
                segments: <ButtonSegment<String>>[
                  ButtonSegment<String>(
                    value: 'no',
                    label: Text(
                      'Не смотрели',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: customColors?.primaryTextColor),
                    ),
                  ),
                  ButtonSegment<String>(
                    value: 'yes',
                    label: Text(
                      'Просмотрите еще',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: customColors?.primaryTextColor),
                    ),
                  ),
                ],
                selected: {provider.status},
                onSelectionChanged: switch (state) {
                  MyWatchedLessonStateLoad() => null,
                  MyWatchedLessonStateComplited(data: _) => (p0) {
                    provider.changeStatus();
                    bloc.add(
                      MyWatchedLessonEvent.started(
                        isWatched: provider.status,
                        groupId: groupId,
                        limit: LimitRequest.lessonsWatched,
                      ),
                    );
                  },
                },
              ),
            ),
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: customColors?.containerColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                ),
                child: switch (state) {
                  MyWatchedLessonStateLoad() => Md3CirculeIndicator(),
                  MyWatchedLessonStateComplited(data: final data) =>
                    MyWatchedLessonGrid(data: data, groupId: groupId),
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class MyWatchedLessonGrid extends StatefulWidget {
  final ResponseLazeList<MyWatchedLesson> data;
  final int? groupId;
  const MyWatchedLessonGrid({super.key, required this.data, this.groupId});

  @override
  State<MyWatchedLessonGrid> createState() => _MyWatchedLessonGridState();
}

class _MyWatchedLessonGridState extends State<MyWatchedLessonGrid> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  bool _isFinished = false;
  int categoryId = 0;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    if (widget.data.list.length == widget.data.count) {
      _isFinished = true;
    } else {
      _isFinished = false;
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !_isLoading) {
      _loadMoreItems();
    }
  }

  Future<void> _loadMoreItems() async {
    if (!_isFinished) {
      setState(() {
        _isLoading = true;
      });
      if (!mounted) return;
      final provider = Provider.of<WatchedStatus>(context, listen: false);
      final bloc = context.read<MyWatchedLessonBloc>();
      bloc.add(
        MyWatchedLessonEvent.started(
          isWatched: provider.status,
          groupId: widget.groupId,
          limit: LimitRequest.lessonsWatched,
          offset: widget.data.list.length,
        ),
      );
      await bloc.stream.first;
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    return Column(
      spacing: 5,
      children: [
        Expanded(
          child: GridView.builder(
            controller: _scrollController,
            itemCount: widget.data.list.length,
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 10 + bottom,
              top: 15,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 10,
              childAspectRatio: 1 / 1,
            ),
            itemBuilder: (context, index) {
              final item = widget.data.list.elementAt(index);
              return MyWatchedLessonItem(item: item, showGoBtn: false);
            },
          ),
        ),
        if (_isLoading)
          Padding(
            padding: EdgeInsetsGeometry.only(bottom: 10 + bottom),
            child: Md3CirculeIndicator(),
          ),
      ],
    );
  }
}

ButtonStyle segementStyle(CustomColors? customColors) {
  return SegmentedButton.styleFrom(
    iconColor: customColors?.primaryTextColor,
    backgroundColor: customColors?.containerColor,
    selectedBackgroundColor: customColors?.primaryBg,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
      side: BorderSide(color: customColors?.borderColor ?? Colors.transparent),
    ),
    disabledBackgroundColor: customColors?.borderColors,
  );
}
