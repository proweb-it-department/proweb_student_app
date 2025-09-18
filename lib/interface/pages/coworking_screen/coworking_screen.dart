import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/bloc/coworking_list_reserve/coworking_list_reserve_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/app_screen_widget.dart';
import 'package:proweb_student_app/models/coworking_list_reserve/coworking_list_reserve.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

@RoutePage()
class CoworkingScreen extends StatelessWidget {
  const CoworkingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CoworkingListReserveBloc()
            ..add(CoworkingListReserveEvent.started(offset: 0)),
      child: CoworkingListenWidget(),
    );
  }
}

class CoworkingListenWidget extends StatefulWidget {
  const CoworkingListenWidget({super.key});

  @override
  State<CoworkingListenWidget> createState() => _CoworkingListenWidgetState();
}

class _CoworkingListenWidgetState extends State<CoworkingListenWidget> {
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

    if (activeIndex != 1) {
      context.read<FabProvider>().setFabCoworking(null);
      setState(() {
        cuttentTab = false;
      });
    } else {
      setState(() {
        cuttentTab = true;
      });
      final state = context.read<CoworkingListReserveBloc>().state;
      final widgetForFab = state.when(
        initial: () => null,
        list: (count, list, reservate) {
          if (!reservate) {
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
      context.read<FabProvider>().setFabCoworking(widgetForFab);
    }
  }

  @override
  void dispose() {
    tabsRouter.removeListener(_onTabChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CoworkingListReserveBloc, CoworkingListReserveState>(
      listener: (context, state) {
        final widgetForFab = state.when(
          initial: () => null,
          list: (count, list, reservate) {
            if (cuttentTab) {
              if (!reservate) {
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
          },
        );
        context.read<FabProvider>().setFabCoworking(widgetForFab);
      },
      child: const CoworkingScaffold(),
    );
  }

  FloatingActionButton _fab(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return FloatingActionButton(
      backgroundColor: customColors?.primaryTextColor,
      onPressed: () {
        context.router.push(
          CoworkingReserveRoute(bloc: context.read<CoworkingListReserveBloc>()),
        );
      },
      enableFeedback: true,
      tooltip: 'coworing_mobile.sign_up_coworking'.tr(),
      child: Icon(Icons.add_to_queue, color: customColors?.primaryBg),
    );
  }
}

class CoworkingScaffold extends StatelessWidget {
  const CoworkingScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoworkingListReserveBloc, CoworkingListReserveState>(
      builder: (context, state) {
        return Scaffold(
          primary: true,
          appBar: MainAppBar(isBorder: false),
          body: state.when(
            initial: () {
              return Center(child: CircularProgressIndicator());
            },
            list: (count, list, reservate) {
              return CoworkingListView(count: count, list: list);
            },
          ),
        );
      },
    );
  }
}

class CoworkingListView extends StatefulWidget {
  final int count;
  final List<CoworkingListReserve> list;
  const CoworkingListView({super.key, required this.count, required this.list});

  @override
  State<CoworkingListView> createState() => _CoworkingListViewState();
}

class _CoworkingListViewState extends State<CoworkingListView> {
  var _isLoading = false;
  String? idSubscribe;

  @override
  void initState() {
    super.initState();
    idSubscribe = sl<Channel>().connect.subscribe(
      channel: WsEvent.coworkingVisitUpdate.name,
      connection: ConnectionData(
        callback: (data) {
          final visite = CoworkingListReserve.fromJson(data);
          if (context.mounted) {
            context.read<CoworkingListReserveBloc>().add(
              CoworkingListReserveEvent.updateWS(visite: visite),
            );
          }
        },
      ),
    );
    final tabsRouter = AutoTabsRouter.of(context);
    tabsRouter.addListener(() {
      if (tabsRouter.currentChild?.name != CoworkingRoute.name) {
        if (idSubscribe != null) {
          sl<Channel>().connect.unsubscribe(uuid: idSubscribe!);
          if (mounted) {
            setState(() {
              idSubscribe = null;
            });
          }
        }
      } else {
        if (idSubscribe == null) {
          if (mounted) {
            setState(() {
              idSubscribe = sl<Channel>().connect.subscribe(
                channel: WsEvent.coworkingVisitUpdate.name,
                connection: ConnectionData(
                  callback: (data) {
                    final visite = CoworkingListReserve.fromJson(data);
                    if (context.mounted) {
                      context.read<CoworkingListReserveBloc>().add(
                        CoworkingListReserveEvent.updateWS(visite: visite),
                      );
                    }
                  },
                ),
              );
            });
          }
        }
      }
    });
  }

  @override
  void dispose() {
    if (idSubscribe != null) {
      sl<Channel>().connect.unsubscribe(uuid: idSubscribe!);
    }
    super.dispose();
  }

  void _fetchData(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });

    final bloc = context.read<CoworkingListReserveBloc>();
    bloc.add(CoworkingListReserveEvent.started(offset: widget.list.length));
    await bloc.stream.first;
    if (!mounted) {
      return;
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    final customColors = Theme.of(context).extension<CustomColors>();

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 0, right: 7, left: 7),
        color: customColors?.containerColor,
        child: RefreshIndicator(
          color: customColors?.primaryTextColor,
          backgroundColor: customColors?.primaryBg,
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          onRefresh: () async {
            final bloc = context.read<CoworkingListReserveBloc>();
            bloc.add(CoworkingListReserveEvent.started(offset: 0));
          },
          child: InfiniteList(
            isLoading: _isLoading,
            centerLoading: true,
            emptyBuilder: (context) {
              return NoData(
                text:
                    "coworing_mobile.you_haven't_signed_up_for_a_coworking_space"
                        .tr(),
                icon: Icons.desktop_windows_outlined,
              );
            },
            hasReachedMax: widget.list.length == widget.count,
            onFetchData: () => _fetchData(context),
            loadingBuilder: (context) => Center(
              child: Container(
                width: 50,
                height: 50,
                padding: EdgeInsets.all(10),
                child: CircularProgressIndicator(),
              ),
            ),
            padding: EdgeInsets.only(top: 15, bottom: bottom + 10 + 100),
            itemCount: widget.list.length,
            itemBuilder: (context, index) {
              final item = widget.list[index];
              final statusColor = item.status == StatusCoworkingReserve.came
                  ? customColors?.warningFillOp
                  : item.status == StatusCoworkingReserve.gone
                  ? customColors?.successFillOp
                  : item.status == StatusCoworkingReserve.notCome
                  ? customColors?.errorFillOp
                  : customColors?.primaryTextColorOp.withAlpha(50);
              String statusTitle = 'coworing_mobile.You_are_registered'.tr();
              if (item.status == StatusCoworkingReserve.came) {
                statusTitle = 'coworing_mobile.you_have_arrived'.tr();
              } else if (item.status == StatusCoworkingReserve.gone) {
                statusTitle = 'coworing_mobile.Youre_gone'.tr();
              } else if (item.status == StatusCoworkingReserve.notCome) {
                statusTitle = 'coworing_mobile.You_didnt_come'.tr();
              }
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,
                children: [
                  if (index == 0)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'menu.coworking'.tr(),
                        style: TextStyle(
                          color: customColors?.primaryTextColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsetsGeometry.only(bottom: 2),
                    child: Material(
                      color: Colors.transparent,
                      child: ListTileBuilder(
                        isStart: index == 0,
                        isEnd: index == widget.list.length - 1,
                        builder: (shape, contentPadding, isThreeLine) {
                          return ListTile(
                            isThreeLine: isThreeLine,
                            selectedColor: customColors?.primaryTextColor,
                            selectedTileColor: customColors?.primaryBg,
                            selected: true,
                            shape: shape,
                            key: ValueKey(item.id ?? 0),
                            contentPadding: contentPadding,
                            onTap: () async {
                              final id = item.id;
                              if (id != null) {
                                context.router.push(
                                  CoworkingSignUpRoute(
                                    visitId: id,
                                    bloc: context
                                        .read<CoworkingListReserveBloc>(),
                                  ),
                                );
                              }
                            },
                            leading: IconAvatar(icon: Icons.event),
                            title: Text(
                              'coworing_mobile.Coworking_registration_time'
                                  .tr(),
                            ),
                            subtitle: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              spacing: 8,
                              children: [
                                Text(
                                  '${item.date != null ? sl<LocalData>().getDateString(date: DateTime.parse(item.date!)) : '- - -'} | ${item.reserveTime ?? '- - -'}',
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    color: statusColor,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Text(
                                    '• $statusTitle',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: statusColor?.withAlpha(255),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            trailing:
                                item.status == StatusCoworkingReserve.reserve
                                ? Row(
                                    mainAxisSize: MainAxisSize.min,
                                    spacing: 12,
                                    children: [
                                      Icon(Icons.edit),
                                      Icon(Icons.delete),
                                    ],
                                  )
                                : Icon(Icons.info_outline),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
