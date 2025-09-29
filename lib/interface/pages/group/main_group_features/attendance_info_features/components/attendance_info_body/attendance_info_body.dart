import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_refresh_indicator/md3_refresh_indicator.dart';
import 'package:proweb_student_app/interface/components/pagination_page_view/pagination_page_view.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/attendance_info_features/components/attendance_lesson_item/attendance_lesson_item.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/attendance_info_features/components/base_stats_container/base_stats_container.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/attendance_info_features/components/circul_progress_inpicator_lesson/circul_progress_inpicator_lesson.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/attendance_info_features/components/format_stat_view/format_stat_view.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/attendance_info_features/components/score_stat_view/score_stat_view.dart';
import 'package:proweb_student_app/models/attendance_lesson/attendance_lesson_bloc.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class AttendanceInfoBody extends StatelessWidget {
  final List<GroupLessonInfo> lessons;
  final int complitedLesson;
  final int attendedLesson;
  final GroupDetail group;
  final Version version;
  final int groupId;
  final int? score;
  final int? offline;
  final int? online;

  const AttendanceInfoBody({
    super.key,
    required this.lessons,
    required this.complitedLesson,
    required this.attendedLesson,
    required this.version,
    this.score,
    this.offline,
    this.online,
    required this.groupId,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return Md3RefreshIndicator(
      onRefresh: () async {
        final bloc = context.read<AttendanceLessonBloc>();
        bloc.add(
          AttendanceLessonEvent.started(groupId: groupId, version: version),
        );
        await bloc.stream.first;
      },
      child: ListView(
        children: [
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'attendence.my_attendance_stat'.tr(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 5),
          StatAttendanceSlider(
            lessons: lessons,
            complitedLesson: complitedLesson,
            attendedLesson: attendedLesson,
            group: group,
            version: version,
            groupId: groupId,
            offline: offline,
            online: online,
            score: score,
          ),
          SizedBox(height: 2),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'attendence.my_attendance'.tr(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 15),
          ...List.generate(lessons.length, (index) {
            final lesson = lessons[index];
            return AttendanceLessonItem(lesson: lesson, version: version);
          }),
        ],
      ),
    );
  }
}

class StatAttendanceSlider extends StatefulWidget {
  final List<GroupLessonInfo> lessons;
  final int complitedLesson;
  final int attendedLesson;
  final GroupDetail group;
  final Version version;
  final int groupId;
  final int? score;
  final int? offline;
  final int? online;
  const StatAttendanceSlider({
    super.key,
    required this.lessons,
    required this.complitedLesson,
    required this.attendedLesson,
    required this.group,
    required this.version,
    required this.groupId,
    this.score,
    this.offline,
    this.online,
  });

  @override
  State<StatAttendanceSlider> createState() => _StatAttendanceSliderState();
}

class _StatAttendanceSliderState extends State<StatAttendanceSlider> {
  int pages = 1;
  int activePage = 0;
  double maxHeight = 12;
  final controller = PageController();
  @override
  void initState() {
    super.initState();
    if (widget.offline != null &&
        widget.online != null &&
        widget.online! > 0 &&
        widget.offline! > 0) {
      setState(() {
        pages = pages + 1;
      });
    }
    if (widget.score != null) {
      setState(() {
        pages = pages + 1;
      });
    }
  }

  setPage(int currentPage) {
    setState(() {
      activePage = currentPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          key: ValueKey<int>(1),
          aspectRatio: 16 / 9,
          child: PageView(
            controller: controller,
            onPageChanged: setPage,
            key: ValueKey<int>(2),
            physics: BouncingScrollPhysics(),
            children: [
              BaseStatsContainer(
                child: Column(
                  spacing: 20,
                  children: [
                    CircularProgressIndicatorLesson(
                      complitedLesson: widget.complitedLesson,
                      attendedLesson: widget.attendedLesson,
                      group: widget.group,
                    ),
                    Text('attendence.lessons_attended'.tr()),
                  ],
                ),
              ),
              if (widget.offline != null &&
                  widget.online != null &&
                  widget.online! > 0 &&
                  widget.offline! > 0)
                BaseStatsContainer(
                  padding: EdgeInsets.all(10),
                  child: FormatStatView(
                    attendedLesson: widget.attendedLesson,
                    offline: widget.offline!,
                    online: widget.online!,
                    group: widget.group,
                  ),
                ),
              if (widget.score != null)
                BaseStatsContainer(
                  insertPadding: EdgeInsets.zero,
                  child: ScoreStatView(score: widget.score!),
                ),
            ],
          ),
        ),
        if (pages > 1) SizedBox(height: 5),
        if (pages > 1)
          PaginationPageView(
            controller: controller,
            activePage: activePage,
            length: pages,
          ),
      ],
    );
  }
}
