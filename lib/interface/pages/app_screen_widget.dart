import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proweb_student_app/bloc/nps_poll/nps_poll_bloc.dart';
import 'package:proweb_student_app/interface/components/body/body.dart';
import 'package:proweb_student_app/interface/components/nav_bar/nav_bar.dart';
import 'package:proweb_student_app/interface/components/pro_bottom_sheet/pro_bottom_sheet.dart';
import 'package:proweb_student_app/models/nps_poll/nps_poll.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:talker_logger/talker_logger.dart';

class AppScreenWidget extends StatelessWidget {
  const AppScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavBarProvider(),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ScrollStateProvider()),
          ChangeNotifierProvider(create: (context) => FabProvider()),
          ChangeNotifierProvider(create: (_) => AutoBottomSheetProvider()),
        ],
        child: BlocListener<NpsPollBloc, NpsPollState>(
          listenWhen: (previous, current) {
            return previous is! NpsPollComplited && current is NpsPollComplited;
          },
          listener: (context, state) {
            state.maybeWhen(
              complited: (nps) {
                final hasItems = (nps.list.isNotEmpty);
                if (!hasItems) return;
                context.read<AutoBottomSheetProvider>().scheduleOpen(
                  delay: const Duration(seconds: 10),
                );
              },
              orElse: () {},
            );
          },
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
              final bloc = context.read<NpsPollBloc>();
              return _AutoSheetOpener(
                bloc: bloc,
                child: BodyPopScope(child: child),
              );
            },
          ),
        ),
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
    final isVisible = provider.isNavigationBarVisible;
    final pb = MediaQuery.of(context).viewPadding.bottom;
    tabsRouter.addListener(() {
      if (!provider.isNavigationBarVisible) {
        provider.showNavigationBar();
      }
    });
    final navBar = context.watch<NavBarProvider>();

    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: PopScope(
        canPop: navBar.isOpen == false
            ? tabsRouter.current.name == HomeRoute.name
            : false,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop) {
            if (navBar.isOpen) {
              context.read<NavBarProvider>().close();
              return;
            }
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
          floatingActionButton: navBar.isOpen
              ? null
              : fabCoworking ?? fabFeedback,
          floatingActionButtonLocation: MenuAwareFabLocation(isVisible, pb),
          floatingActionButtonAnimator: SlideFabAnimator(),
          extendBody: true,
          primary: true,
        ),
      ),
    );
  }
}

class _AutoSheetOpener extends StatelessWidget {
  final Widget child;
  final NpsPollBloc bloc;
  const _AutoSheetOpener({required this.bloc, required this.child});

  @override
  Widget build(BuildContext context) {
    return Consumer<AutoBottomSheetProvider>(
      builder: (context, sheet, _) {
        if (sheet.openEvent) {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            sheet.consumeOpenEvent();
            if (!context.mounted) return;
            final data = bloc.state.whenOrNull(
              complited: (nps) => nps.list.firstOrNull,
            );
            if (data == null) return;
            final nps = await showProBottomSheet<bool>(
              useSafeArea: false,
              fullScreenMax: 1,
              context: context,
              title: data.poll?.name,
              actions: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
              ],
              body: BottomSheetNps(nps: data),
            );
            if (context.mounted && nps != null && nps) {
              TalkerLogger().log(data);
              final npsId = data.poll?.id;
              final relationId = data.id;
              if (npsId == null || relationId == null) return;
              context.router.navigate(
                NpsRoute(relationId: relationId, npsId: npsId),
              );
            }
          });
        }

        return child;
      },
      child: child,
    );
  }
}

class BottomSheetNps extends StatelessWidget {
  final NpsPoll nps;
  const BottomSheetNps({super.key, required this.nps});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Lottie.asset(
              'assets/lottie/poll2.json',
              width: 150,
              height: 150,
              animate: true,
              repeat: true,
            ),
          ),
          Text(nps.poll?.name ?? '', style: TextStyle(fontSize: 24)),
          SizedBox(height: 10),
          Text(
            nps.poll?.shortDescription ?? '',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 15),
          Opacity(
            opacity: 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                Icon(Icons.timer_sharp),
                Text('Всего 5 минут на прохождения'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Material(
            color: Colors.blue.shade300,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop(true);
              },
              borderRadius: BorderRadius.circular(8),
              child: Ink(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Пройти опрос',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideFabAnimator extends FloatingActionButtonAnimator {
  @override
  Offset getOffset({
    required Offset begin,
    required Offset end,
    required double progress,
  }) {
    return Offset.lerp(begin, end, progress)!;
  }

  @override
  Animation<double> getScaleAnimation({required Animation<double> parent}) {
    return const AlwaysStoppedAnimation(1.0);
  }

  @override
  Animation<double> getRotationAnimation({required Animation<double> parent}) {
    return const AlwaysStoppedAnimation(0.0);
  }
}

class MenuAwareFabLocation extends FloatingActionButtonLocation {
  final bool menuVisible;
  final double pb;

  MenuAwareFabLocation(this.menuVisible, this.pb);

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry g) {
    final double margin = 16;

    final double fabX =
        g.scaffoldSize.width - g.floatingActionButtonSize.width - margin;

    final double fabYWithMenu =
        g.scaffoldSize.height -
        (55 + pb + 15) -
        g.floatingActionButtonSize.height -
        margin;

    final double fabYWithoutMenu =
        g.scaffoldSize.height - g.floatingActionButtonSize.height - margin - 10;

    return Offset(fabX, menuVisible ? fabYWithMenu : fabYWithoutMenu);
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

class AutoBottomSheetProvider extends ChangeNotifier {
  Timer? _timer;

  bool _openEvent = false;
  bool _scheduled = false;

  bool get openEvent => _openEvent;

  void scheduleOpen({Duration delay = const Duration(seconds: 10)}) {
    if (_scheduled) return;
    _scheduled = true;

    _timer?.cancel();
    _timer = Timer(delay, () {
      _openEvent = true;
      notifyListeners();
    });
  }

  void cancel() {
    _timer?.cancel();
    _timer = null;
    _scheduled = false;
    _openEvent = false;
    notifyListeners();
  }

  void consumeOpenEvent() {
    if (!_openEvent) return;
    _openEvent = false;
    notifyListeners();
  }

  void resetScheduling() {
    _scheduled = false;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
