part of 'cups_bloc.dart';

@freezed
sealed class CupsEvent with _$CupsEvent {
  const factory CupsEvent.started({int? userId}) = _Started;
  const factory CupsEvent.cups({int? cupId}) = _Achievements;
  const factory CupsEvent.achievementReceiveReward({
    required int achievementId,
  }) = _AchievementsReceiveReward;
  const factory CupsEvent.cupReceiveReward({required int cupId}) =
      _CupReceiveReward;
}
