import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class BalanceWidgetInPage extends StatelessWidget {
  const BalanceWidgetInPage({super.key});

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
            bool validBalance = (double.parse(balance.mainBalance) >= 0);
            String balanceFormater = NumberFormat(
              '#,##0',
              'ru_RU',
            ).format(double.parse(balance.mainBalance));
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: border,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: border,
                    color: Colors.blue.withAlpha(50),
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
                                color: validBalance ? Colors.blue : Colors.red,
                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: AspectRatio(aspectRatio: 1 / 1),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: -(MediaQuery.of(context).size.width * 0.1),
                        bottom: -(MediaQuery.of(context).size.width * 0.16),
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation(-10 / 360),
                          child: Opacity(
                            opacity: 1,
                            child: Icon(
                              Icons.wallet,
                              size: MediaQuery.of(context).size.width * 0.7,
                              color: customColors?.containerColor,
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
                                color: validBalance ? Colors.blue : Colors.red,
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
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: customColors?.primaryTextColor.withAlpha(20),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 50,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 5,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'transactions_balance.Your_balance'.tr(),
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 5,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'transactions_balance.Tuition_fees'.tr(),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    'transactions_balance.Payment_in_store'
                                        .tr(),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
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
