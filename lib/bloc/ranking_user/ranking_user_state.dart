part of 'ranking_user_bloc.dart';

@freezed
class RankingUserState with _$RankingUserState {
  const factory RankingUserState.initial() = _Initial;
  const factory RankingUserState.complited({
    required RankingUser ranking,
    required RankingSkills skills,
    required int userId,
  }) = _RankingUserComplited;
}
