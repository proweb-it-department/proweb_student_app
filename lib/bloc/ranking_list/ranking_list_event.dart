part of 'ranking_list_bloc.dart';

@freezed
abstract class RankingListEvent with _$RankingListEvent {
  const factory RankingListEvent.started({
    required int offset,
    required int limit,
    int? courseId,
    int? groupId,
  }) = _Started;
}
