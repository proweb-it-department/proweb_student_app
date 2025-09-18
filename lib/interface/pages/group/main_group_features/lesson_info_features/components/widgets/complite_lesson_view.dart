import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class CompliteLessonView extends StatelessWidget {
  final GroupLessonInfo lesson;
  final GroupDetail group;
  const CompliteLessonView({
    super.key,
    required this.lesson,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          final type = lesson.groupLesson?.type;
          final lessonId = lesson.groupLesson?.id;
          final groupId = group.id;
          if (type != null && lessonId != null && groupId != null) {
            context.router.push(
              LessonVideoRoute(lessonId: lessonId, groupId: groupId),
            );
          }
        },
        child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black.withAlpha(150), Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    sl<LocalData>().blockLesson(
                      lesson: (lesson.groupLesson?.lessonNumber ?? 0)
                          .toDouble(),
                      blockLessonCount: group.version?.blockLessonCount
                          ?.toDouble(),
                      lessonCount: group.version?.lessonCount?.toDouble(),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  if (lesson.groupLesson?.datetime != null)
                    Text(
                      sl<LocalData>().getDateString(
                        date: DateTime.parse(lesson.groupLesson!.datetime!),
                      ),
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  if (lesson.groupLesson?.datetime != null)
                    SizedBox(height: 15),
                  if (lesson.groupLesson?.videos?.firstOrNull?.video?.title !=
                      null)
                    Text(
                      lesson.groupLesson!.videos!.first.video!.title!,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child:
                          lesson.score != null && lesson.score! >= (index + 1)
                          ? Icon(
                              Icons.star,
                              color: customColors?.warningFill,
                              size: 30,
                            )
                          : Icon(
                              Icons.star_border,
                              size: 30,
                              color: Colors.white,
                            ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
