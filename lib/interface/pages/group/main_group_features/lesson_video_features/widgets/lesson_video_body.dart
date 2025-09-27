import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/lesson_video/lesson_video_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_video_features/widgets/lesson_video_content.dart';

class LessonVideoBody extends StatelessWidget {
  final int lessonId;
  final int groupId;

  const LessonVideoBody({
    super.key,
    required this.lessonId,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonVideoBloc, LessonVideoState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          load: () => Center(child: Md3CirculeIndicator()),
          error: () {
            return Center(
              child: ErrorLoad(
                action: FilledButton(
                  onPressed: () {
                    final bloc = context.read<LessonVideoBloc>();
                    bloc.add(
                      LessonVideoEvent.started(
                        groupId: groupId,
                        lessonId: lessonId,
                      ),
                    );
                  },
                  child: Text('global_data.try_again'.tr()),
                ),
              ),
            );
          },
          complite: (lesson, groupUser) {
            if (lesson.accessToLesson == false) {
              return Center(
                child: NoData(
                  text: 'group.Access_to_the_lesson_is_closed'.tr(),
                  icon: Icons.cloud_off_rounded,
                ),
              );
            }
            if (lesson.accessToVideo == false) {
              return Center(
                child: NoData(
                  text: 'group.Access_to_the_video_has_been_closed'.tr(),
                  icon: Icons.videocam_off,
                ),
              );
            }

            return LessonVideoContent(groupUser: groupUser, lesson: lesson);
          },
        );
      },
    );
  }
}
