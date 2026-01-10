import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/telegram_connect_url/telegram_connect_url.dart';
import 'package:proweb_student_app/models/telegram_user/telegram_user.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class GetResponsesChat {
  Future<List<TelegramUser>?> myTgAccount() async {
    String path = '/api/v1/bot/telegram-users/';
    final response = await sl<ChatFetch>().get(path: path);
    List<TelegramUser>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<TelegramUser>.fromJson(
        r,
        (data) => TelegramUser.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<TelegramConnectUrl?> getTgURL(String lang) async {
    String path = '/api/v1/bot/get-url/$lang/';
    final response = await sl<ChatFetch>().get(path: path);
    TelegramConnectUrl? data = response.fold((l) => null, (r) {
      final response = ApiResponse<TelegramConnectUrl>.fromJson(
        r,
        (data) => TelegramConnectUrl.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        results: (results) {
          return results;
        },
      );
    });
    return data;
  }
}
