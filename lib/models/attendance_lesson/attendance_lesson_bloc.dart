import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'attendance_lesson_event.dart';
part 'attendance_lesson_state.dart';
part 'attendance_lesson_bloc.freezed.dart';

class AttendanceLessonBloc extends Bloc<AttendanceLessonEvent, AttendanceLessonState> {
  AttendanceLessonBloc() : super(_Initial()) {
    on<AttendanceLessonEvent>((event, emit) async {
      started(int groupId, Version? version) async {
        emit(AttendanceLessonState.load());
        List<GroupLessonInfo>? lessons = await sl<GetResponsesMain>().lessons(groupId: groupId);
        if (lessons == null) return emit(AttendanceLessonState.error());
        if (version == null) return emit(AttendanceLessonState.error());
        if (version.lessonCount == null) {
          return emit(AttendanceLessonState.error());
        }
        lessons = List.from(lessons);
        lessons.sort((a, b) {
          final bSort = b.groupLesson?.lessonNumber ?? 0;
          final aSort = a.groupLesson?.lessonNumber ?? 0;
          return bSort - aSort;
        });
        final complitedLesson = lessons.length;
        final attendedLesson = lessons
            .where((e) {
              return e.visited ?? false;
            })
            .toList()
            .length;
        final score = _score(lessons);
        final offline = _visitedType(lessons, 'offline');
        final online = _visitedType(lessons, 'online');
        emit(AttendanceLessonState.complited(lessons: lessons, complitedLesson: complitedLesson, attendedLesson: attendedLesson, offline: offline, online: online, score: score, version: version));
      }

      await event.when(started: started);
    });
  }
  _score(List<GroupLessonInfo> lessons) {
    final List<int> scors = [];
    for (var element in lessons) {
      final score = element.score;
      if (score != null) {
        scors.add(score);
      } else {
        scors.add(0);
      }
    }
    if (scors.isEmpty) return [];
    final scoreAmount = scors.reduce((value, element) {
      return value + element;
    });
    final score = (scoreAmount / scors.length).round();
    return score;
  }

  _visitedType(List<GroupLessonInfo> lessons, String type) {
    int visited = 0;
    for (final element in lessons) {
      if (element.visitedType == type) {
        visited++;
      }
    }
    return visited;
  }
}
