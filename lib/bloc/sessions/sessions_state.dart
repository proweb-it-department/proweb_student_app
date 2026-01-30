part of 'sessions_bloc.dart';

@freezed
sealed class SessionsState with _$SessionsState {
  const factory SessionsState.initial() = SessionsInitial;
  const factory SessionsState.sessionsLoad() = SessionsLoad;
  const factory SessionsState.sessionsError() = SessionsError;
  const factory SessionsState.sessionsNoAuth({
    required List<SessionsListItemModel> list,
    bool? isLoad,
    bool? isError,
  }) = SessionsNoAuth;
  const factory SessionsState.sessionsList({
    required List<SessionsListItemModel> list,
    bool? isLoad,
    bool? isError,
  }) = SessionsList;
}
