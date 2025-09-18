import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomColors>();

    return GestureDetector(
      onTap: () {
        context.router.navigate(HomeBalanceRoute());
      },
      child: BlocBuilder<BalanceBloc, BalanceState>(
        bloc: context.read<BalanceBloc>()..add(BalanceEvent.started()),
        builder: (context, state) {
          return state.when(
            balance: (balance) {
              bool validBalance = double.parse(balance.mainBalance) < 0;
              String balanceFormater = NumberFormat('#,##0', 'ru_RU').format(double.parse(balance.mainBalance));
              final balanceConnections = sl<Channel>().connect.connections[WsEvent.balance.name];
              if (balanceConnections?.isEmpty == true || balanceConnections == null) {
                sl<Channel>().connect.subscribe(
                  channel: WsEvent.balance.name,
                  connection: ConnectionData(
                    callback: (data) {
                      final bloc = context.read<BalanceBloc>();
                      bloc.add(BalanceEvent.wsupdate(data: data));
                    },
                  ),
                );
              }
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(color: validBalance ? customTheme?.errorFillOp : customTheme?.containerColor, borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Icon(Icons.wallet, color: validBalance ? customTheme?.errorFillOp : customTheme?.primaryTextColor),
                    SizedBox(width: 10),
                    Text(
                      'global_data.sum'.tr(namedArgs: {'money': balanceFormater}),
                      style: TextStyle(color: double.parse(balance.mainBalance) < 0 ? customTheme?.errorFill : customTheme?.primaryTextColor),
                    ),
                  ],
                ),
              );
            },
            error: () {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(color: customTheme?.errorFillOp, borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Icon(Icons.wallet, color: customTheme?.errorFillOp),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        Text('global_data.error'.tr(), style: TextStyle(color: customTheme?.errorFill)),
                        SizedBox(width: 10),
                        Icon(Icons.error_outline_outlined, color: customTheme?.errorFill),
                      ],
                    ),
                  ],
                ),
              );
            },
            initial: () {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(color: customTheme?.containerColor, borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Icon(Icons.wallet, color: customTheme?.primaryTextColor),
                    SizedBox(width: 10),
                    SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2)),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
