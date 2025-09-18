part of 'lessons_group_bloc.dart';

@freezed
abstract class LessonsGroupEvent with _$LessonsGroupEvent {
  const factory LessonsGroupEvent.started({
    required int groupId,
    List<Posters>? posters,
    Version? version,
  }) = _Started;
}
