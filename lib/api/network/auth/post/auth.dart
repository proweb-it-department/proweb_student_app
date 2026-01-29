import 'package:dio/dio.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/models/check_log_in/check_log_in.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/sended_code/sended_code_info.dart';
import 'package:proweb_student_app/models/session_response/session_response.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class PostResponsesAuth {
  Future<void> logOut(FormData form) async {
    await sl<AuthFetch>().post(
      path: '/api/v1/auth/sessions/log-out/',
      form: form,
    );
  }

  Future<CheckLogIn?>? checkLogIn(FormData form) async {
    final response = await sl<AuthFetch>().post(
      path: '/api/v1/auth/check-log-in/',
      form: form,
      checkToken: false,
    );
    final CheckLogIn? data = response.fold(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse.fromJson(
          r,
          (p0) => CheckLogIn.fromJson(p0 as Map<String, dynamic>),
        );
        return response.whenOrNull(results: (results) => results);
      },
    );
    return data;
  }

  Future<SendedCodeInfo?>? passwordReset(FormData form) async {
    final response = await sl<AuthFetch>().post(
      path: '/api/v1/auth/password-reset/',
      form: form,
      checkToken: false,
    );
    final SendedCodeInfo? data = response.fold(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse.fromJson(
          r,
          (p0) => SendedCodeInfo.fromJson(p0 as Map<String, dynamic>),
        );
        return response.whenOrNull(results: (results) => results);
      },
    );
    return data;
  }

  Future<SessionResponse?>? checkVerificationCode(FormData form) async {
    final response = await sl<AuthFetch>().post(
      path: '/api/v1/auth/check-verification-code/',
      form: form,
      checkToken: false,
    );
    final SessionResponse? data = response.fold(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse.fromJson(
          r,
          (p0) => SessionResponse.fromJson(p0 as Map<String, dynamic>),
        );
        return response.whenOrNull(results: (results) => results);
      },
    );

    return data;
  }

  Future<SessionResponse?>? logIn(FormData form) async {
    final response = await sl<AuthFetch>().post(
      path: '/api/v1/auth/log-in/',
      form: form,
      checkToken: false,
    );
    final SessionResponse? data = response.fold(
      (l) {
        return null;
      },
      (r) {
        final response = ApiResponse.fromJson(
          r,
          (p0) => SessionResponse.fromJson(p0 as Map<String, dynamic>),
        );
        return response.whenOrNull(results: (results) => results);
      },
    );

    return data;
  }

  Future<void> setUserPassword(FormData form) async {
    await sl<AuthFetch>().post(
      path: '/api/v1/auth/set-user-password/',
      form: form,
    );
  }

  Future<void> updateProfile(FormData form) async {
    await sl<AuthFetch>().post(
      path: '/api/v1/auth/update-my-profile/',
      form: form,
    );
  }

  Future<void> sendCode(FormData form) async {
    await sl<AuthFetch>().post(path: '/api/v1/auth/send-code/', form: form);
  }

  Future<void> setEmail(FormData form) async {
    await sl<AuthFetch>().post(path: '/api/v1/auth/email/set/', form: form);
  }
}
