import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/balance/balance.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'balance_event.dart';
part 'balance_state.dart';
part 'balance_bloc.freezed.dart';

class BalanceBloc extends Bloc<BalanceEvent, BalanceState> {
  BalanceBloc() : super(_Initial()) {
    on<BalanceEvent>((event, emit) async {
      started() async {
        if (state is _BalanceDat) {
          return;
        }
        emit(BalanceState.initial());
        Balance? balance = await sl<GetResponsesMain>().balance();
        final procoin = await sl<GetResponsesMain>().procoin();
        if (balance != null) {
          if (procoin != null) {
            final coin = procoin.balance;
            if (coin != null) {
              balance = balance.copyWith(procoin: '$coin');
            }
          }
          return emit(BalanceState.balance(balance: balance));
        } else {
          return emit(BalanceState.error());
        }
      }

      update() async {
        emit(BalanceState.initial());
        Balance? balance = await sl<GetResponsesMain>().balance();
        final procoin = await sl<GetResponsesMain>().procoin();
        if (balance != null) {
          if (procoin != null) {
            final coin = procoin.balance;
            if (coin != null) {
              balance = balance.copyWith(procoin: '$coin');
            }
          }
          return emit(BalanceState.balance(balance: balance));
        } else {
          return emit(BalanceState.error());
        }
      }

      wsupdate(dynamic data) async {
        if (data is Map) {
          final mainBalance = data['main_balance'];
          final voucherBalance = data['voucher_balance'];
          if (mainBalance == null || voucherBalance == null) return;
          final stringMainBalance = '$mainBalance';
          final stringVoucherBalance = '$voucherBalance';
          final stateview = state.whenOrNull(balance: (balance) => balance);
          return emit(
            BalanceState.balance(
              balance: Balance(mainBalance: stringMainBalance, voucherBalance: stringVoucherBalance, procoin: stateview?.procoin ?? '0'),
            ),
          );
        }
      }

      await event.when(started: started, wsupdate: wsupdate, update: update);
    });
  }
}
