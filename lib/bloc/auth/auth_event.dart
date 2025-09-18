part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.logOut() = _AuthLogOut;
  const factory AuthEvent.login() = _AuthLogIn;
  const factory AuthEvent.app() = _AuthAppView;
}
