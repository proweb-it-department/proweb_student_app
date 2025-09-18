part of 'auth_page_bloc.dart';

@freezed
class AuthPageEvent with _$AuthPageEvent {
  const factory AuthPageEvent.started() = _Started;
  const factory AuthPageEvent.login({required String login}) = _AuthPageLogin;
  const factory AuthPageEvent.backToLogin({required String login}) =
      _AuthPageResetPasswordToPassword;
  const factory AuthPageEvent.resetPassword({required String login}) =
      _AuthPageResetPassword;
  const factory AuthPageEvent.sendedCode({required String login}) =
      _AuthPageSendedCode;
  const factory AuthPageEvent.verificationCode({
    required String login,
    required int verificationCode,
  }) = _AuthPageVerificationCode;
  const factory AuthPageEvent.newPassword({
    required String login,
    required String password,
  }) = _AuthPageNewPasswordSend;
  const factory AuthPageEvent.signin({
    required String login,
    required String password,
  }) = _AuthPageSignIn;
  const factory AuthPageEvent.sessionssignin({
    required String login,
    required String password,
  }) = _AuthPageSessionsSignIn;
}
