import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/session_response/session_response.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:queue/queue.dart';

class Fetch implements MainFetch, AuthFetch, VideoFetch, ChatFetch {
  final Dio _dio = sl<Dio>();
  @override
  final String main;
  final String refreshURL = '${GlobalPath.auth}/api/v1/auth/refresh-token/';

  Fetch({required this.main});

  String get path => main;
  int maxRefresh = 4;

  @override
  Future<Either<ErrorRequest, Map<String, dynamic>>> get({
    required String path,
    bool checkToken = true,
    int refreshCount = 0,
    bool cache = false,
    Duration? duration,
  }) async {
    try {
      Options options = Options(
        extra: {'cache': cache, 'cacheDuration': duration},
      );
      if (checkToken) {
        Either<ErrorRequest, bool> checkRefresh = await _actionRefresh();
        ErrorRequest? checkRefreshResponse = checkRefresh.fold(
          (l) => l,
          (_) => null,
        );
        if (checkRefreshResponse != null) return Left(checkRefreshResponse);
        options.headers = {
          'Authorization': 'Bearer ${sl<LocalData>().getAccessToken()}',
        };
      }
      if (cache) {}
      String fullPath = '$main$path';
      if (path.contains('https://') || path.contains('http://')) {
        fullPath = path;
      }
      final dio = await _dio.get(fullPath, options: options);
      final response = dio.data;
      if (response == null) {
        return Left(ErrorRequest(server: true, response: dio));
      } else {
        if (response["results"] != null) {
          return Right(response);
        } else {
          return Left(ErrorRequest(auth: true, response: dio));
        }
      }
    } on DioException catch (e) {
      refreshCount++;
      if ((e.response?.statusCode == 403 || e.response?.statusCode == 401) &&
          refreshCount <= maxRefresh) {
        Either<ErrorRequest, bool> checkRefresh = await _getNewToken();
        ErrorRequest? checkRefreshResponse = checkRefresh.fold(
          (l) => l,
          (_) => null,
        );
        if (checkRefreshResponse != null) return Left(checkRefreshResponse);
        return await get(
          path: path,
          checkToken: checkToken,
          refreshCount: refreshCount,
        );
      } else if (e.type == DioExceptionType.connectionTimeout &&
          refreshCount <= maxRefresh) {
        return await get(
          path: path,
          checkToken: checkToken,
          refreshCount: refreshCount,
        );
      } else if (e.type == DioExceptionType.connectionError &&
          refreshCount <= maxRefresh) {
        return await get(
          path: path,
          checkToken: checkToken,
          refreshCount: refreshCount,
        );
      }
      if ((e.response?.statusCode == 403 || e.response?.statusCode == 401)) {
        sl<LocalData>().localLogOut();
        return Left(ErrorRequest(token: true, response: e.response));
      }
      return Left(ErrorRequest(server: true, response: e.response));
    }
  }

  @override
  Future<Either<ErrorRequest, String>> getString({
    required String path,
    bool checkToken = true,
    int refreshCount = 0,
    bool cache = false,
    Duration? duration,
  }) async {
    try {
      Options options = Options(
        extra: {'cache': cache, 'cacheDuration': duration},
      );
      if (checkToken) {
        Either<ErrorRequest, bool> checkRefresh = await _actionRefresh();
        ErrorRequest? checkRefreshResponse = checkRefresh.fold(
          (l) => l,
          (_) => null,
        );
        if (checkRefreshResponse != null) return Left(checkRefreshResponse);
        options.headers = {
          'Authorization': 'Bearer ${sl<LocalData>().getAccessToken()}',
        };
      }
      if (cache) {}
      String fullPath = '$main$path';
      if (path.contains('https://') || path.contains('http://')) {
        fullPath = path;
      }
      final dio = await _dio.get(fullPath, options: options);
      final response = dio.data;
      if (response == null) {
        return Left(ErrorRequest(server: true, response: dio));
      } else {
        if (response.runtimeType == String) {
          return Right(response);
        } else {
          return Left(ErrorRequest(auth: true, response: dio));
        }
      }
    } on DioException catch (e) {
      refreshCount++;
      if ((e.response?.statusCode == 403 || e.response?.statusCode == 401) &&
          refreshCount <= maxRefresh) {
        Either<ErrorRequest, bool> checkRefresh = await _getNewToken();
        ErrorRequest? checkRefreshResponse = checkRefresh.fold(
          (l) => l,
          (_) => null,
        );
        if (checkRefreshResponse != null) return Left(checkRefreshResponse);
        return await getString(
          path: path,
          checkToken: checkToken,
          refreshCount: refreshCount,
        );
      } else if (e.type == DioExceptionType.connectionTimeout &&
          refreshCount <= maxRefresh) {
        return await getString(
          path: path,
          checkToken: checkToken,
          refreshCount: refreshCount,
        );
      } else if (e.type == DioExceptionType.connectionError &&
          refreshCount <= maxRefresh) {
        return await getString(
          path: path,
          checkToken: checkToken,
          refreshCount: refreshCount,
        );
      }
      if ((e.response?.statusCode == 403 || e.response?.statusCode == 401)) {
        sl<LocalData>().localLogOut();
        return Left(ErrorRequest(token: true, response: e.response));
      }
      return Left(ErrorRequest(server: true, response: e.response));
    }
  }

  @override
  Future<Either<ErrorRequest, Map<String, dynamic>>> post({
    required String path,
    required FormData form,
    bool checkToken = true,
    int refreshCount = 0,
  }) async {
    try {
      Options options = Options();
      if (checkToken) {
        Either<ErrorRequest, bool> checkRefresh = await _actionRefresh();
        ErrorRequest? checkRefreshResponse = checkRefresh.fold(
          (l) => l,
          (_) => null,
        );
        if (checkRefreshResponse != null) return Left(checkRefreshResponse);
        options.headers = {
          'Authorization': 'Bearer ${sl<LocalData>().getAccessToken()}',
        };
      }
      final cancelToken = CancelToken();
      final dio = await _dio.post(
        '$main$path',
        data: form,
        options: options,
        cancelToken: cancelToken,
      );

      final response = dio.data;
      if (response == null) {
        return Left(ErrorRequest(server: true));
      } else {
        if (response["results"] != null) {
          return Right(response);
        } else {
          if (dio.statusCode != null) {
            if (dio.statusCode == 403) {
              return Left(ErrorRequest(server: true));
            }
          }
          return Left(ErrorRequest(auth: true));
        }
      }
    } on DioException catch (e) {
      refreshCount++;
      if (e.type == DioExceptionType.connectionTimeout &&
          refreshCount <= maxRefresh) {
        return await post(
          path: path,
          form: form,
          checkToken: checkToken,
          refreshCount: refreshCount,
        );
      } else if (e.type == DioExceptionType.connectionError &&
          refreshCount <= maxRefresh) {
        return await post(
          path: path,
          form: form,
          checkToken: checkToken,
          refreshCount: refreshCount,
        );
      }
      if (e.response != null) {
        return Left(ErrorRequest(server: true, response: e.response));
      } else {
        return Left(ErrorRequest(server: true));
      }
    }
  }

  @override
  Future<Either<ErrorRequest, Map<String, dynamic>>> postString({
    required String path,
    required String form,
    bool checkToken = true,
    int refreshCount = 0,
  }) async {
    try {
      Options options = Options();
      options.headers = {"Content-Type": "application/json"};
      if (checkToken) {
        Either<ErrorRequest, bool> checkRefresh = await _actionRefresh();
        ErrorRequest? checkRefreshResponse = checkRefresh.fold(
          (l) => l,
          (_) => null,
        );
        if (checkRefreshResponse != null) return Left(checkRefreshResponse);
        options.headers = {
          ...options.headers!,
          'Authorization': 'Bearer ${sl<LocalData>().getAccessToken()}',
        };
      }
      final cancelToken = CancelToken();
      final dio = await _dio.post(
        '$main$path',
        data: form,
        options: options,
        cancelToken: cancelToken,
      );

      final response = dio.data;
      if (response == null) {
        return Left(ErrorRequest(server: true));
      } else {
        if (response["results"] != null) {
          return Right(response);
        } else {
          if (dio.statusCode != null) {
            if (dio.statusCode == 403) {
              return Left(ErrorRequest(server: true));
            }
          }
          return Left(ErrorRequest(auth: true));
        }
      }
    } on DioException catch (e) {
      refreshCount++;
      if (e.type == DioExceptionType.connectionTimeout &&
          refreshCount <= maxRefresh) {
        return await postString(
          path: path,
          form: form,
          checkToken: checkToken,
          refreshCount: refreshCount,
        );
      } else if (e.type == DioExceptionType.connectionError &&
          refreshCount <= maxRefresh) {
        return await postString(
          path: path,
          form: form,
          checkToken: checkToken,
          refreshCount: refreshCount,
        );
      }
      if (e.response != null) {
        return Left(ErrorRequest(server: true, response: e.response));
      } else {
        return Left(ErrorRequest(server: true));
      }
    }
  }

  @override
  uploadFile() {
    throw UnimplementedError();
  }

  Future<Either<ErrorRequest, bool>> _actionRefresh() async {
    await sl<LocalData>().uuid();
    final bool hasAuth = sl<LocalData>().hasAuth();
    if (hasAuth == false) return Left(ErrorRequest(auth: true));
    final bool preLife = sl<LocalData>().getLifeToken();
    if (preLife == false) {
      Either<ErrorRequest, bool> getNewToken = await sl<Queue>().add(
        () => _getNewToken(),
      );
      return getNewToken.fold((l) => Left(l), (r) => Right(r));
    } else {
      return Right(preLife);
    }
  }

  Future<Either<ErrorRequest, bool>> _getNewToken() async {
    try {
      final refresh = sl<LocalData>().getRefreshToken();
      if (refresh == null) {
        return Left(ErrorRequest(token: true));
      }
      final uuid = await sl<LocalData>().uuid();
      final FormData formData = FormData.fromMap({
        'refresh_token': refresh,
        'uuid': uuid,
      });
      final dio = await _dio.post<Map<String, dynamic>>(
        refreshURL,
        data: formData,
      );
      final response = dio.data;
      if (response != null) {
        final responseData = ApiResponse<SessionResponse>.fromJson(
          response,
          (data) => SessionResponse.fromJson(data as Map<String, dynamic>),
        );
        final objectData = responseData.whenOrNull(
          results: (results) {
            return results;
          },
        );
        if (objectData == null) {
          return Left(ErrorRequest(token: true));
        } else {
          final bool? savedToken = await sl<LocalData>().saveToken(
            session: objectData,
          );
          if (savedToken != null && savedToken) {
            return Right(true);
          } else {
            sl<LocalData>().localLogOut();
            return Left(ErrorRequest(token: true));
          }
        }
      } else {
        sl<LocalData>().localLogOut();
        return Left(ErrorRequest(token: true));
      }
    } catch (e) {
      sl<LocalData>().localLogOut();
      return Left(ErrorRequest(server: true));
    }
  }
}
