part of 'my_watched_lesson_bloc.dart';

@freezed
sealed class MyWatchedLessonEvent with _$MyWatchedLessonEvent {
  const factory MyWatchedLessonEvent.started({
    required String isWatched,
    int? groupId,
    int? limit,
    int? offset,
  }) = _Started;
}
