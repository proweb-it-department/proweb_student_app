import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/components/widgets/block_lesson_view.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/components/widgets/complite_lesson_view.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/components/widgets/no_audio_lesson_view.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/components/widgets/no_video_lesson_view.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/components/widgets/processing_lesson_view.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/components/widgets/queue_lesson_view.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';

class LessonItemContent extends StatelessWidget {
  final GroupLessonInfo lesson;
  final GroupDetail group;
  const LessonItemContent({
    super.key,
    required this.lesson,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    if ((lesson.accessToLesson == null ||
        lesson.statusVideo == StatusVideoLoad.generate ||
        lesson.accessToVideo == false)) {
      return BlockLessonView(group: group, lesson: lesson);
    } else if (lesson.statusVideo == StatusVideoLoad.noVideos) {
      return NoVideoLessonView(group: group, lesson: lesson);
    } else if (lesson.statusVideo == StatusVideoLoad.noAudioStream) {
      return NoAudioLessonView(group: group, lesson: lesson);
    } else if (lesson.statusVideo == StatusVideoLoad.queue) {
      return QueueLessonView(group: group, lesson: lesson);
    } else if (lesson.statusVideo == StatusVideoLoad.processing) {
      return ProcessingLessonView(group: group, lesson: lesson);
    }
    return CompliteLessonView(group: group, lesson: lesson);
  }
}
