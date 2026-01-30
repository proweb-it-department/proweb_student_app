import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class GetResponsesAuth {
  Future<List<SessionsListItemModel>?> mySessions() async {
    String path = '/api/v1/auth/sessions/my-sessions/?active=true';
    final response = await sl<AuthFetch>().get(path: path);
    List<SessionsListItemModel>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<SessionsListItemModel>.fromJson(
        r,
        (data) => SessionsListItemModel.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    return data;
  }
}
