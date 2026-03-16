part of 'my_statistic_bloc.dart';

@freezed
sealed class MyStatisticEvent with _$MyStatisticEvent {
  const factory MyStatisticEvent.started({int? groupId}) = _Started;
}
