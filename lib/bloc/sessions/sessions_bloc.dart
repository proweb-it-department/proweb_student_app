import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/api/network/auth/get/auth.dart';
import 'package:proweb_student_app/api/network/auth/post/auth.dart';
import 'package:proweb_student_app/bloc/auth_page/auth_page_bloc.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'sessions_event.dart';
part 'sessions_state.dart';
part 'sessions_bloc.freezed.dart';

class SessionsBloc extends Bloc<SessionsEvent, SessionsState> {
  SessionsBloc() : super(SessionsInitial()) {
    on<SessionsEvent>((event, emit) async {
      eventSessionsNoLogin(String login) async {
        emit(SessionsState.sessionsLoad());
        String path = '/api/v1/auth/sessions/user-sessions/';
        LoginType loginType = defineLogin(login);
        if (loginType != LoginType.error) {
          path += '?${loginType.data}=$login';
        }
        final response = await sl<AuthFetch>().get(
          path: path,
          checkToken: false,
        );
        final sessions = response.fold<List<SessionsListItemModel>?>(
          (l) {
            return null;
          },
          (r) {
            final response = ApiResponse<SessionsListItemModel>.fromJson(
              r,
              (data) =>
                  SessionsListItemModel.fromJson(data as Map<String, dynamic>),
            );
            return response.whenOrNull(
              list: (results) {
                return results;
              },
            );
          },
        );
        if (sessions == null) {
          return emit(SessionsState.sessionsError());
        } else {
          return emit(SessionsState.sessionsNoAuth(list: sessions));
        }
      }

      sessionCloseCredential(
        String login,
        String password,
        int sessionId,
        BuildContext context,
        List<SessionsListItemModel> sessions,
      ) async {
        emit(SessionsState.sessionsNoAuth(list: sessions, isLoad: true));
        await Future.delayed(Duration(seconds: 2));
        LoginType type = defineLogin(login);
        if (type == LoginType.error) {
          return emit(
            SessionsState.sessionsNoAuth(list: sessions, isError: true),
          );
        } else {
          final form = FormData.fromMap({
            "session_id": sessionId,
            type.data: login,
            "password": password,
          });
          final response = await sl<AuthFetch>().post(
            path: '/api/v1/auth/sessions/close-by-credentials/',
            form: form,
            checkToken: false,
          );
          final bool? data = response.fold(
            (l) {
              return null;
            },
            (r) {
              if (r['results']?['closed'] != null) {
                return r['results']?['closed'];
              }
              return null;
            },
          );
          if (data == null) {
            return emit(
              SessionsState.sessionsNoAuth(list: sessions, isError: true),
            );
          } else {
            final blacAuth = context.read<AuthPageBloc>();
            if (!context.mounted) return;
            blacAuth.add(
              AuthPageEvent.sessionssignin(login: login, password: password),
            );
            return;
          }
        }
      }

      getMySessions() async {
        emit(SessionsState.sessionsList(list: [], isLoad: true));
        final auth = sl<GetResponsesAuth>();
        final response = await auth.mySessions();
        if (response == null) {
          emit(
            SessionsState.sessionsList(list: [], isLoad: false, isError: true),
          );
          return;
        }
        return emit(
          SessionsState.sessionsList(list: [...response], isLoad: false),
        );
      }

      closeSession(int sessionId) async {
        emit(SessionsState.sessionsList(list: [], isLoad: true));
        final authPost = sl<PostResponsesAuth>();
        final form = FormData.fromMap({'session_id': sessionId});
        await authPost.closeSession(form);
        final auth = sl<GetResponsesAuth>();
        final response = await auth.mySessions();
        if (response == null) {
          emit(
            SessionsState.sessionsList(list: [], isLoad: false, isError: true),
          );
          return;
        }
        return emit(
          SessionsState.sessionsList(list: [...response], isLoad: false),
        );
      }

      await event.when(
        started: () {},
        sessionsNoLogin: eventSessionsNoLogin,
        sessionCloseCredential: sessionCloseCredential,
        getMySessions: getMySessions,
        closeSession: closeSession,
      );
    });
  }
}
