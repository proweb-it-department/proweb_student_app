part of 'my_telegram_connected_bloc.dart';

@freezed
sealed class MyTelegramConnectedState with _$MyTelegramConnectedState {
  const factory MyTelegramConnectedState.initial() = MyTelegramConnectedInitial;
  const factory MyTelegramConnectedState.load() = MyTelegramConnectedLoad;
  const factory MyTelegramConnectedState.complited({
    required List<TelegramUser> tgUserList,
  }) = MyTelegramConnectedComplited;
}
