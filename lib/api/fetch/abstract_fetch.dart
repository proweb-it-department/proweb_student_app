import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class MainFetch {
  String get main;
  Future<Either<ErrorRequest, Map<String, dynamic>>> get({
    required String path,
    bool checkToken = true,
    int refreshCount = 0,
    bool cache = false,
    Duration? duration,
  });
  Future<Either<ErrorRequest, Map<String, dynamic>>> post({
    required String path,
    required FormData form,
    bool checkToken = true,
    int refreshCount = 0,
  });
  Future<Either<ErrorRequest, Map<String, dynamic>>> postString({
    required String path,
    required String form,
    bool checkToken = true,
    int refreshCount = 0,
  });
  uploadFile();
}

abstract class AuthFetch {
  String get main;
  Future<Either<ErrorRequest, Map<String, dynamic>>> get({
    required String path,
    bool checkToken = true,
    int refreshCount = 0,
    bool cache = false,
    Duration? duration,
  });
  Future<Either<ErrorRequest, Map<String, dynamic>>> post({
    required String path,
    required FormData form,
    bool checkToken = true,
    int refreshCount = 0,
  });
  Future<Either<ErrorRequest, Map<String, dynamic>>> postString({
    required String path,
    required String form,
    bool checkToken = true,
    int refreshCount = 0,
  });
  uploadFile();
}

abstract class VideoFetch {
  String get main;
  Future<Either<ErrorRequest, Map<String, dynamic>>> get({
    required String path,
    bool checkToken = true,
    int refreshCount = 0,
    bool cache = false,
    Duration? duration,
  });
  Future<Either<ErrorRequest, Map<String, dynamic>>> post({
    required String path,
    required FormData form,
    bool checkToken = true,
    int refreshCount = 0,
  });
  Future<Either<ErrorRequest, Map<String, dynamic>>> postString({
    required String path,
    required String form,
    bool checkToken = true,
    int refreshCount = 0,
  });
  uploadFile();
}

abstract class ChatFetch {
  String get main;
  Future<Either<ErrorRequest, Map<String, dynamic>>> get({
    required String path,
    bool checkToken = true,
    int refreshCount = 0,
    bool cache = false,
    Duration? duration,
  });
  Future<Either<ErrorRequest, Map<String, dynamic>>> post({
    required String path,
    required FormData form,
    bool checkToken = true,
    int refreshCount = 0,
  });
  Future<Either<ErrorRequest, Map<String, dynamic>>> postString({
    required String path,
    required String form,
    bool checkToken = true,
    int refreshCount = 0,
  });
  uploadFile();
}

abstract class AbstractErrorRequest {
  bool? auth;
  bool? server;
  bool? token;
  Response<dynamic>? response;
  AbstractErrorRequest({this.auth, this.server, this.token, this.response});
}

class ErrorRequest implements AbstractErrorRequest {
  @override
  bool? auth;

  @override
  bool? server;

  @override
  bool? token;

  @override
  Response? response;

  ErrorRequest({this.auth, this.server, this.token, this.response}) {
    if (token == true) {
      ErrorRequest.logOut();
    }
  }
  static Future<void> logOut() async {
    // await sl<NavigationService>().context?.router.replaceAll([HomeMainRoute()]);
    // final bloc = sl<AuthBloc>();
    // bloc.add(AuthEvent.logOut());
  }
}
