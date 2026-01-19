import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/bloc/home_testings/home_testings_bloc.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/homework_info_item/homework_info_item.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/home_homework_screen.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/test_list_group/test_list_group.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ts_map.dart';

class TestingsProvider extends StatelessWidget {
  final MyGroupsItem group;
  const TestingsProvider({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeTestingsBloc()
        ..add(
          HomeTestingsEvent.started(
            groupId: group.group!.id!,
            limit: 50,
            offset: 0,
          ),
        ),
      child: TestingsViewData(group: group),
    );
  }
}

class TestingsViewData extends StatelessWidget {
  final MyGroupsItem group;
  const TestingsViewData({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTestingsBloc, HomeTestingsState>(
      builder: (context, state) {
        return switch (state) {
          HomeTestingsStateInitial() => Md3CirculeIndicator(),
          HomeTestingsStateComplited(
            testings: final testings,
            load: final load,
          ) =>
            ListTesting(data: testings, group: group, load: load),
        };
      },
    );
  }
}

class ListTesting extends StatefulWidget {
  final MyGroupsItem group;
  final bool load;
  final DataHomeTesting data;
  const ListTesting({
    super.key,
    required this.data,
    required this.group,
    required this.load,
  });

  @override
  State<ListTesting> createState() => _ListTestingState();
}

class _ListTestingState extends State<ListTesting> {
  late final ScrollEndNotifier notifier;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    notifier = ScrollEventInherited.of(context);
    notifier.addListener(_onScrollEnd);
  }

  void _onScrollEnd() {
    if (context.mounted && mounted) {
      final data = context.read<HomeTestingsBloc>();
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
          HomeTestingsEvent.started(
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
    final customColors = Theme.of(context).extension<CustomColors>();
    final List<String> month = widget.data.map.keys.toList();
    if (month.isEmpty && widget.load == false) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: NoData(
            text: 'Преподаватель еще не назначил ни одного тестирования Вам.',
            icon: Icons.checklist,
            color: customColors?.primaryBg,
          ),
        ),
      );
    }
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
          ItemMonthTestings(
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

class ItemMonthTestings extends StatelessWidget {
  final MyGroupsItem group;
  final String month;
  final TsMap<String, List<TestListGroup>> data;
  const ItemMonthTestings({
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
                  spacing: 2,
                  children: list.map((e) {
                    final index = list.indexWhere(
                      (element) => element.id == e.id,
                    );
                    return ListTileBuilder(
                      isStart: index == 0,
                      isEnd: index == (list.length - 1),
                      builder: (shape, contentPadding, isThreeLine) {
                        return Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          child: ListTile(
                            dense: true,
                            onTap: () {
                              context.router.push(
                                TestRouteRoute(
                                  relationId: e.id ?? 0,
                                  groupId: group.group?.id ?? 0,
                                ),
                              );
                            },
                            tileColor: customColors?.primaryBg,
                            shape: shape,
                            title: Text(
                              e.testing?.name ?? '- - -',
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
                              testing: e,
                              color: group.group?.course?.color,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
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
  final TestListGroup testing;
  final String? color;
  const TrailingWork({super.key, this.color, required this.testing});

  @override
  Widget build(BuildContext context) {
    final brightness = ThemeData.estimateBrightnessForColor(
      HexColor(color ?? '#ffffff'),
    );
    final colorText = brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
    final totalScore = testing.totalScore;
    int? score;
    if (totalScore != null && totalScore.isNotEmpty) {
      score = (double.parse(totalScore) / 20).ceil();
    }
    if (score != null && score > 0) {
      return ScoreIcon(
        score: score.toInt(),
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
    }
    return Opacity(
      opacity: 0.5,
      child: ScoreIcon(
        score: 0,
        child: Container(
          width: 30,
          height: 30,
          color: HexColor(color ?? '#ffffff'),
          child: Center(child: Icon(Icons.chevron_right, color: colorText)),
        ),
      ),
    );
  }
}
