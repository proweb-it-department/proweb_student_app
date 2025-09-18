import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/test_relation/test_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/tab_bar_pop_scope/tab_bar_pop_scope.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:screen_protector/screen_protector.dart';

@RoutePage()
class TestPageScreen extends StatefulWidget {
  final int relationId;
  final int groupId;
  const TestPageScreen({
    super.key,
    @PathParam('relationId') required this.relationId,
    @PathParam('id') required this.groupId,
  });

  @override
  State<TestPageScreen> createState() => _TestPageScreenState();
}

class _TestPageScreenState extends State<TestPageScreen> {
  @override
  void initState() {
    _protectDataLeakageOn();
    super.initState();
  }

  @override
  void dispose() {
    ScreenProtector.protectDataLeakageOff();
    super.dispose();
  }

  void _protectDataLeakageOn() async {
    if (Platform.isIOS) {
      await ScreenProtector.protectDataLeakageWithColor(Colors.black);
    } else if (Platform.isAndroid) {
      await ScreenProtector.protectDataLeakageOn();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: BlocProvider<TestRelationBloc>(
        create: (context) =>
            TestRelationBloc()
              ..add(TestRelationEvent.started(relationId: widget.relationId)),
        child: AutoTabsRouter.tabBar(
          routes: [TestingGroupRoute(), TestingCommentRoute()],
          builder: (context, child, tabController) {
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: TabBarPopScope(
                mainPage: TestingGroupRoute(),
                child: Scaffold(
                  appBar: MainAppBar(
                    tab: TabBar(
                      controller: tabController,
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      indicatorWeight: 4,
                      dragStartBehavior: DragStartBehavior.down,
                      tabs: [
                        Tab(text: 'group_homework.test_tab_testing'.tr()),
                        Tab(
                          text: 'group_homework.homework_student_comment'.tr(),
                        ),
                      ],
                      onTap: (value) {
                        FocusScope.of(context).unfocus();
                      },
                    ),
                  ),
                  body: child,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
