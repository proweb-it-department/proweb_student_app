import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/bloc/group_detail/group_detail_bloc.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/app_bar/balance_widget.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/components/tab_bar_pop_scope/tab_bar_pop_scope.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

@RoutePage()
class MainGroupScreen extends StatelessWidget {
  final int groupId;
  const MainGroupScreen({super.key, @PathParam('id') required this.groupId});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MyGroupsBloc()..add(MyGroupsEvent.started()),
          ),
          BlocProvider(
            create: (context) =>
                GroupDetailBloc()
                  ..add(GroupDetailEvent.started(groupId: groupId)),
          ),
        ],
        child: BlocBuilder<GroupDetailBloc, GroupDetailState>(
          builder: (context, state) {
            return state.when(
              initial: () => MainGroupLoad(),
              complited: (group, groupUser) {
                return GroupDetailPages(group: group, groupUser: groupUser);
              },
              loadGroupDetail: () => MainGroupLoad(),
              errorGroupDetail: () => MainGroupError(),
            );
          },
        ),
      ),
    );
  }
}

class MainGroupLoad extends StatelessWidget {
  const MainGroupLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Md3CirculeIndicator()));
  }
}

class MainGroupError extends StatelessWidget {
  const MainGroupError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(child: ErrorLoad()),
    );
  }
}

class GroupDetailPages extends StatelessWidget {
  final GroupDetail group;
  final MyGroupsItem groupUser;
  const GroupDetailPages({
    super.key,
    required this.group,
    required this.groupUser,
  });

  @override
  Widget build(BuildContext context) {
    final balance = context.read<BalanceBloc>();
    final balanceState = balance.state.when(
      initial: () => null,
      balance: (balance) => balance,
      error: () => null,
    );
    final mainBalance = double.parse(balanceState?.mainBalance ?? '0');
    final balanceMin =
        mainBalance < -4999 &&
        groupUser.paymentType != StudentPaymentType.paymentAfter;
    if (groupUser.status == StudentStatus.notConfirmedReservation ||
        groupUser.status == StudentStatus.reservation ||
        groupUser.status == StudentStatus.notConfirmed ||
        groupUser.status == StudentStatus.autoActivate ||
        groupUser.status == StudentStatus.leaveReservation ||
        groupUser.status == StudentStatus.unstartedLeave) {
      return BlockedGroupView(groupUser: groupUser);
    }

    if (groupUser.status == StudentStatus.leave && balanceMin) {
      return GroupBalanceLeave(balance: mainBalance);
    } else if ((groupUser.status == StudentStatus.graduate ||
            groupUser.status == StudentStatus.partiallyCompleted) &&
        balanceMin) {
      return GroupBalanceGraduate(balance: mainBalance);
    }
    final List<PageRouteInfo<dynamic>> routers = [];
    final List<Widget> tabs = [];
    final status = group.status;
    if (status != null) {
      if (status == MyGroupStatus.started ||
          status == MyGroupStatus.disbanded ||
          status == MyGroupStatus.graduaded) {
        routers.addAll([
          LessonGroupInfoRoute(),
          HomeworkGroupInfoRoute(),
          AttendanceGroupInfoRoute(),
          GradeBookRoute(),
          GroupRankingRoute(),
        ]);
        tabs.addAll([
          Tab(text: 'group.group_tab_lesson'.tr()),
          Tab(text: 'group.group_tab_homework'.tr()),
          Tab(text: 'group.group_tab_attendance'.tr()),
          Tab(text: 'group.group_tab_gradebook'.tr()),
          Tab(text: 'group.group_tab_ranking'.tr()),
        ]);
      }
    }
    return AutoTabsRouter.tabBar(
      routes: [GroupGroupInfoRoute(), ...routers],
      animatePageTransition: true,
      key: ValueKey<String>('tabs_group_page'),
      builder: (context, child, tabController) {
        return TabBarPopScope(
          mainPage: GroupGroupInfoRoute(),
          child: Scaffold(
            appBar: MainAppBar(
              tab: TabBar(
                controller: tabController,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicatorWeight: 4,
                dragStartBehavior: DragStartBehavior.down,
                tabs: [
                  Tab(text: 'group.group_tab_about'.tr()),
                  ...tabs,
                ],
              ),
            ),
            body: child,
          ),
        );
      },
    );
  }
}

class GroupBalanceLeave extends StatelessWidget {
  final double balance;
  const GroupBalanceLeave({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: NoData(
            text: 'group.access_close_title'.tr(),
            icon: Icons.warning_amber,
            size: 40,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            action: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  sl<LocalData>().removeHtmlTags(
                    'group.access_close_content'.tr(),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Center(child: BalanceWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GroupBalanceGraduate extends StatelessWidget {
  final double balance;
  const GroupBalanceGraduate({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: NoData(
            text: 'group.access_close_title'.tr(),
            icon: Icons.warning_amber,
            size: 40,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            action: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  sl<LocalData>().removeHtmlTags(
                    'group.access_close_graduate_content'.tr(),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Center(child: BalanceWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BlockedGroupView extends StatelessWidget {
  final MyGroupsItem groupUser;
  const BlockedGroupView({super.key, required this.groupUser});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: NoData(
            text: 'group.group_closed_title'.tr(),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            size: 40,
            icon: Icons.lock,
            action: Column(
              children: [
                if (groupUser.status == StudentStatus.notConfirmed)
                  Text(
                    'group.group_closed_not_confirmed'.tr(),
                    textAlign: TextAlign.center,
                  )
                else if (groupUser.status == StudentStatus.autoActivate &&
                    groupUser.autoActivateLesson != null)
                  Text(
                    'group.group_closed_auto_activate'.tr(
                      namedArgs: {
                        'count': groupUser.autoActivateLesson.toString(),
                      },
                    ),
                    textAlign: TextAlign.center,
                  )
                else if (groupUser.status == StudentStatus.reservation)
                  Text(
                    'group.group_closed_reservation'.tr(),
                    textAlign: TextAlign.center,
                  )
                else if (groupUser.status ==
                    StudentStatus.notConfirmedReservation)
                  Text(
                    'group.group_closed_not_confirmed_reservation'.tr(),
                    textAlign: TextAlign.center,
                  )
                else if (groupUser.status == StudentStatus.leaveReservation ||
                    groupUser.status == StudentStatus.unstartedLeave)
                  Text(
                    'group.group_closed_leave_reservation'.tr(),
                    textAlign: TextAlign.center,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
