import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class ExtraBalanceWidget extends StatelessWidget {
  const ExtraBalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final double borderDouble = 20;
    final BorderRadius border = BorderRadius.circular(borderDouble);
    return BlocBuilder<BalanceBloc, BalanceState>(
      bloc: context.read<BalanceBloc>()..add(BalanceEvent.started()),
      builder: (context, state) {
        return state.when(
          balance: (balance) {
            String balanceFormater = NumberFormat(
              '#,##0',
              'ru_RU',
            ).format(double.parse(balance.voucherBalance));
            String procoinBalanceFormater = NumberFormat(
              '#,##0',
              'ru_RU',
            ).format(double.parse(balance.procoin ?? '0'));
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: border,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: border,
                    color: Colors.green.withAlpha(15),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -(MediaQuery.of(context).size.width * 0.35),
                        left: -(MediaQuery.of(context).size.width * 0.4),
                        child: Opacity(
                          opacity: 0.15,
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(
                              sigmaX: 50,
                              sigmaY: 50,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.88,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: AspectRatio(aspectRatio: 1 / 1),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -(MediaQuery.of(context).size.width * 0.3),
                        right: -(MediaQuery.of(context).size.width * 0.4),
                        child: Opacity(
                          opacity: 0.15,
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(
                              sigmaX: 50,
                              sigmaY: 50,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: AspectRatio(aspectRatio: 1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            color: customColors?.primaryTextColor.withAlpha(20),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 20,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 5,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'transactions_balance.Voucher_balance_title'
                                          .tr(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      'global_data.sum'.tr(
                                        namedArgs: {'money': balanceFormater},
                                      ),
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: customColors?.borderColor),
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  spacing: 0,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'PROCOIN'.tr(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      procoinBalanceFormater,
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          initial: () {
            return Container(
              color: customColors?.containerColor,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Md3CirculeIndicator(),
                ),
              ),
            );
          },
          error: () {
            return Container(
              color: customColors?.containerColor,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ErrorLoad(
                    action: FilledButton(
                      onPressed: () {
                        final bloc = context.read<BalanceBloc>();
                        bloc.add(BalanceEvent.started());
                      },
                      child: Text('global_data.try_again'.tr()),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
