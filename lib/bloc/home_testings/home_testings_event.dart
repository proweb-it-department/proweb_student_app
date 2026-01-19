part of 'home_testings_bloc.dart';

@freezed
abstract class HomeTestingsEvent with _$HomeTestingsEvent {
  const factory HomeTestingsEvent.started({
    required int groupId,
    required int limit,
    required int offset,
  }) = _Started;
}
