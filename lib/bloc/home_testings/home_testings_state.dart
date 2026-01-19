part of 'home_testings_bloc.dart';

@freezed
sealed class HomeTestingsState with _$HomeTestingsState {
  const factory HomeTestingsState.initial() = HomeTestingsStateInitial;
  const factory HomeTestingsState.complited({
    required DataHomeTesting testings,
    required bool load,
  }) = HomeTestingsStateComplited;
}
