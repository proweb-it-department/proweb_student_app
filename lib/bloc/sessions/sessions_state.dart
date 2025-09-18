part of 'sessions_bloc.dart';

@freezed
class SessionsState with _$SessionsState {
  const factory SessionsState.initial() = _Initial;
  const factory SessionsState.sessionsLoad() = _SessionsLoad;
  const factory SessionsState.sessionsError() = _SessionsError;
  const factory SessionsState.sessionsNoAuth({
    required List<SessionsListItemModel> list,
    bool? isLoad,
    bool? isError,
  }) = _SessionsNoAuth;
}
