part of 'sessions_bloc.dart';

@freezed
class SessionsEvent with _$SessionsEvent {
  const factory SessionsEvent.started() = _Started;
  const factory SessionsEvent.sessionsNoLogin({required String login}) =
      _EventSessionsNoLogin;
  const factory SessionsEvent.getMySessions() = _EventSessionsMy;
  const factory SessionsEvent.closeSession({required int sessionId}) =
      _EventSessionsClose;
  const factory SessionsEvent.sessionCloseCredential({
    required String login,
    required String password,
    required int sessionId,
    required BuildContext context,
    required List<SessionsListItemModel> list,
  }) = _SessionCloseLogin;
}
