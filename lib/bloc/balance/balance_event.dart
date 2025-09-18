part of 'balance_bloc.dart';

@freezed
class BalanceEvent with _$BalanceEvent {
  const factory BalanceEvent.started() = _Started;
  const factory BalanceEvent.update() = _Update;
  const factory BalanceEvent.wsupdate({
    required dynamic data,
  }) = _BalanceUpdate;
}
