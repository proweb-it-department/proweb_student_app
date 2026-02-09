import 'dart:io';

import 'package:dio/dio.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/models/comment_file/comment_file.dart';
import 'package:proweb_student_app/models/coworking_list_reserve/coworking_list_reserve.dart';
import 'package:proweb_student_app/models/feadbacks_page_item/feadbacks_page_item.dart';
import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/story_groups_for_student/story_groups_for_student.dart';
import 'package:proweb_student_app/models/telegram_connect_url/telegram_connect_url.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class PostResponsesMain {
  Future<Actions?> storyAction(FormData form) async {
    String path = '/api/v1/stories/story-actions/update/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<Actions?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<Actions>.fromJson(
          r,
          (data) => Actions.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (data) {
            return data;
          },
        );
      },
    );
    return data;
  }

  Future<void> sendPollAnswer(String form) async {
    String path = '/api/v1/poll/student-poll-answer/create-answers/';
    await sl<MainFetch>().postString(path: path, form: form);
  }

  Future<HomeworkMaterials?> solvedMaterial(FormData form) async {
    String path =
        '/api/v1/learning-process/students/homeworks/solved-material/create/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<HomeworkMaterials?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<HomeworkMaterials>.fromJson(
          r,
          (data) => HomeworkMaterials.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (data) {
            return data;
          },
        );
      },
    );
    return data;
  }

  Future<CommentFile?> uploadFileComment(FormData form) async {
    String path = '/api/v1/comments/files/create/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<CommentFile?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<CommentFile>.fromJson(
          r,
          (data) => CommentFile.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (data) {
            return data;
          },
        );
      },
    );
    return data;
  }

  Future<GlobalComment?> createdFileComment(FormData form) async {
    String path = '/api/v1/comments/create/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<GlobalComment?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<GlobalComment>.fromJson(
          r,
          (data) => GlobalComment.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (data) {
            return data;
          },
        );
      },
    );
    return data;
  }

  Future<bool?> sendTestAnswer(String form) async {
    String path = '/api/v1/learning-process/students/testings/solve/';
    final response = await sl<MainFetch>().postString(path: path, form: form);
    final data = response.fold<bool?>(
      (l) {
        return null;
      },
      (r) {
        return true;
      },
    );
    return data;
  }

  Future<GlobalComment?> createComment({
    required String comment,
    required int relationId,
    required GlobalCommentTypeb contentType,
    List<String>? files,
  }) async {
    final fetch = sl<PostResponsesMain>();
    List<int> idsFiles = [];
    if (files != null && files.isNotEmpty) {
      for (var element in files) {
        final file = File(element);
        if (!await file.exists()) continue;

        final form = FormData.fromMap({
          'file': await MultipartFile.fromFile(
            file.path,
            filename: file.path.split('/').last,
          ),
        });
        final fileResponse = await fetch.uploadFileComment(form);
        final id = fileResponse?.id;
        if (id != null) {
          idsFiles.add(id);
        }
      }
    }
    final form = FormData.fromMap({
      "content_type": contentType.name,
      "object_id": relationId,
      "content": comment,
      "file_id_list": idsFiles,
    });
    final commentResponse = await fetch.createdFileComment(form);
    return commentResponse;
  }

  Future<String?> evaluate(FormData form) async {
    String path = '/api/v1/learning-process/lessons/relations/evaluate/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<String?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<String>.fromJson(r, (p0) => '');
        return response.whenOrNull(
          resultsAsString: (string) {
            return string;
          },
        );
      },
    );
    return data;
  }

  Future<FeadbacksPageItem?> createFeedBack(FormData form) async {
    String path = '/api/v1/feedback/tickets/create/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<FeadbacksPageItem?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<FeadbacksPageItem>.fromJson(
          r,
          (data) => FeadbacksPageItem.fromJson(data as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (data) {
            return data;
          },
        );
      },
    );
    return data;
  }

  Future<CoworkingListReserve?> reserveCoworking(FormData form) async {
    String path = '/api/v1/coworking/students/visits/reserve-me/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<CoworkingListReserve?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<CoworkingListReserve>.fromJson(
          r,
          (p0) => CoworkingListReserve.fromJson(p0 as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (res) {
            return res;
          },
        );
      },
    );
    return data;
  }

  Future<CoworkingListReserve?> updateCoworking(FormData form) async {
    String path = '/api/v1/coworking/students/visits/update/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<CoworkingListReserve?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<CoworkingListReserve>.fromJson(
          r,
          (p0) => CoworkingListReserve.fromJson(p0 as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (res) {
            return res;
          },
        );
      },
    );
    return data;
  }

  Future<bool?> updateStatusTicket(FormData form) async {
    String path = '/api/v1/feedback/tickets/update-status/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<bool?>(
      (l) {
        return null;
      },
      (r) {
        return true;
      },
    );
    return data;
  }

  Future<bool?> rejectClosingOffer(FormData form) async {
    String path = '/api/v1/feedback/tickets/reject_closing_offer/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<bool?>(
      (l) {
        return null;
      },
      (r) {
        return true;
      },
    );
    return data;
  }

  Future<bool?> score(FormData form) async {
    String path = '/api/v1/feedback/tickets/evaluate/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<bool?>(
      (l) {
        return null;
      },
      (r) {
        return true;
      },
    );
    return data;
  }

  Future<bool?> buyProduct(FormData form) async {
    String path = '/api/v1/products/buy/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<bool?>(
      (l) {
        return null;
      },
      (r) {
        return true;
      },
    );
    return data;
  }

  Future<bool?> buyService(FormData form) async {
    String path = '/api/v1/packages/services/buy/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<bool?>(
      (l) {
        return null;
      },
      (r) {
        return true;
      },
    );
    return data;
  }

  Future<TelegramConnectUrl?> generateUrl(FormData form) async {
    String path = '/api/v1/payments/common/generate_url/';
    final response = await sl<MainFetch>().post(path: path, form: form);
    final data = response.fold<TelegramConnectUrl?>(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse<TelegramConnectUrl>.fromJson(
          r,
          (p0) => TelegramConnectUrl.fromJson(p0 as Map<String, dynamic>),
        );
        return response.whenOrNull(
          results: (res) {
            return res;
          },
        );
      },
    );
    return data;
  }
}
