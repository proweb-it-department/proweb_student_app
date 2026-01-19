import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/course_avatar/course_avatar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/homeworks/homeworks.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/materials/materials_lists.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/testings/testings.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

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
      child: Ink(
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
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Ink(
                    color: customColors?.primaryBg,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                      child: Ink(
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: customColors?.containerColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                          ),
                        ),
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
                                  final type = HomeworkType.values.elementAt(
                                    index,
                                  );
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
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),

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
                                                  : HomeworkType.material ==
                                                        type
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
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
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
              ],
            ),
            SizedBox(height: 15),
            if (widget.group != null && page == HomeworkType.homework)
              HomeworkProvider(
                group: widget.group!,
                key: ValueKey(
                  '${page.name}_homework_${widget.group?.group?.id ?? 1}',
                ),
              )
            else if (widget.group != null && page == HomeworkType.material)
              MaterialsProvider(
                group: widget.group!,
                key: ValueKey(
                  '${page.name}_material_${widget.group?.group?.id ?? 1}',
                ),
              )
            else if (widget.group != null && page == HomeworkType.test)
              TestingsProvider(
                group: widget.group!,
                key: ValueKey(
                  '${page.name}_testing_${widget.group?.group?.id ?? 1}',
                ),
              ),
          ],
        ),
      ),
    );
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
