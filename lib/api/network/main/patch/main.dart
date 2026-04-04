import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class PatchResponsesMain {
  Future<void> watchLesson(int lessonId) async {
    String path = '/api/v1/learning-process/lessons/$lessonId/watch/';
    await sl<MainFetch>().patch(path: path);
  }
}
