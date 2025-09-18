import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TabBarPopScope extends StatelessWidget {
  final Widget child;
  final PageRouteInfo mainPage;
  const TabBarPopScope({super.key, required this.child, required this.mainPage});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return PopScope(
      canPop: tabsRouter.current.name == mainPage.routeName,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          tabsRouter.navigate(mainPage);
        }
      },
      child: child,
    );
  }
}
