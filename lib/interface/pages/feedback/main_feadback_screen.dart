import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/feadback_list/feadback_list_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/pages/app_screen_widget.dart';
import 'package:proweb_student_app/interface/pages/feedback/widgets/feadback_list_view.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FeadbackListBloc()..add(FeadbackListEvent.started(offset: 0)),
      child: MainFeadbackScreen(),
    );
  }
}

class MainFeadbackScreen extends StatefulWidget {
  const MainFeadbackScreen({super.key});

  @override
  State<MainFeadbackScreen> createState() => _MainFeadbackScreenState();
}

class _MainFeadbackScreenState extends State<MainFeadbackScreen> {
  late TabsRouter tabsRouter;
  bool cuttentTab = false;
  @override
  void initState() {
    super.initState();
    cuttentTab = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      tabsRouter = AutoTabsRouter.of(context);
      tabsRouter.addListener(_onTabChanged);
    });
  }

  void _onTabChanged() {
    final activeIndex = tabsRouter.activeIndex;

    if (activeIndex != 2) {
      context.read<FabProvider>().setFabFeedback(null);
      setState(() {
        cuttentTab = false;
      });
    } else {
      setState(() {
        cuttentTab = true;
      });
      final state = context.read<FeadbackListBloc>().state;
      final widgetForFab = state.whenOrNull(
        initial: () => null,
        complited: (count, feadbacks, created) {
          if (!created) {
            return _fab(context);
          } else {
            return SizedBox(
              width: 56,
              height: 56,
              child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
            );
          }
        },
      );
      context.read<FabProvider>().setFabFeedback(widgetForFab);
    }
  }

  @override
  void dispose() {
    tabsRouter.removeListener(_onTabChanged);
    super.dispose();
  }

  FloatingActionButton _fab(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return FloatingActionButton(
      backgroundColor: customColors?.primaryTextColor,
      onPressed: () {
        context.router.push(
          CreatedFeadbackRoute(bloc: context.read<FeadbackListBloc>()),
        );
      },
      enableFeedback: true,
      tooltip: 'coworing_mobile.sign_up_coworking'.tr(),
      child: Icon(Icons.add_comment_outlined, color: customColors?.primaryBg),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FeadbackListBloc, FeadbackListState>(
      listener: (context, state) {
        final widgetForFab = state.whenOrNull(
          initial: () => null,
          complited: (count, feadbacks, created) {
            if (cuttentTab) {
              if (!created) {
                return _fab(context);
              } else {
                return SizedBox(
                  width: 56,
                  height: 56,
                  child: Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                );
              }
            }
            return null;
          },
        );
        context.read<FabProvider>().setFabFeedback(widgetForFab);
      },
      child: FeadbackListViewListen(),
    );
  }
}

class FeadbackListViewListen extends StatelessWidget {
  const FeadbackListViewListen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeadbackListBloc, FeadbackListState>(
      builder: (context, state) {
        return Scaffold(
          appBar: MainAppBar(isBorder: false),
          body: FeadbackListViewState(),
        );
      },
    );
  }
}
