part of 'my_telegram_connected_bloc.dart';

@freezed
class MyTelegramConnectedEvent with _$MyTelegramConnectedEvent {
  const factory MyTelegramConnectedEvent.started() = _Started;
}