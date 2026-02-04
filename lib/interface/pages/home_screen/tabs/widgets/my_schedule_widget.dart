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
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/scheduled_lesson_models/scheduled_lesson_models.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Shimmer(
          colorOpacity: 0.2,
          duration: const Duration(seconds: 2),
          interval: Duration(milliseconds: 200),
          color: customColors?.additionalTwo ?? Colors.transparent,
          child: MyScheduleCalendar(isDisabled: true),
        ),
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
      complited: (_, _) => false,
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
          ) =>
            MyScheduleCalendar(lessons: lessons, myVisits: myVisits),
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
  const MyScheduleCalendar({
    super.key,
    this.isDisabled = false,
    this.lessons,
    this.myVisits,
  });

  @override
  Widget build(BuildContext context) {
    final time = sl<LocalData>().getTime();
    final date = DateTime.fromMillisecondsSinceEpoch(time.round());
    final customColors = Theme.of(context).extension<CustomColors>();
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: isDisabled ? 0 : 10),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: customColors?.primaryBg,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: customColors?.borderColor ?? Colors.transparent,
            width: 2,
          ),
        ),
        child: ChangeNotifierProvider(
          create: (_) => WeekProvider(initialDate: DateTime(2025, 11, 18)),
          child: WeekView(
            isDisabled: isDisabled,
            lessons: lessons,
            myVisits: myVisits,
          ),
        ),
      ),
    );
  }
}

class WeekView extends StatelessWidget {
  final bool isDisabled;
  final TsMap<String, List<ScheduledLessonModels>>? lessons;
  final TsMap<String, List<CoworkingListReserve>>? myVisits;
  const WeekView({
    super.key,
    this.isDisabled = false,
    this.lessons,
    this.myVisits,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<WeekProvider>();
    final week = provider.week;
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 10,
          children: [
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
            Text(
              sl<LocalData>().getDateString(
                date: DateTime.parse(
                  '${week.mainYear}-${week.mainMonth.toString().padLeft(2, '0')}-01',
                ),
                seporator: DateSeporator.wMY,
              ),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
          ],
        ),
        Container(
          width: double.infinity,
          height: 320,
          decoration: BoxDecoration(
            color: customColors?.containerColor,
            border: Border.all(
              color: customColors?.borderColor ?? Colors.transparent,
              width: 1,
            ),
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(15),
            child: ListView(
              physics: isDisabled
                  ? NeverScrollableScrollPhysics()
                  : BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: week.days.map((e) {
                final date = sl<LocalData>().getDateString(
                  date: e,
                  seporator: DateSeporator.dash,
                );
                final lessonDay = lessons?.get(date) ?? [];
                final myVisitsDay = myVisits?.get(date) ?? [];
                return WeekItemDay(
                  date: e,
                  lessons: lessonDay,
                  visits: myVisitsDay,
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class WeekItemDay extends StatelessWidget {
  final DateTime date;
  final List<ScheduledLessonModels> lessons;
  final List<CoworkingListReserve> visits;
  const WeekItemDay({
    super.key,
    required this.date,
    required this.lessons,
    required this.visits,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final week = date.weekday;
    return Container(
      width: 200,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: customColors?.containerColor,
        border: Border(
          left: week < 8 && week > 1
              ? BorderSide(
                  color: customColors?.borderColors ?? Colors.transparent,
                )
              : BorderSide.none,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: customColors?.borderColors ?? Colors.transparent,
                  width: 1,
                ),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: lessons.isNotEmpty
                    ? customColors?.primaryBg
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                '${sl<LocalData>().getDateString(date: date, seporator: DateSeporator.day)} | ${date.day.toString().padLeft(2, '0')}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(5),
              physics: BouncingScrollPhysics(),
              child: Column(
                spacing: 5,
                children: [
                  if (visits.isNotEmpty)
                    ...(visits
                        .map((e) => MyScheduleVisitItem(visit: e))
                        .toList()),
                  if (lessons.isNotEmpty)
                    ...(lessons
                        .map((e) => MyScheduleLessonItem(lesson: e))
                        .toList()),
                ],
              ),
            ),
          ),
        ],
      ),
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
    time =
        '${datetime.hour.toString().padLeft(2, '0')}:${datetime.minute.toString().padLeft(2, '0')}';
    return Material(
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(5),
        child: Ink(
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
        child: Container(
          decoration: BoxDecoration(
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
    );
  }
}

class WeekProvider extends ChangeNotifier {
  late DateTime _currentDate;
  late WeekModel _week;

  WeekProvider({DateTime? initialDate}) {
    _currentDate = initialDate ?? DateTime.now();
    _week = generateWeekModel(_currentDate);
  }

  WeekModel get week => _week;

  void nextWeek() {
    _currentDate = _currentDate.add(const Duration(days: 7));
    _week = generateWeekModel(_currentDate);
    notifyListeners();
  }

  void prevWeek() {
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
