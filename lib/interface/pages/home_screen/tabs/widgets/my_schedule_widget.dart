import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/bloc/scheduled_student/scheduled_student_bloc.dart';
import 'package:proweb_student_app/models/coworking_list_reserve/coworking_list_reserve.dart';
import 'package:proweb_student_app/models/homework_list_group/homework_list_group.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/scheduled_lesson_models/scheduled_lesson_models.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ts_map.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class MyScheduleWidget extends StatelessWidget {
  const MyScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 10,
            children: [
              ClipPath(
                clipper: SvgClipper(PathSvgShape.gem),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  width: 20,
                  height: 20,
                  color: customColors?.primaryTextColor,
                ),
              ),
              Text(
                'Моё расписание',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        MyScheduleContainer(),
      ],
    );
  }
}

class MyScheduleContainer extends StatelessWidget {
  const MyScheduleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyGroupsBloc, MyGroupsState>(
      builder: (context, state) {
        return switch (state) {
          MyGroupsInitial() => MyScheduleShimmer(),
          MyGroupsLoading() => MyScheduleShimmer(),
          MyGroupsNotFound() => MyScheduleComplitedGroups(groups: []),
          MyGroupsErrorLoad() => MyScheduleComplitedGroups(groups: []),
          MyGroupsComplited(groups: final groups) => MyScheduleComplitedGroups(
            groups: groups,
          ),
        };
      },
    );
  }
}

class MyScheduleShimmer extends StatelessWidget {
  const MyScheduleShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Shimmer(
        colorOpacity: 0.2,
        duration: const Duration(seconds: 2),
        interval: Duration(milliseconds: 200),
        color: customColors?.additionalTwo ?? Colors.transparent,
        child: MyScheduleCalendar(isDisabled: true),
      ),
    );
  }
}

class MyScheduleComplitedGroups extends StatelessWidget {
  final List<MyGroupsItem> groups;
  const MyScheduleComplitedGroups({super.key, required this.groups});

  @override
  Widget build(BuildContext context) {
    final balancaState = context.watch<BalanceBloc>();
    final balance = balancaState.state.whenOrNull(
      balance: (balance) => balance,
    );
    final balanceParce = double.parse(balance?.mainBalance ?? '0');
    final whereGroups = groups.where((element) {
      final grSt =
          element.group?.status == MyGroupStatus.started ||
          element.group?.status == MyGroupStatus.graduaded;
      final stSt =
          element.status == StudentStatus.active ||
          (element.status == StudentStatus.graduate && balanceParce >= -5_000);
      return grSt && stSt;
    }).toList();
    final blocScheduled = context.read<ScheduledStudentBloc>();
    final stateScheduled = blocScheduled.state.when(
      load: () => true,
      complited: (_, _, _) => false,
    );
    return BlocBuilder<ScheduledStudentBloc, ScheduledStudentState>(
      bloc: stateScheduled
          ? (blocScheduled
              ..add(ScheduledStudentEvent.started(groups: whereGroups)))
          : null,
      builder: (context, state) {
        return switch (state) {
          ScheduledStudentLoad() => MyScheduleShimmer(),
          ScheduledStudentComplited(
            lessons: final lessons,
            myVisits: final myVisits,
            homework: final homework,
          ) =>
            MyScheduleCalendar(
              lessons: lessons,
              myVisits: myVisits,
              homework: homework,
            ),
        };
      },
    );
  }
}

class WeekModel {
  final List<DateTime> days;
  final int mainMonth;
  final int mainYear;

  const WeekModel({
    required this.days,
    required this.mainMonth,
    required this.mainYear,
  });
}

class MyScheduleCalendar extends StatelessWidget {
  final bool isDisabled;
  final TsMap<String, List<ScheduledLessonModels>>? lessons;
  final TsMap<String, List<CoworkingListReserve>>? myVisits;
  final TsMap<String, List<HomeworkListGroup>>? homework;
  const MyScheduleCalendar({
    super.key,
    this.isDisabled = false,
    this.lessons,
    this.myVisits,
    this.homework,
  });

  @override
  Widget build(BuildContext context) {
    final time = sl<LocalData>().getTime();
    final date = DateTime.fromMillisecondsSinceEpoch(time.round());
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: customColors?.primaryBg,
        borderRadius: BorderRadius.circular(22),
      ),
      child: ChangeNotifierProvider(
        create: (_) => WeekProvider(initialDate: date),
        child: WeekView(
          isDisabled: isDisabled,
          lessons: lessons,
          myVisits: myVisits,
          homework: homework,
        ),
      ),
    );
  }
}

class WeekView extends StatelessWidget {
  final bool isDisabled;
  final TsMap<String, List<ScheduledLessonModels>>? lessons;
  final TsMap<String, List<CoworkingListReserve>>? myVisits;
  final TsMap<String, List<HomeworkListGroup>>? homework;
  const WeekView({
    super.key,
    this.isDisabled = false,
    this.lessons,
    this.myVisits,
    this.homework,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<WeekProvider>();
    final week = provider.week;
    final customColors = Theme.of(context).extension<CustomColors>();
    final weekKey = ValueKey(
      '${week.mainYear}-${week.mainMonth}-${week.days.first.toIso8601String()}',
    );
    final dir = provider.dir;
    final currentDate = provider.currentDate;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          spacing: 10,
          children: [
            SizedBox(width: 20),
            IconButton(
              onPressed: isDisabled ? null : provider.prevWeek,
              icon: Icon(
                Icons.chevron_left,
                color: customColors?.primaryTextColor.withAlpha(
                  isDisabled ? 100 : 255,
                ),
              ),
              style: IconButton.styleFrom(
                disabledBackgroundColor: customColors?.primaryBg,
              ),
            ),
            Expanded(
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(40),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () async {
                    final datetime = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2024, 1, 15),
                      lastDate: DateTime.fromMillisecondsSinceEpoch(
                        sl<LocalData>().getTime().toInt(),
                      ).add(Duration(days: 365 * 5)),
                      builder: (context, child) {
                        final DatePickerThemeData datePickerTheme =
                            DatePickerThemeData(
                              backgroundColor: customColors?.primaryBg,
                              headerBackgroundColor: customColors?.primaryBg,
                              headerForegroundColor:
                                  customColors?.primaryTextColor,
                              headerHeadlineStyle: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                              headerHelpStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              elevation: 6,
                              cancelButtonStyle: ButtonStyle(
                                foregroundColor: WidgetStateProperty.all(
                                  customColors?.primaryTextColor,
                                ),
                                textStyle: WidgetStateProperty.all(
                                  const TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              confirmButtonStyle: ButtonStyle(
                                foregroundColor: WidgetStateProperty.all(
                                  customColors?.primaryTextColor,
                                ),
                                textStyle: WidgetStateProperty.all(
                                  const TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              dayBackgroundColor:
                                  WidgetStateProperty.resolveWith((states) {
                                    if (states.contains(WidgetState.selected)) {
                                      return customColors?.additionalTwo;
                                    }
                                    return null;
                                  }),
                              toggleButtonTextStyle: TextStyle(
                                color: customColors?.primaryTextColor,
                              ),

                              dayForegroundColor:
                                  WidgetStateProperty.resolveWith((states) {
                                    if (states.contains(WidgetState.selected)) {
                                      return Colors.white;
                                    }
                                    if (states.contains(WidgetState.disabled)) {
                                      return Colors.grey;
                                    }
                                    return customColors?.primaryTextColorOp;
                                  }),
                              dayOverlayColor: WidgetStateProperty.all(
                                customColors?.containerColor,
                              ),

                              todayBackgroundColor:
                                  WidgetStateProperty.resolveWith((states) {
                                    if (states.contains(WidgetState.selected)) {
                                      return customColors?.additionalTwo;
                                    }
                                    return Colors.transparent;
                                  }),
                              todayForegroundColor:
                                  WidgetStateProperty.resolveWith((states) {
                                    if (states.contains(WidgetState.selected)) {
                                      return Colors.white;
                                    }
                                    return Colors.blue;
                                  }),
                              todayBorder: const BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                              ),

                              yearBackgroundColor:
                                  WidgetStateProperty.resolveWith((states) {
                                    if (states.contains(WidgetState.selected)) {
                                      return customColors?.additionalTwo;
                                    }
                                    return null;
                                  }),
                              yearForegroundColor:
                                  WidgetStateProperty.resolveWith((states) {
                                    if (states.contains(WidgetState.selected)) {
                                      return customColors?.primaryTextColor;
                                    }
                                    return customColors?.primaryTextColorOp;
                                  }),
                              yearOverlayColor: WidgetStateProperty.all(
                                customColors?.containerColor,
                              ),

                              dividerColor: customColors?.borderColors,

                              weekdayStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: customColors?.primaryTextColorOp,
                              ),

                              dayStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),

                              yearStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),

                              rangePickerBackgroundColor: Colors.white,
                              rangePickerHeaderBackgroundColor: Colors.blue,
                              rangePickerHeaderForegroundColor: Colors.white,
                              rangePickerSurfaceTintColor: Colors.transparent,
                              rangeSelectionBackgroundColor: Colors.blue
                                  .withAlpha((255 * 0.15).toInt()),
                            );
                        return Theme(
                          data: ThemeData(
                            iconButtonTheme: IconButtonThemeData(
                              style: IconButton.styleFrom(
                                backgroundColor: customColors?.additionalTwo,
                              ),
                            ),
                            iconTheme: IconThemeData(
                              color: customColors?.primaryTextColor,
                            ),
                            datePickerTheme: datePickerTheme,
                          ),
                          child: child ?? SizedBox(),
                        );
                      },
                      initialDate: currentDate,
                    );
                    if (datetime != null && context.mounted) {
                      provider.setDate(datetime);
                    }
                  },
                  child: SizedBox(
                    height: 40,
                    child: Align(
                      alignment: AlignmentGeometry.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: customColors?.primaryTextColor,
                          ),
                          Text(
                            sl<LocalData>().getDateString(
                              date: DateTime.parse(
                                '${week.mainYear}-${week.mainMonth.toString().padLeft(2, '0')}-01',
                              ),
                              seporator: DateSeporator.wMY,
                            ),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: isDisabled ? null : provider.nextWeek,
              icon: Icon(
                Icons.chevron_right,
                color: customColors?.primaryTextColor.withAlpha(
                  isDisabled ? 100 : 255,
                ),
              ),
              style: IconButton.styleFrom(
                disabledBackgroundColor: customColors?.primaryBg,
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          reverseDuration: const Duration(milliseconds: 400),
          switchOutCurve: Curves.easeOut,
          switchInCurve: const Interval(0.40, 1.0, curve: Curves.easeIn),
          transitionBuilder: (child, animation) {
            final double scale = dir == WeekNavDir.prev ? 0.85 : 1.05;
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: Tween<double>(begin: scale, end: 1.0).animate(animation),
                child: child,
              ),
            );
          },
          child: Column(
            key: weekKey,
            spacing: 2,
            children: week.days.map((e) {
              final date = sl<LocalData>().getDateString(
                date: e,
                seporator: DateSeporator.dash,
              );

              final position = week.days.indexWhere((element) {
                final dateElement = sl<LocalData>().getDateString(
                  date: element,
                  seporator: DateSeporator.dash,
                );
                return dateElement == date;
              });

              final lessonDay = lessons?.get(date) ?? [];
              final myVisitsDay = myVisits?.get(date) ?? [];
              final homeworksDay = homework?.get(date) ?? [];
              return WeekItemDay(
                date: e,
                position: position,
                lessons: lessonDay,
                visits: myVisitsDay,
                homework: homeworksDay,
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class WeekItemDay extends StatelessWidget {
  final DateTime date;
  final int position;
  final List<ScheduledLessonModels> lessons;
  final List<CoworkingListReserve> visits;
  final List<HomeworkListGroup> homework;
  const WeekItemDay({
    super.key,
    required this.date,
    required this.lessons,
    required this.visits,
    required this.position,
    required this.homework,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final isStart = position == 0;
    final isEnd = position == 6;
    final length = lessons.length + visits.length + homework.length;
    final isView = length > 1;
    final isTask = length > 0;
    final time = sl<LocalData>().getTime();
    final dateServer = sl<LocalData>().getDateString(
      date: DateTime.fromMillisecondsSinceEpoch(time.round()),
      seporator: DateSeporator.dash,
    );
    final dateCurrent = sl<LocalData>().getDateString(
      date: date,
      seporator: DateSeporator.dash,
    );

    final currentDay = dateServer == dateCurrent;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 5,
          children: [
            Container(
              width: 60,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      Text(
                        date.day.toString().padLeft(2, '0'),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      if (currentDay)
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            color: customColors?.primaryTextColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      if (isView)
                        Container(
                          width: 28,
                          height: 18,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '$length',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: 14,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      Text(
                        sl<LocalData>().getDateString(
                          date: date,
                          seporator: DateSeporator.day,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: isView ? 16 : 16,
                          height: 0.8,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: isStart
                ? BorderRadiusGeometry.only(topLeft: Radius.circular(22))
                : isEnd
                ? BorderRadiusGeometry.only(bottomLeft: Radius.circular(22))
                : BorderRadius.zero,
            child: Container(
              height: isTask ? 90 : 80,
              decoration: BoxDecoration(color: customColors?.containerColor),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(5),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (lessons.isNotEmpty)
                      ...(lessons
                          .map((e) => MyScheduleLessonItem(lesson: e))
                          .toList()),
                    if (visits.isNotEmpty)
                      ...(visits
                          .map((e) => MyScheduleVisitItem(visit: e))
                          .toList()),
                    if (homework.isNotEmpty)
                      ...(homework
                          .map((e) => MyScheduleHomeworkItem(homework: e))
                          .toList()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyScheduleVisitItem extends StatelessWidget {
  final CoworkingListReserve visit;
  const MyScheduleVisitItem({super.key, required this.visit});

  @override
  Widget build(BuildContext context) {
    final status = visit.status!;
    Color colorStatus = Colors.orange;
    if (status == StatusCoworkingReserve.came) {
      colorStatus = Colors.blue;
    } else if (status == StatusCoworkingReserve.gone) {
      colorStatus = Colors.green;
    } else if (status == StatusCoworkingReserve.notCome) {
      colorStatus = Colors.red;
    }
    String time = visit.reserveTime!;
    if (status == StatusCoworkingReserve.came) {
      time = visit.arrivalTime!;
    } else if (status == StatusCoworkingReserve.gone) {
      time = visit.leavingTime!;
    }
    final DateTime datetime = DateTime.parse('${visit.date} $time');
    final hour = datetime.hour.toString().padLeft(2, '0');
    final minute = datetime.minute.toString().padLeft(2, '0');
    time = '$hour:$minute';
    return Material(
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(5),
        child: Ink(
          width: 200,
          height: double.infinity,
          decoration: BoxDecoration(
            color: colorStatus.withAlpha(50),
            border: Border(left: BorderSide(color: colorStatus, width: 5)),
            borderRadius: BorderRadiusGeometry.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              ListTile(
                minTileHeight: 30,
                leading: Icon(Icons.monitor, color: colorStatus),
                minLeadingWidth: 10,
                contentPadding: EdgeInsets.only(
                  left: 10,
                  right: 0,
                  top: 0,
                  bottom: 0,
                ),
                title: Text(
                  status == StatusCoworkingReserve.came
                      ? 'Вы пришли в коворкинг'
                      : status == StatusCoworkingReserve.gone
                      ? 'Вы ушли из коворкинга'
                      : status == StatusCoworkingReserve.notCome
                      ? 'Не пришли в коворкинг'
                      : 'Запись в коворкинг',
                  style: TextStyle(color: colorStatus),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(left: 12, bottom: 5),
                child: Text(time, style: TextStyle(color: colorStatus)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyScheduleHomeworkItem extends StatelessWidget {
  final HomeworkListGroup homework;
  const MyScheduleHomeworkItem({super.key, required this.homework});

  @override
  Widget build(BuildContext context) {
    final group = homework.myGroup;
    final datetime = homework.createdAt;
    if (group == null || datetime == null) return SizedBox();
    final date = DateTime.parse(datetime);
    return Material(
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(5),
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {
            context.router.push(
              HomeworkRouteRoute(
                relationId: homework.id ?? 0,
                groupId: group.group?.id ?? 0,
              ),
            );
          },
          child: Ink(
            width: 200,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: HexColor(group.group!.course!.color!).withAlpha(50),
              border: Border(
                left: BorderSide(
                  color: HexColor(group.group!.course!.color!),
                  width: 5,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  minTileHeight: 30,
                  leading: Icon(
                    Icons.description_outlined,
                    color: HexColor(group.group!.course!.color!),
                  ),
                  minLeadingWidth: 10,
                  contentPadding: EdgeInsets.only(
                    left: 10,
                    right: 0,
                    top: 0,
                    bottom: 0,
                  ),

                  title: Text(
                    homework.homework?.name ?? '- - -',
                    style: TextStyle(
                      color: HexColor(group.group!.course!.color!),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 12, bottom: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      Text(
                        '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}',

                        style: TextStyle(
                          color: HexColor(group.group!.course!.color!),
                        ),
                      ),
                      Text(
                        'education.group_id'.tr(
                          namedArgs: {'id': group.group!.id.toString()},
                        ),
                        style: TextStyle(
                          color: HexColor(group.group!.course!.color!),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyScheduleLessonItem extends StatelessWidget {
  final ScheduledLessonModels lesson;
  const MyScheduleLessonItem({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    final group = lesson.myGroup;
    final datetime = lesson.datetime;
    if (group == null || datetime == null) return SizedBox();
    final date = DateTime.parse(datetime);
    return Material(
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(5),
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {
            context.router.navigate(
              LessonVideoRoute(lessonId: lesson.id!, groupId: group.group!.id!),
            );
          },
          child: Ink(
            width: 200,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: HexColor(group.group!.course!.color!).withAlpha(50),
              border: Border(
                left: BorderSide(
                  color: HexColor(group.group!.course!.color!),
                  width: 5,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  minTileHeight: 30,
                  leading: Icon(
                    Icons.play_lesson,
                    color: HexColor(group.group!.course!.color!),
                  ),
                  minLeadingWidth: 10,
                  contentPadding: EdgeInsets.only(
                    left: 10,
                    right: 0,
                    top: 0,
                    bottom: 0,
                  ),
                  title: Text(
                    'education.group_id'.tr(
                      namedArgs: {'id': group.group!.id.toString()},
                    ),
                    style: TextStyle(
                      color: HexColor(group.group!.course!.color!),
                    ),
                  ),
                  subtitle: Text(
                    '${lesson.lessonNumber} урок',
                    style: TextStyle(
                      color: HexColor(group.group!.course!.color!),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 12, bottom: 5),
                  child: Text(
                    '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}',

                    style: TextStyle(
                      color: HexColor(group.group!.course!.color!),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum WeekNavDir { prev, next }

class WeekProvider extends ChangeNotifier {
  WeekNavDir _dir = WeekNavDir.next;

  late DateTime _currentDate;
  late WeekModel _week;

  WeekProvider({DateTime? initialDate}) {
    _currentDate = initialDate ?? DateTime.now();
    _week = generateWeekModel(_currentDate);
  }

  WeekModel get week => _week;
  DateTime get currentDate => _currentDate;
  WeekNavDir get dir => _dir;

  void nextWeek() {
    _dir = WeekNavDir.next;

    _currentDate = _currentDate.add(const Duration(days: 7));
    _week = generateWeekModel(_currentDate);
    notifyListeners();
  }

  void prevWeek() {
    _dir = WeekNavDir.prev;

    _currentDate = _currentDate.subtract(const Duration(days: 7));
    _week = generateWeekModel(_currentDate);
    notifyListeners();
  }

  void setDate(DateTime date) {
    _currentDate = date;
    _week = generateWeekModel(date);
    notifyListeners();
  }
}

WeekModel generateWeekModel(DateTime date) {
  final DateTime monday = date.subtract(
    Duration(days: date.weekday - DateTime.monday),
  );

  final days = List.generate(7, (i) {
    return DateTime(monday.year, monday.month, monday.day + i);
  });

  final Map<String, int> counter = {};

  for (final d in days) {
    final key = '${d.year}-${d.month}';
    counter[key] = (counter[key] ?? 0) + 1;
  }

  final mainEntry = counter.entries.reduce(
    (a, b) => a.value >= b.value ? a : b,
  );

  final parts = mainEntry.key.split('-');

  return WeekModel(
    days: days,
    mainYear: int.parse(parts[0]),
    mainMonth: int.parse(parts[1]),
  );
}
