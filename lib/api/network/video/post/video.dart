import 'package:dio/dio.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class PostResponsesVideo {
  Future<void> watched(FormData form) async {
    String path = '/api/v1/video/watch/';
    await sl<VideoFetch>().post(path: path, form: form);
  }
}
