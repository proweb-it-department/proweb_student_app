import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/tab_bar_pop_scope/tab_bar_pop_scope.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';

@RoutePage()
class MyPurchasesScreen extends StatelessWidget {
  const MyPurchasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [
        MyPurchasesProductsRoute(),
        MyPurchasesServicesRoute(),
        MyPurchasesTarifsRoute(),
      ],
      builder: (context, child, controller) {
        return TabBarPopScope(
          mainPage: MyPurchasesProductsRoute(),
          child: AnnotatedRegion(
            value: FlexColorScheme.themedSystemNavigationBar(
              context,
              systemNavBarStyle: FlexSystemNavBarStyle.transparent,
            ),
            child: Scaffold(
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
                    Tab(text: 'shop_app.Exclusive_products'.tr()),
                    Tab(text: 'shop_app.Additional_services'.tr()),
                    Tab(text: 'shop_app.PREMIUM_Tariffs'.tr()),
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
