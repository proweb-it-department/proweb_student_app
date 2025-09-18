import 'package:bloc/bloc.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(_Initial()) {
    on<AuthEvent>((event, emit) async {
      started() async {
        await Future.delayed(Duration(seconds: 3));
        final bool hasAuth = sl<LocalData>().hasAuth();
        if (hasAuth == false) {
          return emit(AuthState.login());
        } else {
          emit(AuthState.app());
          await sl<Channel>().wsConnect();
          return;
        }
      }

      logOut() async {
        final refresh = sl<LocalData>().getRefreshToken();
        if (refresh == null) {
          return emit(AuthState.login());
        }
        final form = FormData.fromMap({'refresh_token': refresh});
        await sl<AuthFetch>().post(
          path: '/api/v1/auth/sessions/log-out/',
          form: form,
        );
        sl<LocalData>().localLogOut();
        emit(AuthState.login());
      }

      await event.when(
        started: started,
        logOut: logOut,
        login: () {
          emit(AuthState.login());
        },
        app: () async {
          emit(AuthState.app());
          await sl<Channel>().wsConnect();
        },
      );
    });
  }
}
