part of 'balance_bloc.dart';

@freezed
class BalanceState with _$BalanceState {
  const factory BalanceState.initial() = _Initial;
  const factory BalanceState.balance({required Balance balance}) = _BalanceDat;
  const factory BalanceState.error() = _BalanceError;
}
