import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proweb_student_app/interface/components/body/body.dart';
import 'package:proweb_student_app/interface/components/nav_bar/nav_bar.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';

class AppScreenWidget extends StatelessWidget {
  const AppScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ScrollStateProvider()),
        ChangeNotifierProvider(create: (context) => FabProvider()),
      ],
      child: AutoTabsRouter(
        routes: const [
          HomeRoute(),
          CoworkingRoute(),
          FeedbackRoute(),
          RankingRoute(),
          ShopRoute(),
          // ProwebRoute(),
        ],
        transitionBuilder: (context, child, animation) => child,
        builder: (context, child) {
          return BodyPopScope(child: child);
        },
      ),
    );
  }
}

class BodyPopScope extends StatelessWidget {
  final Widget child;
  const BodyPopScope({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final provider = Provider.of<ScrollStateProvider>(context);
    final fabCoworking = context.watch<FabProvider>().fabCoworking;
    final fabFeedback = context.watch<FabProvider>().fabFeedback;

    tabsRouter.addListener(() {
      if (!provider.isNavigationBarVisible) {
        provider.showNavigationBar();
      }
    });
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: PopScope(
        canPop: tabsRouter.current.name == HomeRoute.name,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop) {
            context.router.replaceAll([HomeRoute()]);
            if (tabsRouter.current.name == HomeRoute.name) {
              Fluttertoast.showToast(msg: "home.try_again_main_msg".tr());
            }
            if (!provider.isNavigationBarVisible) {
              provider.showNavigationBar();
            }
          }
        },
        child: Scaffold(
          body: BodyApp(child: child),
          bottomNavigationBar: BottomNavBar(),
          floatingActionButton: fabCoworking ?? fabFeedback,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.endContained,
          extendBody: true,
          primary: true,
        ),
      ),
    );
  }
}

class FabProvider with ChangeNotifier {
  Widget? _fabCoworking;
  Widget? get fabCoworking => _fabCoworking;
  Widget? _fabFeedback;
  Widget? get fabFeedback => _fabFeedback;

  void setFabCoworking(Widget? fab) {
    _fabCoworking = fab;
    notifyListeners();
  }

  void setFabFeedback(Widget? fab) {
    _fabFeedback = fab;
    notifyListeners();
  }
}

class ScrollStateProvider extends ChangeNotifier {
  bool _isNavigationBarVisible = true;

  bool get isNavigationBarVisible => _isNavigationBarVisible;

  void showNavigationBar() {
    if (!_isNavigationBarVisible) {
      _isNavigationBarVisible = true;
      notifyListeners();
    }
  }

  void hideNavigationBar() {
    if (_isNavigationBarVisible) {
      _isNavigationBarVisible = false;
      notifyListeners();
    }
  }
}
