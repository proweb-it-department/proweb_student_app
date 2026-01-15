part of 'home_homework_bloc.dart';

@freezed
sealed class HomeHomeworkState with _$HomeHomeworkState {
  const factory HomeHomeworkState.initial() = HomeHomeworkStateInitial;
  const factory HomeHomeworkState.complited({
    required DataHomeHomework homeworks,
    required bool load,
  }) = HomeHomeworkStateComplited;
}
