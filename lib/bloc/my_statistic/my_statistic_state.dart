part of 'my_statistic_bloc.dart';

@freezed
sealed class MyStatisticState with _$MyStatisticState {
  const factory MyStatisticState.data({
    required MyStatistic data,
    required UserTotalPosition position,
  }) = MyStatisticStateData;
}
