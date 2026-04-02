part of 'my_watched_lesson_bloc.dart';

@freezed
sealed class MyWatchedLessonState with _$MyWatchedLessonState {
  const factory MyWatchedLessonState.initial() = MyWatchedLessonStateLoad;
  const factory MyWatchedLessonState.compllited({
    required ResponseLazeList<MyWatchedLesson> data,
  }) = MyWatchedLessonStateComplited;
}
