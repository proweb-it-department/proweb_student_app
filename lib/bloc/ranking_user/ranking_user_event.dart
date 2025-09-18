part of 'ranking_user_bloc.dart';

@freezed
abstract class RankingUserEvent with _$RankingUserEvent {
  const factory RankingUserEvent.started({required int userId}) = _Started;
}
