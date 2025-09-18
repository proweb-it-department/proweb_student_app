import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/user/user.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class UserList {
  List<User> users = [];

  Future<void> findAllUser({List<int>? userIds, int? id}) async {
    List<int> usersResponse = [];
    List<User> usersSearch = [];
    if (userIds != null) {
      usersResponse.addAll(userIds);
    } else if (id != null) {
      usersResponse.add(id);
    }
    if (usersResponse.isNotEmpty) {
      for (var userModel in usersResponse) {
        final userSearchOfList = users.firstWhere(
          (userModelOfList) => userModelOfList.id == userModel,
          orElse: () => User(id: 0, firstName: '', image: '', lastName: '', patronymic: ''),
        );
        if (userSearchOfList.id != 0) {
          usersSearch.add(userSearchOfList);
        }
      }
      final List<int> ids = usersResponse.where((idUser) {
        final userSearchOfList = users.firstWhere(
          (userModelOfList) => userModelOfList.id == idUser,
          orElse: () => User(id: 0, firstName: '', image: '', lastName: '', patronymic: ''),
        );
        if (userSearchOfList.id == 0) return true;
        return false;
      }).toList();
      ids.sort();
      final responseUserForIds = await _getUsersForIds(ids);
      usersSearch.addAll(responseUserForIds);
    }
  }

  Future<List<User>> _getUsersForIds(List<int> userIds) async {
    if (userIds.isNotEmpty) {
      String path = '/api/v1/auth/base-user-list-for-ids/';
      path += '?id=${userIds.join('&id=')}';
      final response = await sl<AuthFetch>().get(path: path);
      final responseList = response.fold<List<User>?>(
        (l) {
          return [];
        },
        (r) {
          final listResponse = ApiResponse<User>.fromJson(r, (data) => User.fromJson(data as Map<String, dynamic>));
          return listResponse.whenOrNull(
            list: (results) {
              return results;
            },
          );
        },
      );
      if (responseList != null) {
        users.addAll(responseList);
        return responseList;
      }
    }
    return [];
  }

  User? find({int? id}) {
    if (id == null) return null;
    final userSearchOfList = users.firstWhere(
      (userModelOfList) => userModelOfList.id == id,
      orElse: () => User(id: 0, firstName: '', image: '', lastName: '', patronymic: ''),
    );
    if (userSearchOfList.id == 0) {
      return null;
    }
    return userSearchOfList;
  }
}
