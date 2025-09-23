import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/network/auth/post/auth.dart';
import 'package:proweb_student_app/bloc/auth/auth_bloc.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/session_response/session_response.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'auth_page_event.dart';
part 'auth_page_state.dart';
part 'auth_page_bloc.freezed.dart';

enum LoginType {
  phone('phone'),
  email('email'),
  error('error');

  const LoginType(this.data);
  final String data;
}

class AuthPageBloc extends Bloc<AuthPageEvent, AuthPageState> {
  AuthPageBloc() : super(_Initial()) {
    on<AuthPageEvent>((event, emit) async {
      login(String login) async {
        emit(AuthPageState.initial(isLoad: true));
        LoginType type = defineLogin(login);

        if (type == LoginType.error) {
          return emit(AuthPageState.initial(type: type));
        } else {
          final form = FormData.fromMap({type.data: login});
          final data = await sl<PostResponsesAuth>().checkLogIn(form);
          if (data == null) {
            return emit(AuthPageState.initial(type: LoginType.error));
          } else {
            if (data.hasUsablePassword) {
              return emit(AuthPageState.password(login: login));
            } else if (data.sended != null) {
              return emit(AuthPageState.code(login: login));
            }
          }
        }
      }

      sendedCode(String login) async {
        emit(AuthPageState.passwordRecovery(login: login, isLoad: true));
        LoginType type = defineLogin(login);
        if (type == LoginType.error) {
          return emit(AuthPageState.passwordRecovery(login: login, type: type));
        } else {
          final form = FormData.fromMap({type.data: login, 'send_code': true});
          final data = await sl<PostResponsesAuth>().passwordReset(form);
          if (data == null) {
            return emit(
              AuthPageState.passwordRecovery(
                login: login,
                type: LoginType.error,
              ),
            );
          } else {
            if (data.sended != null) {
              return emit(AuthPageState.code(login: login));
            } else {
              return emit(
                AuthPageState.passwordRecovery(
                  login: login,
                  type: LoginType.error,
                ),
              );
            }
          }
        }
      }

      verificationCode(String login, int verificationCode) async {
        emit(AuthPageState.code(login: login, isLoad: true));
        await Future.delayed(Duration(seconds: 2));
        LoginType type = defineLogin(login);
        if (type == LoginType.error) {
          return emit(AuthPageState.passwordRecovery(login: login, type: type));
        } else {
          final platformInfo = await sl<LocalData>().getPlatformInfo();
          if (platformInfo == null) {
            emit(AuthPageState.code(login: login, type: LoginType.error));
            return;
          }
          final uuid = await sl<LocalData>().uuid();
          final form = FormData.fromMap({
            type.data: login,
            'verification_code': verificationCode,
            'uuid': uuid,
            'device_name': platformInfo.deviceName,
            'device_type': platformInfo.deviceType,
          });
          final data = await sl<PostResponsesAuth>().checkVerificationCode(
            form,
          );
          if (data == null) {
            return emit(
              AuthPageState.code(login: login, type: LoginType.error),
            );
          } else {
            final bool? savedToken = await sl<LocalData>().saveToken(
              session: data,
            );
            if (savedToken == false) {
              emit(AuthPageState.initial());
            } else {
              emit(AuthPageState.newPassword(login: login));
            }
          }
        }
      }

      signin(String login, String password) async {
        emit(AuthPageState.password(login: login, isLoad: true));
        LoginType type = defineLogin(login);
        if (type == LoginType.error || password.length < 6) {
          return emit(AuthPageState.initial());
        } else {
          final platformInfo = await sl<LocalData>().getPlatformInfo();
          if (platformInfo == null) {
            emit(AuthPageState.code(login: login, type: LoginType.error));
            return;
          }
          final uuid = await sl<LocalData>().uuid();
          final form = FormData.fromMap({
            type.data: login,
            'password': password,
            'uuid': uuid,
            'device_name': platformInfo.deviceName,
            'device_type': platformInfo.deviceType,
          });
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
          if (data == null) {
            final String? dataError = response.fold(
              (l) {
                final outher = l.response?.data;
                if (outher != null) {
                  final response = ApiResponse.fromJson(
                    outher as Map<String, dynamic>,
                    (p0) =>
                        SessionResponse.fromJson(p0 as Map<String, dynamic>),
                  );
                  return response.whenOrNull(
                    detailAndError: (detail, errorKey) => errorKey,
                  );
                }
                return null;
              },
              (r) {
                return null;
              },
            );
            if (dataError != null && dataError == "session_limit_error") {
              return emit(
                AuthPageState.sessions(login: login, password: password),
              );
            }
            return emit(AuthPageState.initial());
          } else {
            final bool? savedToken = await sl<LocalData>().saveToken(
              session: data,
            );
            if (savedToken == false) {
              emit(AuthPageState.initial());
            } else {
              await sl<LocalData>().requestMyProfile(GetMyProfileEnum.network);
              sl<AuthBloc>().add(AuthEvent.app());
              await sl<AuthBloc>().stream.first;

              emit(AuthPageState.initial());
            }
          }
        }
      }

      sessionssignin(String login, String password) async {
        emit(
          AuthPageState.sessions(
            login: login,
            password: password,
            isLoad: true,
          ),
        );
        LoginType type = defineLogin(login);
        if (type == LoginType.error || password.length < 6) {
          return emit(AuthPageState.initial());
        } else {
          final platformInfo = await sl<LocalData>().getPlatformInfo();
          if (platformInfo == null) {
            emit(AuthPageState.code(login: login, type: LoginType.error));
            return;
          }
          final uuid = await sl<LocalData>().uuid();
          final form = FormData.fromMap({
            type.data: login,
            'password': password,
            'uuid': uuid,
            'device_name': platformInfo.deviceName,
            'device_type': platformInfo.deviceType,
          });
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
          if (data == null) {
            final String? dataError = response.fold(
              (l) {
                final outher = l.response?.data;
                if (outher != null) {
                  final response = ApiResponse.fromJson(
                    outher as Map<String, dynamic>,
                    (p0) =>
                        SessionResponse.fromJson(p0 as Map<String, dynamic>),
                  );
                  return response.whenOrNull(
                    detailAndError: (detail, errorKey) => errorKey,
                  );
                }
                return null;
              },
              (r) {
                return null;
              },
            );
            if (dataError != null && dataError == "session_limit_error") {
              return emit(
                AuthPageState.sessions(login: login, password: password),
              );
            }
            return emit(AuthPageState.initial());
          } else {
            final bool? savedToken = await sl<LocalData>().saveToken(
              session: data,
            );
            if (savedToken == false) {
              emit(AuthPageState.initial());
            } else {
              await sl<LocalData>().requestMyProfile(GetMyProfileEnum.network);
              sl<AuthBloc>().add(AuthEvent.app());
              await Future.delayed(Duration(seconds: 2));
              emit(AuthPageState.initial());
            }
          }
        }
      }

      newPassword(String login, String password) async {
        emit(AuthPageState.newPassword(login: login, isLoad: true));
        final form = FormData.fromMap({'password': password});
        await sl<AuthFetch>().post(
          path: '/api/v1/auth/set-user-password/',
          form: form,
        );
        sl<AuthBloc>().add(AuthEvent.app());
        emit(AuthPageState.initial());
      }

      await event.when(
        started: () {},
        login: login,
        resetPassword: (login) {
          emit(AuthPageState.passwordRecovery(login: login));
          return;
        },
        backToLogin: (login) {
          emit(AuthPageState.password(login: login));
          return;
        },
        sendedCode: sendedCode,
        verificationCode: verificationCode,
        newPassword: newPassword,
        signin: signin,
        sessionssignin: sessionssignin,
      );
    });
  }
}

LoginType defineLogin(String login) {
  final phoneRegex = RegExp(r'[0-9]{10,15}$');
  final emailRegex = RegExp(
    r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',
  );

  if (phoneRegex.hasMatch(login) && login.length <= 12) {
    return LoginType.phone;
  } else if (emailRegex.hasMatch(login)) {
    return LoginType.email;
  }
  return LoginType.error;
}
