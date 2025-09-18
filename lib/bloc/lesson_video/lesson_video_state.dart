part of 'lesson_video_bloc.dart';

@freezed
class LessonVideoState with _$LessonVideoState {
  const factory LessonVideoState.initial() = _Initial;
  const factory LessonVideoState.load() = _LessonVideoLoad;
  const factory LessonVideoState.error() = _LessonVideoError;
  const factory LessonVideoState.complite({
    required GroupLessonInfo lesson,
    required MyGroupsItem groupUser,
  }) = _LessonVideoComplite;
}
