part of 'ranking_list_bloc.dart';

@freezed
class RankingListState with _$RankingListState {
  const factory RankingListState.initial() = _Initial;
  const factory RankingListState.complited({
    required List<UserTotalPosition> winners,
    ResponseLazeList<UserTotalPosition>? userList,
    UserTotalPosition? myRanking,
    required LoadState load,
    required int offset,
  }) = _RankingListComplited;
}
