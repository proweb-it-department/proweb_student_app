import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/components/lessons_item.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class LessonsList extends StatefulWidget {
  final List<GroupLessonInfo> lessons;
  final GroupLessonInfo? currentLesson;
  final GroupDetail group;
  const LessonsList({
    super.key,
    required this.lessons,
    this.currentLesson,
    required this.group,
  });

  @override
  State<LessonsList> createState() => _LessonsListState();
}

class _LessonsListState extends State<LessonsList> {
  late PageController controller;
  String block = '';
  int currentLesson = 1;

  @override
  void initState() {
    final int? lesson = widget.currentLesson?.groupLesson?.lessonNumber;
    if (lesson != null) {
      controller = PageController(initialPage: (lesson - 1));
      setState(() {
        currentLesson = lesson - 1;
      });
    } else {
      controller = PageController();
    }
    if (widget.group.version?.blockLessonCount != null && lesson != null) {
      block = sl<LocalData>().block(
        lesson: lesson.toDouble(),
        blockLessonCount: widget.group.version!.blockLessonCount!.toDouble(),
      );
    } else if (widget.group.version?.blockLessonCount != null) {
      block = sl<LocalData>().block(
        lesson: 1,
        blockLessonCount: widget.group.version!.blockLessonCount!.toDouble(),
      );
    }
    super.initState();
  }

  changePage(int number) {
    setState(() {
      currentLesson = number;
    });
    if (controller.page != null) {
      controller.animateToPage(
        (controller.page! + number).round(),
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  setPage(int page) {
    setState(() {
      currentLesson = page;
    });
    if (widget.group.version!.blockLessonCount != null) {
      setState(() {
        block = sl<LocalData>().block(
          lesson: (page + 1).toDouble(),
          blockLessonCount: widget.group.version!.blockLessonCount!.toDouble(),
        );
      });
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 0, right: 0, bottom: 0),
          decoration: BoxDecoration(color: customColors?.containerColor),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: customColors?.primaryTextColor,
                  disabledBackgroundColor: customColors?.additionalTwo,
                ),
                onPressed: currentLesson.round() == 0
                    ? null
                    : () {
                        changePage(-1);
                      },
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: customColors?.primaryBg,
                ),
              ),
              Text(
                block,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: customColors?.primaryTextColor,
                  disabledBackgroundColor: customColors?.additionalTwo,
                ),
                onPressed: currentLesson.round() == (widget.lessons.length - 1)
                    ? null
                    : () {
                        changePage(1);
                      },
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: customColors?.primaryBg,
                ),
              ),
            ],
          ),
        ),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: PageView(
            controller: controller,
            pageSnapping: false,
            physics: BouncingScrollPhysics(),
            allowImplicitScrolling: true,
            onPageChanged: setPage,
            children: List.generate(widget.lessons.length, (index) {
              final lesson = widget.lessons[index];
              return Padding(
                padding: const EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: LessonsItem(lesson: lesson, group: widget.group),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
