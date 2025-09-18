part of 'lessons_group_bloc.dart';

@freezed
class LessonsGroupState with _$LessonsGroupState {
  const factory LessonsGroupState.initial() = _Initial;
  const factory LessonsGroupState.load() = _LessonsGroupLoad;
  const factory LessonsGroupState.error() = _LessonsGroupError;
  const factory LessonsGroupState.complited({
    required List<GroupLessonInfo> lessons,
    GroupLessonInfo? currentLesson,
  }) = _LessonsGroupComplited;
}
