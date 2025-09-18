part of 'auth_page_bloc.dart';

@freezed
abstract class AuthPageState with _$AuthPageState {
  const factory AuthPageState.initial({bool? isLoad, LoginType? type}) = _Initial;
  const factory AuthPageState.password({required String login, bool? isLoad}) = _AuthPagePassword;
  const factory AuthPageState.code({required String login, bool? isLoad, LoginType? type}) = _AuthPageCode;
  const factory AuthPageState.newPassword({required String login, bool? isLoad}) = _AuthPageNewPassword;
  const factory AuthPageState.passwordRecovery({required String login, LoginType? type, bool? isLoad}) = _AuthPagePasswordRecovery;
  const factory AuthPageState.sessions({required String login, required String password, LoginType? type, bool? isLoad}) = _AuthPageSessins;
}
