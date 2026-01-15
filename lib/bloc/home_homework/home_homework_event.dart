part of 'home_homework_bloc.dart';

@freezed
abstract class HomeHomeworkEvent with _$HomeHomeworkEvent {
  const factory HomeHomeworkEvent.started({
    required int groupId,
    required int limit,
    required int offset,
  }) = _Started;
}
