import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/balance/balance.dart';
import 'package:proweb_student_app/models/branche/branche.dart';
import 'package:proweb_student_app/models/category_product/category_product.dart';
import 'package:proweb_student_app/models/course_model/course_model.dart';
import 'package:proweb_student_app/models/course_version_modal/course_version_model.dart';
import 'package:proweb_student_app/models/coworking_info/coworking_info.dart';
import 'package:proweb_student_app/models/coworking_list_reserve/coworking_list_reserve.dart';
import 'package:proweb_student_app/models/feadbacks_page_item/feadbacks_page_item.dart';
import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/models/group_user/group_user.dart';
import 'package:proweb_student_app/models/holiday/holiday.dart';
import 'package:proweb_student_app/models/homework_group/homework_group.dart';
import 'package:proweb_student_app/models/homework_list_group/homework_list_group.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/models/material_homepage_group/material_homepage_group.dart';
import 'package:proweb_student_app/models/material_list_group/material_list_group.dart';
import 'package:proweb_student_app/models/material_module_item/material_module_item.dart';
import 'package:proweb_student_app/models/material_student_relation/material_student_relation.dart';
import 'package:proweb_student_app/models/module_material/module_material.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/my_purchases/my_purchases.dart';
import 'package:proweb_student_app/models/my_purchases_service/my_purchases_service.dart';
import 'package:proweb_student_app/models/my_purchases_tarif/my_purchases_tarif.dart';
import 'package:proweb_student_app/models/nps_poll/nps_poll.dart';
import 'package:proweb_student_app/models/payments_provider/payments_provider.dart';
import 'package:proweb_student_app/models/poll_detail/poll_detail.dart';
import 'package:proweb_student_app/models/product_module_access.dart';
import 'package:proweb_student_app/models/products/products.dart';
import 'package:proweb_student_app/models/products_modules/products_modules.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/room/room.dart';
import 'package:proweb_student_app/models/scheduled_lesson_models/scheduled_lesson_models.dart';
import 'package:proweb_student_app/models/seat_item/seat_item.dart';
import 'package:proweb_student_app/models/servise_for_sale/servise_for_sale.dart';
import 'package:proweb_student_app/models/story_groups_for_student/story_groups_for_student.dart';
import 'package:proweb_student_app/models/tarif_model/tarif_model.dart';
import 'package:proweb_student_app/models/test_list_group/test_list_group.dart';
import 'package:proweb_student_app/models/test_student_relation/test_student_relation.dart';
import 'package:proweb_student_app/models/ticket/ticket.dart';
import 'package:proweb_student_app/models/transactions_student/transactions_student.dart';
import 'package:proweb_student_app/models/user_course_ratings/user_course_ratings.dart';
import 'package:proweb_student_app/models/user_skill/user_skill.dart';
import 'package:proweb_student_app/models/user_total_position/user_total_position.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/ts_map.dart';
import 'package:proweb_student_app/utils/user_list/user_list.dart';

typedef MapHomework = TsMap<String, List<HomeworkStudentRelationGroup>>;
typedef DataHomeHomework = ResponseLazeMap<MapHomework>;
typedef MapMaterial = TsMap<String, List<MaterialHomepageGroup>>;
typedef DataHomeMaterial = ResponseLazeMap<MapMaterial>;
typedef MapTesting = TsMap<String, List<TestListGroup>>;
typedef DataHomeTesting = ResponseLazeMap<MapTesting>;

class GetResponsesMain {
  Future<List<StoryGroupsForStudent>?> story({
    String languageCode = 'ru',
  }) async {
    String deviceType = 'android';

    if (Platform.isIOS) {
      deviceType = 'ios';
    }
    String path =
        '/api/v1/stories/story-groups-for-student/?device_type=$deviceType&language_code=$languageCode';
    final response = await sl<MainFetch>().get(path: path);
    List<StoryGroupsForStudent>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<StoryGroupsForStudent>.fromJson(
        r,
        (data) => StoryGroupsForStudent.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<GroupDetail?> groupDetail({required int groupId}) async {
    String path = '/api/v1/groups/$groupId/';
    final response = await sl<MainFetch>().get(path: path);
    GroupDetail? data = response.fold((l) => null, (r) {
      final response = ApiResponse<GroupDetail>.fromJson(
        r,
        (data) => GroupDetail.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        results: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<List<GroupLessonInfo>?> lessons({
    required int groupId,
    String type = 'main',
  }) async {
    String path =
        '/api/v1/learning-process/lessons/relations/$groupId/student-lessons/?type=$type';
    final response = await sl<MainFetch>().get(path: path);
    List<GroupLessonInfo>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<GroupLessonInfo>.fromJson(
        r,
        (data) => GroupLessonInfo.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<List<GroupUser>?> groupUsers({required int groupId}) async {
    String path = '/api/v1/groups/$groupId/users/';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(days: 2),
    );
    List<GroupUser>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<GroupUser>.fromJson(
        r,
        (data) => GroupUser.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    if (data != null) {
      final List<int> userIds = [];
      for (var element in data) {
        final userId = element.user?.userId;
        if (userId != null) {
          userIds.add(userId);
        }
      }
      await sl<UserList>().findAllUser(userIds: userIds);
      data = data.map((e) {
        final userId = e.user?.userId;
        final user = sl<UserList>().find(id: userId);
        if (user != null) {
          e = e.copyWith(user: e.user?.copyWith(user: user));
        }
        return e;
      }).toList();
    }
    return data;
  }

  Future<List<ScheduledLessonModels>?> myScheduleLesson({
    required int groupId,
    String type = 'main',
  }) async {
    String path =
        '/api/v1/learning-process/group-lessons/?group_id=$groupId&type=$type';
    final response = await sl<MainFetch>().get(path: path, cache: false);
    List<ScheduledLessonModels>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<ScheduledLessonModels>.fromJson(
        r,
        (data) => ScheduledLessonModels.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });

    return data;
  }

  Future<List<HomeworkStudentRelationGroup>?> homeworksStudents({
    required int groupId,
  }) async {
    String path = '/api/v1/learning-process/group/$groupId/students/homeworks/';
    final response = await sl<MainFetch>().get(path: path);
    List<HomeworkStudentRelationGroup>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<HomeworkStudentRelationGroup>.fromJson(
        r,
        (data) =>
            HomeworkStudentRelationGroup.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    if (data != null) {
      final List<int> userIds = [];
      for (var element in data) {
        final userId = element.student?.user?.userId;
        if (userId != null) {
          userIds.add(userId);
        }
      }
      await sl<UserList>().findAllUser(userIds: userIds);
      data = data.map((e) {
        final userId = e.student?.user?.userId;
        final user = sl<UserList>().find(id: userId);
        if (user != null) {
          e = e.copyWith(
            student: e.student?.copyWith(
              user: e.student?.user?.copyWith(user: user),
            ),
          );
        }
        return e;
      }).toList();
    }
    return data;
  }

  Future<List<TestStudentRelation>?> testingsStudents({
    required int groupId,
  }) async {
    String path = '/api/v1/learning-process/group/$groupId/students/testings/';
    final response = await sl<MainFetch>().get(path: path);
    List<TestStudentRelation>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<TestStudentRelation>.fromJson(
        r,
        (data) => TestStudentRelation.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    if (data != null) {
      final List<int> userIds = [];
      for (var element in data) {
        final userId = element.student?.user?.userId;
        if (userId != null) {
          userIds.add(userId);
        }
      }
      await sl<UserList>().findAllUser(userIds: userIds);
      data = data.map((e) {
        final userId = e.student?.user?.userId;
        final user = sl<UserList>().find(id: userId);
        if (user != null) {
          e = e.copyWith(
            student: e.student?.copyWith(
              user: e.student?.user?.copyWith(user: user),
            ),
          );
        }
        return e;
      }).toList();
    }
    return data;
  }

  Future<List<CourseVersionModel>?> groupVersion({
    required int versionId,
  }) async {
    String path = '/api/v1/courses/versions/$versionId/modules/';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(days: 10),
    );
    List<CourseVersionModel>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<CourseVersionModel>.fromJson(
        r,
        (data) => CourseVersionModel.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<HomeworkListGroup>?> homeworkList({
    required int groupId,
    required int limit,
    required int offset,
  }) async {
    String path =
        '/api/v1/learning-process/students/homeworks/?group_id=$groupId&limit=$limit&offset=$offset';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<HomeworkListGroup>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<HomeworkListGroup>.fromJson(
        r,
        (data) => HomeworkListGroup.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<HomeworkListGroup>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<NpsPoll>?> npsPollActive({
    required int limit,
    required int offset,
  }) async {
    String path =
        '/api/v1/poll/student-poll-student/?completed=no&limit=$limit&offset=$offset';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<NpsPoll>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<NpsPoll>.fromJson(
        r,
        (data) => NpsPoll.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<NpsPoll>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<HomeworkListGroup>?> homeworkListStudentIds({
    required List<int> studentIds,
  }) async {
    String path =
        '/api/v1/learning-process/students/homeworks/?student_id_list=${studentIds.join('&student_id_list=')}&limit=1000&offset=0';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<HomeworkListGroup>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<HomeworkListGroup>.fromJson(
        r,
        (data) => HomeworkListGroup.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<HomeworkListGroup>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<MaterialListGroup>?> materialList({
    required int groupId,
    required int limit,
    required int offset,
  }) async {
    String path =
        '/api/v1/learning-process/students/materials/?group_id=$groupId&limit=$limit&offset=$offset';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<MaterialListGroup>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<MaterialListGroup>.fromJson(
        r,
        (data) => MaterialListGroup.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<MaterialListGroup>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<HomeworkGroup?> homeworkItem({required int homeworkId}) async {
    String path = '/api/v1/courses/homeworks/$homeworkId/';
    final response = await sl<MainFetch>().get(path: path);
    HomeworkGroup? data = response.fold((l) => null, (r) {
      final response = ApiResponse<HomeworkGroup>.fromJson(
        r,
        (data) => HomeworkGroup.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        results: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<PollDetail?> pollDetail({required int pollId}) async {
    String path = '/api/v1/poll/$pollId/';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(days: 2),
    );
    PollDetail? data = response.fold((l) => null, (r) {
      final response = ApiResponse<PollDetail>.fromJson(
        r,
        (data) => PollDetail.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        results: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<List<GlobalComment>?> globalComment({
    required GlobalCommentTypeb type,
    required int objectId,
  }) async {
    String path =
        '/api/v1/comments/?object_id=$objectId&content_type=${type.name}';
    final response = await sl<MainFetch>().get(path: path);
    List<GlobalComment>? data = response.fold(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<GlobalComment>.fromJson(
          r,
          (data) => GlobalComment.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          list: (results) {
            return results;
          },
        );
      },
    );
    if (data != null) {
      List<int> userIds = [];
      for (var element in data) {
        if ((element.createdBy?.id ?? element.createdBy?.userId) != null) {
          userIds.add((element.createdBy?.id ?? element.createdBy?.userId)!);
        }
      }
      userIds = userIds.toSet().toList();
      if (userIds.isNotEmpty) {
        await sl<UserList>().findAllUser(userIds: userIds);
        data = data.map((e) {
          if ((e.createdBy?.id ?? e.createdBy?.userId) != null) {
            final user = sl<UserList>().find(
              id: (e.createdBy?.id ?? e.createdBy?.userId),
            );
            if (user != null) {
              return e.copyWith(createdBy: e.createdBy?.copyWith(user: user));
            }
          }
          return e;
        }).toList();
      }
    }
    return data;
  }

  Future<HomeworkStudentRelationGroup?> studentRelationHomework({
    required int studentHomeworkId,
  }) async {
    String path =
        '/api/v1/learning-process/students/homeworks/$studentHomeworkId/';
    final response = await sl<MainFetch>().get(path: path);
    HomeworkStudentRelationGroup? data = response.fold((l) => null, (r) {
      final response = ApiResponse<HomeworkStudentRelationGroup>.fromJson(
        r,
        (data) =>
            HomeworkStudentRelationGroup.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        results: (results) {
          return results;
        },
      );
    });
    if (data != null) {
      final userId = data.createdBy?.id ?? data.createdBy?.userId;
      if (userId != null) {
        await sl<UserList>().findAllUser(id: userId);
        final user = sl<UserList>().find(id: userId);
        if (user != null) {
          data = data.copyWith(createdBy: data.createdBy?.copyWith(user: user));
        }
      }
    }
    return data;
  }

  Future<ResponseLazeList<TestListGroup>?> testList({
    required int groupId,
    required int limit,
    required int offset,
  }) async {
    String path =
        '/api/v1/learning-process/students/testings/?group_id=$groupId&limit=$limit&offset=$offset';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<TestListGroup>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<TestListGroup>.fromJson(
        r,
        (data) => TestListGroup.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<TestListGroup>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<Balance?> balance() async {
    final response = await sl<MainFetch>().get(path: '/api/v1/balance/');
    final balance = response.fold<Balance?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<Balance>.fromJson(
          r,
          (data) => Balance.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (results) {
            return results;
          },
        );
      },
    );

    return balance;
  }

  Future<ProCoinBalance?> procoin() async {
    final profile = sl<LocalData>().profile;
    final userId = profile?.id;
    if (userId == null) return null;
    final response = await sl<MainFetch>().get(
      path: '/api/v1/store/coin-balances/$userId/',
    );
    final balance = response.fold<ProCoinBalance?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<ProCoinBalance>.fromJson(
          r,
          (data) => ProCoinBalance.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (results) {
            return results;
          },
        );
      },
    );

    return balance;
  }

  Future<List<MyGroupsItem>?> myGroups() async {
    String path = '/api/v1/groups/my-groups/';
    final response = await sl<MainFetch>().get(path: path);
    final myGroups = response.fold<List<MyGroupsItem>?>(
      (l) {
        final map = l.response?.data;
        if (map != null && map.runtimeType == Map && map['detail'] != null) {
          Fluttertoast.showToast(msg: map['detail']);
        }
        return null;
      },
      (r) {
        final response = ApiResponse<MyGroupsItem>.fromJson(
          r,
          (data) => MyGroupsItem.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          lazylist: (indexed, results) {
            return results;
          },
        );
      },
    );
    return myGroups;
  }

  Future<ResponseLazeList<TransactionsStudent>?> transactions({
    required int limit,
    required int offset,
  }) async {
    String path =
        '/api/v1/transactions/balance-transactios/my/?limit=$limit&offset=$offset';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<TransactionsStudent>? data = response.fold((l) => null, (
      r,
    ) {
      final response = ApiResponse<TransactionsStudent>.fromJson(
        r,
        (data) => TransactionsStudent.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<TransactionsStudent>(
            count: count,
            list: list,
          );
        },
      );
    });
    return data;
  }

  Future<TestStudentRelation?> testItem({required int testId}) async {
    String path = '/api/v1/learning-process/students/testings/$testId/';
    final response = await sl<MainFetch>().get(path: path);
    TestStudentRelation? data = response.fold((l) => null, (r) {
      final response = ApiResponse<TestStudentRelation>.fromJson(
        r,
        (data) => TestStudentRelation.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        results: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<List<PaymentsProviderModel>?> paymentsProvider() async {
    String path = '/api/v1/payments/common/providers/';
    final response = await sl<MainFetch>().get(path: path);
    List<PaymentsProviderModel>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<PaymentsProviderModel>.fromJson(
        r,
        (data) => PaymentsProviderModel.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<GroupLessonInfo?> currentLesson({required int lessonId}) async {
    String path =
        '/api/v1/learning-process/lessons/relations/$lessonId/student/';
    final response = await sl<MainFetch>().get(path: path);
    GroupLessonInfo? data = response.fold((l) => null, (r) {
      final response = ApiResponse<GroupLessonInfo>.fromJson(
        r,
        (data) => GroupLessonInfo.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        results: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<MaterialStudentRelation?> materialItem({
    required int materialId,
  }) async {
    String path = '/api/v1/courses/materials/$materialId/';
    final response = await sl<MainFetch>().get(path: path);
    MaterialStudentRelation? data = response.fold((l) => null, (r) {
      final response = ApiResponse<MaterialStudentRelation>.fromJson(
        r,
        (data) =>
            MaterialStudentRelation.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        results: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<UserTotalPosition>?> positionsList(
    int offset,
    int limit,
    int? courseId,
    int? groupId,
  ) async {
    String params = courseId != null || groupId != null
        ? '&${courseId != null ? 'course_id=$courseId' : ''}${groupId != null ? '${courseId != null ? '&' : ''}group_id=$groupId' : ''}'
        : '';
    String path =
        '/api/v1/ratings/positions/?offset=$offset&limit=$limit$params';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(hours: 6),
    );
    var data = response.fold<ResponseLazeList<UserTotalPosition>?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<UserTotalPosition>.fromJson(
          r,
          (data) => UserTotalPosition.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          lazylist: (count, results) {
            return ResponseLazeList<UserTotalPosition>(
              count: count,
              list: results,
            );
          },
        );
      },
    );
    if (data != null) {
      if (data.list.isNotEmpty) {
        final userIds = data.list
            .map((e) => e.userId ?? 0)
            .where((element) => element > 0)
            .toList();

        if (userIds.isNotEmpty) {
          await sl<UserList>().findAllUser(userIds: userIds);
          data = ResponseLazeList<UserTotalPosition>(
            count: data.count,
            list: data.list.map((e) {
              final find = sl<UserList>().find(id: e.userId);
              if (find != null) {
                return e.copyWith(user: find);
              }
              return e;
            }).toList(),
          );
        }
      }
    }
    return data;
  }

  Future<UserTotalPosition?> position(
    int userId,
    int? courseId,
    int? groupId,
  ) async {
    String params = courseId != null || groupId != null
        ? '?${courseId != null ? 'course_id=$courseId' : ''}${groupId != null ? '${courseId != null ? '&' : ''}group_id=$groupId' : ''}'
        : '';
    String path = '/api/v1/ratings/positions/$userId/$params';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(hours: 6),
    );
    final data = response.fold<UserTotalPosition?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<UserTotalPosition>.fromJson(
          r,
          (data) => UserTotalPosition.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (results) {
            return results;
          },
        );
      },
    );
    return data;
  }

  Future<ResponseLazeList<CourseModel>?> courses({
    required String language,
  }) async {
    String path = '/api/v1/courses/?language=$language&offset=0&limit=100';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(days: 5),
    );
    ResponseLazeList<CourseModel>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<CourseModel>.fromJson(
        r,
        (data) => CourseModel.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<CourseModel>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<List<UserCourseRatings>?> getUserCourseRating(int userId) async {
    String path = '/api/v1/ratings/user-course-ratings/$userId/';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(hours: 6),
    );
    final data = response.fold<List<UserCourseRatings>?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<UserCourseRatings>.fromJson(
          r,
          (data) => UserCourseRatings.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          list: (results) {
            return results;
          },
        );
      },
    );
    return data;
  }

  Future<List<UserSkill>?> skills(int userId) async {
    String path = '/api/v1/ratings/user-skills/$userId/';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(hours: 6),
    );
    final data = response.fold<List<UserSkill>?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<UserSkill>.fromJson(
          r,
          (data) => UserSkill.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          list: (results) {
            return results;
          },
        );
      },
    );
    return data;
  }

  Future<ResponseLazeList<CoworkingListReserve>?> coworkingList({
    required int limit,
    required int offset,
  }) async {
    String path =
        '/api/v1/coworking/students/visits/my-visits/?limit=$limit&offset=$offset';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<CoworkingListReserve>? data = response.fold((l) => null, (
      r,
    ) {
      final response = ApiResponse<CoworkingListReserve>.fromJson(
        r,
        (data) => CoworkingListReserve.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<CoworkingListReserve>(
            count: count,
            list: list,
          );
        },
      );
    });
    if (data != null && data.list.isNotEmpty) {
      List<int> userIds = [];
      for (var element in data.list) {
        final idCoworker = element.coworkerUserId;
        if (idCoworker != null) {
          userIds.add(idCoworker);
        }
        final idTeacher = element.teacherUserId;
        if (idTeacher != null) {
          userIds.add(idTeacher);
        }
      }
      userIds = userIds.toSet().toList();
      if (userIds.isNotEmpty) {
        await sl<UserList>().findAllUser(userIds: userIds);
        final users = [...data.list].map((e) {
          CoworkingListReserve coworking = e;
          final idCoworker = coworking.coworkerUserId;
          final user = sl<UserList>().find(id: idCoworker);
          if (user != null) {
            coworking = coworking.copyWith(coworker: user);
          }
          final idTeacher = coworking.teacherUserId;
          final userTeacher = sl<UserList>().find(id: idTeacher);
          if (userTeacher != null) {
            coworking = coworking.copyWith(teacher: userTeacher);
          }

          return coworking;
        }).toList();
        data = ResponseLazeList<CoworkingListReserve>(
          count: data.count,
          list: users,
        );
      }
    }
    return data;
  }

  Future<CoworkingInfo?> coworkingInfo({required String langaugeCode}) async {
    String path = '/api/v1/coworking/info/get/$langaugeCode/';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(days: 3),
    );
    CoworkingInfo? data = response.fold((l) => null, (r) {
      final response = ApiResponse<CoworkingInfo>.fromJson(
        r,
        (data) => CoworkingInfo.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        results: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<List<SeatItem>?> roomSeat({required int cabinetId}) async {
    String path = '/api/v1/branches/cabinets/$cabinetId/seats/';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(days: 2),
    );
    List<SeatItem>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<SeatItem>.fromJson(
        r,
        (data) => SeatItem.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<List<Branche>?> branch() async {
    String path = '/api/v1/branches/?active=true';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(days: 2),
    );
    List<Branche>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<Branche>.fromJson(
        r,
        (data) => Branche.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<List<Room>?> room({required int branchId}) async {
    String path =
        '/api/v1/branches/cabinets/?branch_id=$branchId&type=coworking';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(days: 2),
    );
    List<Room>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<Room>.fromJson(
        r,
        (data) => Room.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<List<Holiday>?> holidays() async {
    String path = '/api/v1/core/holidays/?active=true';
    final response = await sl<MainFetch>().get(path: path);
    List<Holiday>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<Holiday>.fromJson(
        r,
        (data) => Holiday.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (results) {
          return results;
        },
      );
    });
    return data;
  }

  Future<Ticket?> feadbackItem({required int id}) async {
    String path = '/api/v1/feedback/tickets/$id/';
    final response = await sl<MainFetch>().get(path: path);
    Ticket? data = response.fold((l) => null, (r) {
      final response = ApiResponse<Ticket>.fromJson(
        r,
        (data) => Ticket.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        results: (results) {
          return results;
        },
      );
    });
    if (data != null) {
      List<int> userIds = [];
      final responsibleUser = data.responsibleUser?.userId;
      final offerList = data.closingOffers;
      if (responsibleUser != null) {
        userIds.add(responsibleUser);
      }
      if (offerList != null) {
        for (var offeritem in offerList) {
          final createdId = offeritem.createdBy?.userId;
          if (createdId != null) {
            userIds.add(createdId);
          }
        }
      }
      final closeUserId = data.closedUser?.userId;
      if (closeUserId != null) {
        userIds.add(closeUserId);
      }
      if (userIds.isNotEmpty) {
        await sl<UserList>().findAllUser(userIds: userIds);
        final responsibleUser = data.responsibleUser?.userId;
        if (responsibleUser != null) {
          data = data.copyWith(
            responsibleUser: data.responsibleUser?.copyWith(
              user: sl<UserList>().find(id: responsibleUser),
            ),
          );
        }
      }
    }
    return data;
  }

  Future<ResponseLazeList<FeadbacksPageItem>?> feadbackList({
    required int limit,
    required int offset,
  }) async {
    String path =
        '/api/v1/feedback/tickets/student-tickets/?limit=$limit&offset=$offset';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<FeadbacksPageItem>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<FeadbacksPageItem>.fromJson(
        r,
        (data) => FeadbacksPageItem.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<FeadbacksPageItem>(count: count, list: list);
        },
      );
    });
    if (data != null) {
      List<int> userIds = [];
      for (var element in data.list) {
        final openedUser = element.openedUser?.userId;
        final closedUser = element.closedUser?.userId;
        final responsibleUser = element.responsibleUser?.userId;
        final offers = element.closingOffers;
        if (openedUser != null) userIds.add(openedUser);
        if (closedUser != null) userIds.add(closedUser);
        if (responsibleUser != null) userIds.add(responsibleUser);
        if (offers != null) {
          for (var offer in offers) {
            final createdBy = offer.createdBy?.userId;
            if (createdBy != null) userIds.add(createdBy);
          }
        }
      }
      if (userIds.isNotEmpty) {
        userIds = userIds.toSet().toList();
        await sl<UserList>().findAllUser(userIds: userIds);
        data = ResponseLazeList(
          count: data.count,
          list: data.list.map((e) {
            final openedUser = e.openedUser?.userId;
            final closedUser = e.closedUser?.userId;
            final responsibleUser = e.responsibleUser?.userId;
            if (openedUser != null) {
              final user = sl<UserList>().find(id: openedUser);
              e = e.copyWith(openedUser: e.openedUser?.copyWith(user: user));
            }
            if (closedUser != null) {
              final user = sl<UserList>().find(id: closedUser);
              e = e.copyWith(closedUser: e.closedUser?.copyWith(user: user));
            }
            if (responsibleUser != null) {
              final user = sl<UserList>().find(id: responsibleUser);
              e = e.copyWith(
                responsibleUser: e.responsibleUser?.copyWith(user: user),
              );
            }
            final offers = e.closingOffers;
            if (offers != null && offers.isNotEmpty) {
              final offersData = [...offers].map((el) {
                final createdBy = el.createdBy?.userId;
                if (createdBy != null) {
                  final user = sl<UserList>().find(id: responsibleUser);
                  el = el.copyWith(
                    createdBy: el.createdBy?.copyWith(user: user),
                  );
                }
                return el;
              }).toList();
              e = e.copyWith(closingOffers: offersData);
            }
            return e;
          }).toList(),
        );
      }
    }
    return data;
  }

  Future<List<CategoryProduct>?> productsCategories() async {
    String path = '/api/v1/products/categories/';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(days: 3),
    );
    List<CategoryProduct>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<CategoryProduct>.fromJson(
        r,
        (data) => CategoryProduct.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        list: (list) {
          return list;
        },
      );
    });
    return data;
  }

  Future<List<MyPurchases>?> myPurchasedList() async {
    String path = '/api/v1/products/purchased/my-purchases/?offset=0&limit=300';
    final response = await sl<MainFetch>().get(path: path);
    List<MyPurchases>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<MyPurchases>.fromJson(r, (data) {
        return MyPurchases.fromJson(data as Map<String, dynamic>);
      });
      return response.whenOrNull(
        lazylist: (count, list) {
          return list;
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<MyPurchases>?> myPurchasedProductList(
    int? categoryId,
  ) async {
    String path = '/api/v1/products/purchased/my-purchases/?offset=0&limit=300';
    if (categoryId != null) {
      path += '&category_id=$categoryId';
    }
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<MyPurchases>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<MyPurchases>.fromJson(r, (data) {
        return MyPurchases.fromJson(data as Map<String, dynamic>);
      });
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<Products>?> forSaleProduct(
    int offset,
    int limit,
    String? language,
    int? categoryId,
  ) async {
    String path = '/api/v1/products/for-sale/?offset=$offset&limit=$limit';
    if (language != null) path += '&language=$language';
    if (categoryId != null) path += '&category_id=$categoryId';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<Products>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<Products>.fromJson(
        r,
        (data) => Products.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<Products>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<ServiseForSale>?> forSaleService(
    int offset,
    int limit,
  ) async {
    String path = '/api/v1/packages/services/for-sale/?offset=$offset&$limit';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<ServiseForSale>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<ServiseForSale>.fromJson(
        r,
        (data) => ServiseForSale.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<ServiseForSale>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<TarifForSale>?> forSaleTarif(
    int offset,
    int limit,
  ) async {
    String path = '/api/v1/packages/for-sale/?offset=$offset&$limit';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<TarifForSale>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<TarifForSale>.fromJson(
        r,
        (data) => TarifForSale.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<TarifForSale>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<MyPurchasesService>?> myPurchasesService(
    int offset,
    int limit,
  ) async {
    String path =
        '/api/v1/packages/services/purchased/my-purchases/?offset=$offset&$limit';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<MyPurchasesService>? data = response.fold((l) => null, (
      r,
    ) {
      final response = ApiResponse<MyPurchasesService>.fromJson(
        r,
        (data) => MyPurchasesService.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<MyPurchasesService>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<ResponseLazeList<MyPurchasesTarif>?> myPurchasesTarif(
    int offset,
    int limit,
  ) async {
    String path =
        '/api/v1/packages/purchased/my-purchases/?offset=$offset&$limit';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<MyPurchasesTarif>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<MyPurchasesTarif>.fromJson(
        r,
        (data) => MyPurchasesTarif.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) {
          return ResponseLazeList<MyPurchasesTarif>(count: count, list: list);
        },
      );
    });
    return data;
  }

  Future<Products?> productDitail(int productId) async {
    String path = '/api/v1/products/$productId/';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(hours: 2),
    );
    Products? data = response.fold((l) => null, (r) {
      final response = ApiResponse<Products>.fromJson(
        r,
        (data) => Products.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(results: (results) => results);
    });
    return data;
  }

  Future<List<ProductsModules>?> productModules(int productId) async {
    String path = '/api/v1/products/$productId/modules/';
    final response = await sl<MainFetch>().get(path: path);
    List<ProductsModules>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<ProductsModules>.fromJson(
        r,
        (data) => ProductsModules.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(list: (list) => list);
    });
    return data;
  }

  Future<List<ProductModuleAccess>?> productModuleAccess(
    int purchasedId,
  ) async {
    String path = '/api/v1/products/purchased/$purchasedId/module-accesses/';
    final response = await sl<MainFetch>().get(path: path);
    List<ProductModuleAccess>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<ProductModuleAccess>.fromJson(
        r,
        (data) => ProductModuleAccess.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(list: (list) => list);
    });
    return data;
  }

  Future<List<ModuleMaterial>?> productModuleMaterials(int moduleId) async {
    String path = '/api/v1/products/modules/$moduleId/materials/';
    final response = await sl<MainFetch>().get(
      path: path,
      cache: true,
      duration: Duration(days: 1),
    );
    List<ModuleMaterial>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<ModuleMaterial>.fromJson(
        r,
        (data) => ModuleMaterial.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(list: (list) => list);
    });
    return data;
  }

  Future<MaterialModuleItem?> productMaterialItem(int materialId) async {
    String path = '/api/v1/products/modules/materials/$materialId/';
    final response = await sl<MainFetch>().get(path: path);
    MaterialModuleItem? data = response.fold((l) => null, (r) {
      final response = ApiResponse<MaterialModuleItem>.fromJson(
        r,
        (data) => MaterialModuleItem.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(results: (results) => results);
    });
    return data;
  }

  Future<DataHomeHomework?> homeworkGgroups(
    int groupId,
    int offset,
    int limit,
  ) async {
    String path =
        '/api/v1/learning-process/students/homeworks/?group_id=$groupId&offset=$offset&limit=$limit';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<HomeworkStudentRelationGroup>? data = response.fold(
      (l) => null,
      (r) {
        final response = ApiResponse<HomeworkStudentRelationGroup>.fromJson(
          r,
          (data) => HomeworkStudentRelationGroup.fromJson(
            data as Map<String, dynamic>,
          ),
        );
        return response.whenOrNull(
          lazylist: (count, list) =>
              ResponseLazeList<HomeworkStudentRelationGroup>(
                count: count,
                list: list,
              ),
        );
      },
    );
    if (data == null) return null;
    final dataList = [...data.list];
    dataList.sort(
      (a, b) =>
          (DateTime.parse(b.createdAt ?? '2026-01-01').millisecondsSinceEpoch) -
          (DateTime.parse(a.createdAt ?? '2026-01-01')).millisecondsSinceEpoch,
    );
    final map = MapHomework();
    for (var element in dataList) {
      final date = element.createdAt;
      if (date == null) continue;
      final dateCreate = sl<LocalData>().getDateString(
        date: DateTime.parse(date),
        seporator: DateSeporator.dashMY,
      );
      final data = map.getOrSet(dateCreate, () => []);
      data.add(element);
      map.set(dateCreate, data);
    }

    return DataHomeHomework(count: data.count, map: map);
  }

  Future<DataHomeMaterial?> materialGgroups(
    int groupId,
    int offset,
    int limit,
  ) async {
    String path =
        '/api/v1/learning-process/students/materials/?group_id=$groupId&offset=$offset&limit=$limit';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<MaterialHomepageGroup>? data = response.fold((l) => null, (
      r,
    ) {
      final response = ApiResponse<MaterialHomepageGroup>.fromJson(
        r,
        (data) => MaterialHomepageGroup.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) =>
            ResponseLazeList<MaterialHomepageGroup>(count: count, list: list),
      );
    });
    if (data == null) return null;
    final dataList = [...data.list];
    dataList.sort(
      (a, b) =>
          (DateTime.parse(b.createdAt ?? '2026-01-01').millisecondsSinceEpoch) -
          (DateTime.parse(a.createdAt ?? '2026-01-01')).millisecondsSinceEpoch,
    );
    final map = MapMaterial();
    for (var element in dataList) {
      final date = element.createdAt;
      if (date == null) continue;
      final dateCreate = sl<LocalData>().getDateString(
        date: DateTime.parse(date),
        seporator: DateSeporator.dashMY,
      );
      final data = map.getOrSet(dateCreate, () => []);
      data.add(element);
      map.set(dateCreate, data);
    }

    return DataHomeMaterial(count: data.count, map: map);
  }

  Future<DataHomeTesting?> testGgroups(
    int groupId,
    int offset,
    int limit,
  ) async {
    String path =
        '/api/v1/learning-process/students/testings/?group_id=$groupId&offset=$offset&limit=$limit';
    final response = await sl<MainFetch>().get(path: path);
    ResponseLazeList<TestListGroup>? data = response.fold((l) => null, (r) {
      final response = ApiResponse<TestListGroup>.fromJson(
        r,
        (data) => TestListGroup.fromJson(data as Map<String, dynamic>),
      );
      return response.whenOrNull(
        lazylist: (count, list) =>
            ResponseLazeList<TestListGroup>(count: count, list: list),
      );
    });
    if (data == null) return null;
    final dataList = [...data.list];
    dataList.sort(
      (a, b) =>
          (DateTime.parse(b.createdAt ?? '2026-01-01').millisecondsSinceEpoch) -
          (DateTime.parse(a.createdAt ?? '2026-01-01')).millisecondsSinceEpoch,
    );
    final map = MapTesting();
    for (var element in dataList) {
      final date = element.createdAt;
      if (date == null) continue;
      final dateCreate = sl<LocalData>().getDateString(
        date: DateTime.parse(date),
        seporator: DateSeporator.dashMY,
      );
      final data = map.getOrSet(dateCreate, () => []);
      data.add(element);
      map.set(dateCreate, data);
    }

    return DataHomeTesting(count: data.count, map: map);
  }
}
