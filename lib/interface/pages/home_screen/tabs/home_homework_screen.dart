import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/bloc/home_homework/home_homework_bloc.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/course_avatar/course_avatar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/homework_info_item/homework_info_item.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ts_map.dart';
import 'package:talker_logger/talker_logger.dart';

@RoutePage()
class HomeHomeworkScreen extends StatelessWidget {
  const HomeHomeworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MyGroupsBloc>();
    final List<MyGroupsItem>? groupsState = bloc.state.when(
      notFound: () => null,
      loading: () => [],
      complited: (groups) => groups,
      errorLoad: () => null,
      initial: () => null,
    );
    return BlocBuilder<MyGroupsBloc, MyGroupsState>(
      bloc: groupsState == null ? (bloc..add(MyGroupsEvent.started())) : null,
      builder: (context, state) {
        return switch (state) {
          MyGroupsInitial() => Padding(
            padding: EdgeInsets.all(8),
            child: Center(child: Md3CirculeIndicator()),
          ),
          MyGroupsLoading() => Padding(
            padding: EdgeInsets.all(8),
            child: Center(child: Md3CirculeIndicator()),
          ),
          MyGroupsNotFound() => Padding(
            padding: EdgeInsets.all(8),
            child: Center(
              child: NoData(
                text: 'education.no_group'.tr(),
                icon: Icons.group_off,
              ),
            ),
          ),
          MyGroupsErrorLoad() => Padding(
            padding: EdgeInsets.all(8),
            child: ErrorLoad(
              action: FilledButton(
                onPressed: () {
                  final bloc = context.read<MyGroupsBloc>();
                  bloc.add(MyGroupsEvent.started());
                },
                child: Text('global_data.try_again'.tr()),
              ),
            ),
          ),
          MyGroupsComplited(groups: final groups) => ListForGroup(
            groups: groups,
          ),
        };
      },
    );
  }
}

class ListForGroup extends StatefulWidget {
  final List<MyGroupsItem> groups;
  const ListForGroup({super.key, required this.groups});

  @override
  State<ListForGroup> createState() => _ListForGroupState();
}

class _ListForGroupState extends State<ListForGroup> {
  final List<MyGroupsItem> groupsList = [];
  final notifier = ScrollEndNotifier();
  final ScrollController _scrollController = ScrollController();
  MyGroupsItem? groupSelect;
  @override
  void initState() {
    super.initState();
    List<MyGroupsItem> groupsListFiltered = [];
    for (var el in widget.groups) {
      final student = {
        StudentStatus.active,
        StudentStatus.graduate,
        StudentStatus.leave,
        StudentStatus.transfer,
      }.contains(el.status);
      final group = {
        MyGroupStatus.started,
        MyGroupStatus.graduaded,
        MyGroupStatus.disbanded,
      }.contains(el.group?.status);

      if (student && group) {
        groupsListFiltered.add(el);
      }
    }
    if (groupsListFiltered.firstOrNull != null) {
      setState(() {
        groupSelect = groupsListFiltered.firstOrNull;
      });
    }
    setState(() {
      groupsList.addAll(groupsListFiltered);
    });
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadMoreItems();
    }
  }

  Future<void> _loadMoreItems() async {
    notifier.notifyScrollEnd();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    if (groupsList.isEmpty) {
      return NoData(
        text: 'У Вас нет активных групп в которых Вам назначили задания',
        icon: Icons.group_off_outlined,
      );
    }

    return Ink(
      color: customColors?.containerColor,
      child: ScrollEventInherited(
        notifier: notifier,
        child: ListView(
          controller: _scrollController,
          children: [
            Ink(color: customColors?.primaryBg, child: SizedBox(height: 10)),
            Ink(
              color: customColors?.primaryBg,
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Row(
                      spacing: 10,
                      children: [
                        Expanded(
                          child: ListView.separated(
                            shrinkWrap: false,
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 7),
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 10,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final group = groupsList.elementAt(index);
                              return Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(10),
                                  onTap: () {
                                    setState(() {
                                      groupSelect = group;
                                    });
                                  },
                                  child: Ink(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: BoxBorder.all(
                                        color:
                                            customColors?.containerColor ??
                                            Colors.transparent,
                                      ),
                                      color:
                                          groupSelect?.group?.id ==
                                              group.group?.id
                                          ? customColors?.containerColor
                                          : null,
                                    ),
                                    child: Row(
                                      spacing: 7,
                                      children: [
                                        CourseAvatar(
                                          icon: group.group?.course?.icon ?? '',
                                          color: HexColor(
                                            group.group?.course?.color ??
                                                '#fff',
                                          ),
                                          size: 20,
                                          borderRadius: 5,
                                          padding: 4,
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              group.group?.course?.name ?? '',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Text(
                                              '#${group.group?.id ?? '- - -'}',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: groupsList.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -1,
                    left: 0,
                    child: Container(
                      width: 15,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: AlignmentGeometry.topLeft,
                          end: AlignmentGeometry.topRight,
                          colors: [
                            customColors?.primaryBg ?? Colors.transparent,
                            customColors?.primaryBg.withAlpha(0) ??
                                Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -1,
                    right: 0,
                    child: Container(
                      width: 15,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: AlignmentGeometry.topRight,
                          end: AlignmentGeometry.topLeft,
                          colors: [
                            customColors?.primaryBg ?? Colors.transparent,
                            customColors?.primaryBg.withAlpha(0) ??
                                Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Ink(color: customColors?.primaryBg, child: SizedBox(height: 10)),
            ViewCourseHomework(
              group: groupSelect,
              key: groupSelect?.group?.id != null
                  ? ValueKey(groupSelect!.group!.id)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

enum HomeworkType {
  homework('homework'),
  material('material'),
  test('test');

  final String name;
  const HomeworkType(this.name);
}

class ViewCourseHomework extends StatefulWidget {
  final MyGroupsItem? group;
  const ViewCourseHomework({super.key, this.group});

  @override
  State<ViewCourseHomework> createState() => _ViewCourseHomeworkState();
}

class _ViewCourseHomeworkState extends State<ViewCourseHomework> {
  HomeworkType page = HomeworkType.homework;
  List<PathSvgShape> shapes = [
    PathSvgShape.circle,
    PathSvgShape.fan,
    PathSvgShape.pentagon,
  ];

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    if (widget.group == null) {
      return NoData(text: 'Группа не выбрана', icon: Icons.group);
    }
    return Ink(
      color: customColors?.primaryBg,
      child: Container(
        decoration: BoxDecoration(
          color: customColors?.containerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10,
                    children: [
                      SizedBox(width: 10),
                      CourseAvatar(
                        icon: widget.group?.group?.course?.icon ?? '',
                        color: HexColor(
                          widget.group?.group?.course?.color ?? '#ffffff',
                        ),
                        size: 30,
                        borderRadius: 7,
                      ),
                      Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          shrinkWrap: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: HomeworkType.values.length,
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 7),
                          itemBuilder: (context, index) {
                            final type = HomeworkType.values.elementAt(index);
                            final shape = shapes.elementAt(index);
                            return Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: page == type
                                    ? null
                                    : () {
                                        setState(() {
                                          page = type;
                                        });
                                      },
                                child: Ink(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),

                                    color: page == type
                                        ? customColors?.primaryBg
                                        : null,
                                  ),
                                  child: Row(
                                    spacing: 10,
                                    children: [
                                      ClipPath(
                                        clipper: SvgClipper(shape),
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        child: Container(
                                          width: 15,
                                          height: 15,
                                          color: page == type
                                              ? HexColor(
                                                  widget
                                                          .group
                                                          ?.group
                                                          ?.course
                                                          ?.color ??
                                                      '#ffffff',
                                                )
                                              : customColors?.primaryBg,
                                        ),
                                      ),
                                      Text(
                                        type == HomeworkType.homework
                                            ? 'Домашние задания'
                                            : HomeworkType.material == type
                                            ? 'Материалы'
                                            : "Тестирование",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -1,
                  left: 30 + 10 + 20,
                  child: Container(
                    width: 20,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: AlignmentGeometry.topLeft,
                        end: AlignmentGeometry.topRight,
                        colors: [
                          customColors?.containerColor ?? Colors.transparent,
                          customColors?.containerColor.withAlpha(0) ??
                              Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -1,
                  right: 0,
                  child: Container(
                    width: 20,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: AlignmentGeometry.topRight,
                        end: AlignmentGeometry.topLeft,
                        colors: [
                          customColors?.containerColor ?? Colors.transparent,
                          customColors?.containerColor.withAlpha(0) ??
                              Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            if (widget.group != null && page == HomeworkType.homework)
              HomeworkProvider(
                group: widget.group!,
                key: ValueKey(
                  '${page.name}_homework_${widget.group?.group?.id ?? 1}',
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class HomeworkProvider extends StatelessWidget {
  final MyGroupsItem group;
  const HomeworkProvider({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeHomeworkBloc()
        ..add(
          HomeHomeworkEvent.started(
            groupId: group.group!.id!,
            limit: 50,
            offset: 0,
          ),
        ),
      child: HomeworkViewData(group: group),
    );
  }
}

class HomeworkViewData extends StatelessWidget {
  final MyGroupsItem group;
  const HomeworkViewData({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeHomeworkBloc, HomeHomeworkState>(
      builder: (context, state) {
        return switch (state) {
          HomeHomeworkStateInitial() => Md3CirculeIndicator(),
          HomeHomeworkStateComplited(
            homeworks: final homeworks,
            load: final load,
          ) =>
            ListHomeworks(data: homeworks, group: group, load: load),
        };
      },
    );
  }
}

class ListHomeworks extends StatefulWidget {
  final MyGroupsItem group;
  final bool load;
  final DataHomeHomework data;
  const ListHomeworks({
    super.key,
    required this.data,
    required this.group,
    required this.load,
  });

  @override
  State<ListHomeworks> createState() => _ListHomeworksState();
}

class _ListHomeworksState extends State<ListHomeworks> {
  late final ScrollEndNotifier notifier;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    notifier = ScrollEventInherited.of(context);
    notifier.addListener(_onScrollEnd);
  }

  void _onScrollEnd() {
    if (context.mounted && mounted) {
      final data = context.read<HomeHomeworkBloc>();
      final load = data.state.when(
        initial: () => null,
        complited: (_, load) => load,
      );
      final homeworks = data.state.when(
        initial: () => null,
        complited: (homeworks, load) => homeworks,
      );
      if (load == true) return;
      if (homeworks == null) return;
      final count = homeworks.count;
      final length = homeworks.map.values.toList().fold(
        0,
        (value, element) => value + element.length,
      );
      if (length < count && (load == false || load == null)) {
        data.add(
          HomeHomeworkEvent.started(
            groupId: widget.group.group!.id!,
            limit: 50,
            offset: length,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    notifier.removeListener(_onScrollEnd);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> month = widget.data.map.keys.toList();
    month.sort(
      (a, b) =>
          (DateTime.parse('$b-01').millisecondsSinceEpoch) -
          (DateTime.parse('$a-01').millisecondsSinceEpoch),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        for (final e in month)
          ItemMonthHomework(
            month: e,
            data: widget.data.map,
            group: widget.group,
          ),

        if (widget.load)
          Padding(
            padding: EdgeInsetsGeometry.only(bottom: 20),
            child: Md3CirculeIndicator(),
          ),
      ],
    );
  }
}

class ItemMonthHomework extends StatelessWidget {
  final MyGroupsItem group;
  final String month;
  final TsMap<String, List<HomeworkStudentRelationGroup>> data;
  const ItemMonthHomework({
    super.key,
    required this.month,
    required this.data,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    final date = '$month-01';
    final list = data.get(month);
    final courseColor = HexColor(group.group?.course?.color ?? '#ffffff');
    final colorImg = ThemeData.estimateBrightnessForColor(courseColor);
    final customColors = Theme.of(context).extension<CustomColors>();
    if (list == null) {
      return SizedBox();
    }
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 10, bottom: 10),
      child: Stack(
        children: [
          Positioned(
            top: 13,
            bottom: 5,
            left: 44,
            child: Container(
              width: 2,
              decoration: BoxDecoration(
                color: courseColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: Container(
                  height: 30,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: courseColor,
                  ),
                  child: Text(
                    sl<LocalData>().getDateString(
                      date: DateTime.parse(date),
                      seporator: DateSeporator.wMY,
                    ),
                    style: TextStyle(
                      color: colorImg == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: courseColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 5,
                  children: list
                      .map(
                        (e) => Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          child: ListTile(
                            dense: true,
                            onTap: () {
                              context.router.push(
                                HomeworkRouteRoute(
                                  relationId: e.id ?? 0,
                                  groupId: group.group?.id ?? 0,
                                ),
                              );
                            },
                            tileColor: customColors?.primaryBg,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(15),
                            ),
                            title: Text(
                              e.homework?.name ?? '- - -',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Wrap(
                              spacing: 7,
                              children: [
                                Text(
                                  sl<LocalData>().getDateString(
                                    date: DateTime.parse(
                                      e.createdAt ?? '2026-01-15',
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: customColors?.primaryTextColor
                                        .withAlpha(150),
                                  ),
                                ),
                              ],
                            ),
                            trailing: TrailingWork(
                              item: e,
                              color: group.group?.course?.color,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TrailingWork extends StatelessWidget {
  final HomeworkStudentRelationGroup item;
  final String? color;
  const TrailingWork({super.key, required this.item, this.color});

  @override
  Widget build(BuildContext context) {
    final cheked = item.checked == true;
    final hasMaterial = item.hasMaterial == true;
    final score = item.score;
    final isCheked = cheked && hasMaterial && score != null;
    final isExamination = !cheked && hasMaterial;
    final brightness = ThemeData.estimateBrightnessForColor(
      HexColor(color ?? '#ffffff'),
    );
    final colorText = brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
    if (isCheked) {
      return ScoreIcon(
        score: score,
        child: Container(
          width: 30,
          height: 30,
          color: HexColor(color ?? '#ffffff'),
          child: Center(
            child: Text(
              '$score',
              style: TextStyle(color: colorText, fontSize: 16),
            ),
          ),
        ),
      );
    } else if (isExamination) {
      return RotatingScoreIcon(color: color);
    } else {
      return ScoreIcon(
        score: 0,
        child: Container(
          width: 30,
          height: 30,
          color: HexColor(color ?? '#ffffff'),
          child: Center(child: Icon(Icons.chevron_right, color: colorText)),
        ),
      );
    }
  }
}

class ScrollEndNotifier extends ChangeNotifier {
  void notifyScrollEnd() {
    notifyListeners();
  }
}

class ScrollEventInherited extends InheritedWidget {
  final ScrollEndNotifier notifier;

  const ScrollEventInherited({
    super.key,
    required this.notifier,
    required super.child,
  });

  static ScrollEndNotifier of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ScrollEventInherited>()!
        .notifier;
  }

  @override
  bool updateShouldNotify(_) => false;
}
