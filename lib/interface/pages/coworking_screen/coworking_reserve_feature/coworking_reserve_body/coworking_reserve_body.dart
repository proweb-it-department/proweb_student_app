import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proweb_student_app/bloc/coworking_list_reserve/coworking_list_reserve_bloc.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/coworking_info_view/coworking_info_view.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/provider/coworking_provider.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/reserve_config/reserve_config.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class CoworkingReserveBody extends StatefulWidget {
  const CoworkingReserveBody({super.key});

  @override
  State<CoworkingReserveBody> createState() => _CoworkingReserveBodyState();
}

class _CoworkingReserveBodyState extends State<CoworkingReserveBody> {
  final PageController controller = PageController();
  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    final state = context.watch<CoworkingProvider>();
    final blocState = context.watch<CoworkingListReserveBloc>();
    final bool isState = blocState.state.when(
      initial: () => false,
      list: (count, list, reservate) => list.isNotEmpty,
    );
    return Column(
      children: [
        Expanded(
          child: PageView(
            onPageChanged: (value) {
              setState(() {
                activePage = value;
              });
            },
            physics: NeverScrollableScrollPhysics(),
            controller: controller,
            children: [CoworkingInfoView(), ReserveConfig()],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            bottom: bottom + 10,
            left: 15,
            right: 15,
            top: 10,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: customColors?.borderColors ?? Colors.transparent,
              ),
            ),
          ),
          child: AnimatedSwitcher(
            transitionBuilder: (Widget child, Animation<double> animation) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(0, 2),
                  end: Offset(0, 0),
                ).animate(animation),
                child: FadeTransition(
                  alwaysIncludeSemantics: true,
                  opacity: animation,
                  child: child,
                ),
              );
            },
            duration: Duration(milliseconds: 150),
            child: activePage == 0
                ? Row(
                    key: ValueKey(0),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      FilledButton.icon(
                        onPressed:
                            isState ||
                                context.watch<CoworkingProvider>().isAcquainted
                            ? () {
                                controller.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            : null,
                        style: FilledButton.styleFrom(
                          backgroundColor: customColors?.additionalThree,
                          textStyle: TextStyle(
                            color: customColors?.primaryTextColor,
                          ),
                          iconColor: customColors?.primaryTextColor,
                          disabledBackgroundColor: customColors?.additionalTwo,
                          disabledIconColor: customColors?.additionalThree,
                        ),
                        iconAlignment: IconAlignment.end,
                        icon: Icon(Icons.keyboard_arrow_right),
                        label: Text(
                          'global_data.next_text'.tr(),
                          style: TextStyle(
                            color: !state.isAcquainted
                                ? isState
                                      ? customColors?.primaryTextColor
                                      : customColors?.additionalThree
                                : customColors?.primaryTextColor,
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    key: ValueKey(1),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FilledButton.icon(
                        onPressed: () {
                          controller.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: customColors?.additionalThree,
                          textStyle: TextStyle(
                            color: customColors?.primaryTextColor,
                          ),
                          iconColor: customColors?.primaryTextColor,
                        ),
                        icon: Icon(Icons.keyboard_arrow_left),
                        label: Text(
                          'global_data.back_text'.tr(),
                          style: TextStyle(
                            color: customColors?.primaryTextColor,
                          ),
                        ),
                      ),
                      FilledButton.icon(
                        onPressed:
                            state.room == null ||
                                state.time == null ||
                                state.myGroup == null ||
                                state.seat == null
                            ? null
                            : () {
                                final seadId = state.seat?.id;
                                final reserveTime = state.time;
                                final groupId = state.myGroup?.group?.id;
                                final date = state.date;
                                if (seadId != null &&
                                    reserveTime != null &&
                                    groupId != null) {
                                  final bloc = context
                                      .read<CoworkingListReserveBloc>();
                                  bloc.add(
                                    CoworkingListReserveEvent.reserve(
                                      seatId: seadId,
                                      date: date,
                                      reserveTime: reserveTime,
                                      groupId: groupId,
                                    ),
                                  );
                                  context.router.maybePop();
                                } else {
                                  Fluttertoast.showToast(
                                    msg:
                                        'coworing_mobile.error_coworking_reserve'
                                            .tr(),
                                  );
                                }
                              },
                        style: FilledButton.styleFrom(
                          disabledBackgroundColor: customColors?.additionalTwo,
                          disabledIconColor: customColors?.additionalThree,
                        ),
                        label: Text(
                          'coworing_mobile.sign_up_coworking'.tr(),
                          style: TextStyle(
                            color: customColors?.primaryTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
