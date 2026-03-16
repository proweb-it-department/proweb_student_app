import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/cups/cups_bloc.dart';
import 'package:proweb_student_app/bloc/my_statistic/my_statistic_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/tab_bar_pop_scope/tab_bar_pop_scope.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return AutoTabsRouter.tabBar(
      routes: [HomeMainRoute(), HomeHomeworkRoute()],
      builder: (context, child, controller) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  MyStatisticBloc()..add(MyStatisticEvent.started()),
            ),
            BlocProvider(
              create: (context) => CupsBloc()..add(CupsEvent.started()),
            ),
          ],
          child: TabBarPopScope(
            mainPage: HomeMainRoute(),
            child: Scaffold(
              backgroundColor: customColors?.primaryBg,
              appBar: MainAppBar(
                isBorder: false,
                tab: TabBar(
                  controller: controller,
                  isScrollable: true,
                  dividerColor: Colors.transparent,
                  tabAlignment: TabAlignment.start,
                  indicatorWeight: 4,
                  dragStartBehavior: DragStartBehavior.down,
                  onTap: (value) {},
                  tabs: [
                    Tab(text: 'home.tab_edu'.tr()),
                    Tab(text: 'group_homework.tasks'.tr()),
                  ],
                ),
              ),
              body: child,
            ),
          ),
        );
      },
    );
  }
}
