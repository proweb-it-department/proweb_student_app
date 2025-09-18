part of 'homework_group_bloc.dart';

@freezed
abstract class HomeworkGroupEvent with _$HomeworkGroupEvent {
  const factory HomeworkGroupEvent.started({
    required int groupId,
    required int limit,
    required int offset,
  }) = _Started;
}
