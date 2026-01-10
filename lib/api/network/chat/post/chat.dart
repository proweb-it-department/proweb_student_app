import 'package:dio/dio.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class PostResponsesChat {
  Future<void> deleteTg(int id) async {
    final form = FormData.fromMap({'id': id});
    sl<ChatFetch>().post(
      path: '/api/v1/bot/telegram-users/delete/',
      form: form,
    );
  }
}
