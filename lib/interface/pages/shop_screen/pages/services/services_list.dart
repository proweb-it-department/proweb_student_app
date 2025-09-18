import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/bloc/service_list/service_list_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/course_avatar/course_avatar.dart';
import 'package:proweb_student_app/interface/components/gradient_text/gradient_text.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/pages/shop_screen/pages/services/dialog_my_group_select_video.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/my_purchases_service/my_purchases_service.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/models/servise_for_sale/servise_for_sale.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class ServicesListScreen extends StatelessWidget {
  final int? serviceId;
  const ServicesListScreen({super.key, @pathParam this.serviceId});

  @override
  Widget build(BuildContext context) {
    final int serviceParamId = context.routeData.queryParams.getInt(
      'service_id',
      0,
    );
    int? serviceIdOrNull = serviceParamId == 0 ? null : serviceParamId;
    return BlocProvider(
      create: (context) {
        final bloc = ServiceListBloc();
        bloc.add(
          ServiceListEvent.started(offset: 0, limit: LimitRequest.services),
        );
        return bloc;
      },
      child: ServicesList(serviceId: serviceIdOrNull ?? serviceId),
    );
  }
}

class ServicesList extends StatelessWidget {
  final int? serviceId;
  const ServicesList({super.key, this.serviceId});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: MainAppBar(isBorder: false),
        body: ClipRRect(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: customColors?.containerColor,
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
            child: ServiceBlocView(serviceId: serviceId),
          ),
        ),
      ),
    );
  }
}

class ServiceBlocView extends StatelessWidget {
  final int? serviceId;
  const ServiceBlocView({super.key, this.serviceId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceListBloc, ServiceListState>(
      builder: (context, state) {
        return state.when(
          load: () {
            return Center(child: CircularProgressIndicator());
          },
          complited: (services, load) {
            return ServiceListView(
              serviceId: serviceId,
              services: services,
              load: load,
            );
          },
        );
      },
    );
  }
}

class ServiceListView extends StatefulWidget {
  final int? serviceId;
  final ResponseLazeList<ServiseForSale> services;
  final bool load;
  const ServiceListView({
    super.key,
    this.serviceId,
    required this.services,
    required this.load,
  });

  @override
  State<ServiceListView> createState() => _ServiceListViewState();
}

class _ServiceListViewState extends State<ServiceListView> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  bool _isFinished = false;
  int _lenght = 0;
  int categoryId = 0;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    if (widget.services.list.length == widget.services.count) {
      _isFinished = true;
    } else {
      _isFinished = false;
    }
    if (widget.services.list.isNotEmpty) {
      _lenght = widget.services.list.length;
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !_isLoading) {
      _loadMoreItems();
    }
  }

  Future<void> _loadMoreItems() async {
    if (!_isFinished) {
      setState(() {
        _isLoading = true;
      });
      final bloc = context.read<ServiceListBloc>();
      bloc.add(
        ServiceListEvent.started(offset: _lenght, limit: LimitRequest.services),
      );
      await bloc.stream.first;
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double paddingBottom = MediaQuery.of(context).viewPadding.bottom;
    return ListView(
      padding: EdgeInsets.only(
        top: 10,
        right: 10,
        left: 10,
        bottom: paddingBottom + 10,
      ),
      controller: _scrollController,
      children: [
        ...List.generate(widget.services.list.length, (index) {
          final service = widget.services.list.elementAt(index);

          return ServiceItem(
            service: service,
            isStart: index == 0,
            isEnd: index == (widget.services.list.length - 1),
            serviceId: widget.serviceId,
          );
        }),
        if (widget.load) Center(child: CircularProgressIndicator()),
      ],
    );
  }
}

class ServiceItem extends StatefulWidget {
  final ServiseForSale? service;
  final MyPurchasesService? purchased;
  final int? serviceId;
  final bool isStart;
  final bool isEnd;

  const ServiceItem({
    super.key,
    this.service,
    this.serviceId,
    required this.isStart,
    required this.isEnd,
    this.purchased,
  });

  @override
  State<ServiceItem> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<ServiceItem> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.serviceId == null || widget.serviceId != widget.service?.id) {
        return;
      }
      if (!mounted) return;
      _showDialogBuy(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final cover = widget.service?.cover ?? widget.purchased?.cover;
    final type = widget.service?.type ?? widget.purchased?.type;
    final double borderRadius = 16;

    double? month;
    final days = widget.service?.days ?? widget.purchased?.days;
    if (days != null) {
      month = (days / 30).round().toDouble();
    }
    return ListTileBuilder(
      isEnd: widget.isEnd,
      isStart: widget.isStart,
      builder: (shape, contentPadding, isThreeLine) {
        return Card.outlined(
          shape: shape,
          clipBehavior: Clip.antiAlias,
          color: customColors?.primaryBg,
          child: ClipRRect(
            borderRadius: shape.borderRadius,
            child: Material(
              shape: shape,
              color: Colors.transparent,
              child: InkWell(
                enableFeedback: true,
                onTap: () async {
                  final dataBuy = await _showDialogBuy(context);
                  final id = widget.service?.id ?? widget.purchased?.id;
                  if (id != null &&
                      dataBuy != null &&
                      dataBuy.runtimeType == int &&
                      context.mounted) {
                    final bloc = context.read<ServiceListBloc>();
                    bloc.add(
                      ServiceListEvent.buy(serviceId: id, studentId: dataBuy),
                    );
                    final buy = ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: customColors?.containerColor,
                        content: Row(
                          spacing: 10,
                          children: [
                            CircularProgressIndicator(
                              constraints: BoxConstraints(
                                maxHeight: 25,
                                maxWidth: 25,
                                minHeight: 25,
                                minWidth: 25,
                              ),
                              strokeWidth: 1,
                            ),
                            Text('Идёт покупка услуги'),
                          ],
                        ),
                      ),
                    );
                    await bloc.stream.first;
                    await Future.delayed(Duration(milliseconds: 1000));
                    buy.close();
                    Fluttertoast.showToast(msg: 'Услуга куплена');
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (cover != null)
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(
                            borderRadius,
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              color: customColors?.additionalOne,
                              image: DecorationImage(
                                image: CachedNetworkImageProvider(cover),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ListTile(
                      contentPadding: contentPadding,
                      leading: type != null
                          ? IconAvatar(
                              gradient: LinearGradient(
                                begin: Alignment(-0.766, -1.0),
                                end: Alignment(1.0, 0.5),
                                colors: [Color(0xFF5296FD), Color(0xFFBF57FF)],
                                stops: [0.28, 1.0],
                              ),
                              icon: type == ServiceType.video
                                  ? Icons.play_circle
                                  : type == ServiceType.text
                                  ? Icons.title
                                  : type == ServiceType.text
                                  ? Icons.list
                                  : Icons.work,
                            )
                          : null,
                      title: Text(
                        widget.service?.name ??
                            widget.purchased?.name ??
                            '- - -',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          color: customColors?.primaryTextColor,
                        ),
                      ),
                      trailing: month != null
                          ? Row(
                              spacing: 5,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '+${month.toInt().toString()}',
                                  style: TextStyle(fontSize: 16),
                                ),

                                GradientTextPaint(
                                  text: sl<LocalData>().plural(
                                    'global_data.monthText'.tr(),
                                    month.toInt(),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment(-0.766, -1.0),
                                    end: Alignment(1.0, 0.5),
                                    colors: [
                                      Color(0xFF5296FD),
                                      Color(0xFFBF57FF),
                                    ],
                                    stops: [0.28, 1.0],
                                  ),
                                  style: TextStyle(fontSize: 20),
                                  fitToContainer: true,
                                ),
                              ],
                            )
                          : null,
                      subtitle:
                          (widget.service?.price ?? widget.purchased?.price) !=
                              null
                          ? Row(
                              mainAxisSize: MainAxisSize.min,

                              children: [
                                GradientTextPaint(
                                  text: NumberFormat('#,##0', 'ru_RU').format(
                                    double.parse(
                                      (widget.service?.price ??
                                          widget.purchased?.price)!,
                                    ),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment(-0.766, -1.0),
                                    end: Alignment(1.0, 0.5),
                                    colors: [
                                      Color(0xFF5296FD),
                                      Color(0xFFBF57FF),
                                    ],
                                  ),
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  fitToContainer: true,
                                ),
                                Text(
                                  'global_data.sum'.tr(
                                    namedArgs: {'money': ''},
                                  ),
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          : null,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<int?>? _showDialogBuy(BuildContext context) async {
    return await showDialog<int>(
      context: context,
      fullscreenDialog: true,
      useSafeArea: false,
      builder: (_) {
        return ChangeNotifierProvider(
          create: (context) => BuyServiceProvider(),
          child: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: context.read<MyGroupsBloc>()),
              BlocProvider.value(value: context.read<BalanceBloc>()),
            ],

            child: BuyServiceDialog(
              service: widget.service,
              purchased: widget.purchased,
            ),
          ),
        );
      },
    );
  }
}

class BuyServiceDialog extends StatefulWidget {
  final ServiseForSale? service;
  final MyPurchasesService? purchased;
  const BuyServiceDialog({super.key, this.service, this.purchased});

  @override
  State<BuyServiceDialog> createState() => _BuyServiceDialogState();
}

class _BuyServiceDialogState extends State<BuyServiceDialog> {
  int activePage = 0;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    final stateBuy = context.watch<BuyServiceProvider>();
    final stateBuyChange = context.watch<BuyServiceProvider>();
    final paddingBottom = MediaQuery.of(context).viewPadding.bottom;
    return Container(
      color: customColor?.primaryBg,
      child: Column(
        children: [
          Expanded(
            child: Material(
              color: Colors.transparent,
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    activePage = value;
                  });
                },
                controller: controller,
                children: [
                  CustomScrollView(
                    slivers: [
                      ServiceAppBar(
                        service: widget.service,
                        purchased: widget.purchased,
                      ),
                      ServiceBodyInfo(
                        service: widget.service,
                        purchased: widget.purchased,
                        controller: controller,
                      ),
                    ],
                  ),
                  if (widget.service != null)
                    ServiceBuyData(
                      controller: controller,
                      service: widget.service!,
                    ),
                ],
              ),
            ),
          ),
          if (widget.service != null)
            Container(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: paddingBottom + 10,
              ),
              decoration: BoxDecoration(
                color: customColor?.primaryBg,
                border: Border(
                  top: BorderSide(
                    color: customColor?.borderColors ?? Colors.transparent,
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
                            onPressed: () {
                              controller.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: customColor?.additionalThree,
                              textStyle: TextStyle(
                                color: customColor?.primaryTextColor,
                              ),
                              iconColor: customColor?.primaryTextColor,
                              disabledBackgroundColor:
                                  customColor?.additionalTwo,
                              disabledIconColor: customColor?.additionalThree,
                            ),
                            iconAlignment: IconAlignment.end,
                            icon: Icon(Icons.keyboard_arrow_right),
                            label: Text(
                              'Прейти к покупке',
                              style: TextStyle(
                                color: customColor?.primaryTextColor,
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
                              stateBuyChange.clearGroup();
                              stateBuyChange.setFlag(false);
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: customColor?.additionalThree,
                              textStyle: TextStyle(
                                color: customColor?.primaryTextColor,
                              ),
                              iconColor: customColor?.primaryTextColor,
                            ),
                            icon: Icon(Icons.keyboard_arrow_left),
                            label: Text(
                              'global_data.back_text'.tr(),
                              style: TextStyle(
                                color: customColor?.primaryTextColor,
                              ),
                            ),
                          ),
                          if (true)
                            FilledButton.icon(
                              onPressed: stateBuy.group != null && stateBuy.flag
                                  ? () {
                                      final id = stateBuy.group?.groupUserId;
                                      if (id == null) return;
                                      Navigator.of(context).pop(id);
                                    }
                                  : null,
                              style: FilledButton.styleFrom(
                                disabledBackgroundColor:
                                    customColor?.additionalTwo,
                                disabledIconColor: customColor?.additionalThree,
                              ),
                              label: Text(
                                'Купить услугу',
                                style: TextStyle(
                                  color: customColor?.primaryTextColor,
                                ),
                              ),
                            ),
                        ],
                      ),
              ),
            ),
        ],
      ),
    );
  }
}

class ServiceAppBar extends StatelessWidget {
  final ServiseForSale? service;
  final MyPurchasesService? purchased;
  const ServiceAppBar({super.key, this.service, this.purchased});

  @override
  Widget build(BuildContext context) {
    final expandedHeight = MediaQuery.of(context).size.width * 9 / 16;
    final customColors = Theme.of(context).extension<CustomColors>();
    final paddingTop = MediaQuery.of(context).viewPadding.top;
    final type = service?.type ?? purchased?.type;

    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      shadowColor: customColors?.containerColor,
      expandedHeight: expandedHeight,
      backgroundColor: customColors?.primaryBg,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final percent =
              (constraints.maxHeight - kToolbarHeight) /
              (expandedHeight - kToolbarHeight);
          final fade = 0.1;
          final bgColor = Color.lerp(
            customColors?.primaryBg ?? Colors.black,
            Colors.transparent,
            0,
          );
          double opacity = percent > 1 ? 1 : percent;
          if (opacity < 0) {
            opacity = 0;
          }
          return Ink(
            color: bgColor,
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (service?.cover != null || purchased?.cover != null)
                  Opacity(
                    opacity: (percent - fade) < 0
                        ? 0
                        : (percent - fade) > 1
                        ? 1
                        : (percent - fade),
                    child: Ink.image(
                      image: CachedNetworkImageProvider(
                        (service?.cover ?? purchased?.cover)!,
                      ),
                      fit: BoxFit.cover,
                    ),
                  )
                else
                  SizedBox(),
                if (percent >= fade)
                  Ink(
                    padding: EdgeInsets.only(top: paddingTop),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.center,
                        colors: [
                          customColors?.primaryBg ?? Colors.black,
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                if (percent >= fade)
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Ink(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.3,
                        left: 20,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            customColors?.primaryBg ?? Colors.black,
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 10,
                        children: [
                          if (type != null)
                            IconAvatar(
                              gradient: LinearGradient(
                                begin: Alignment(-0.766, -1.0),
                                end: Alignment(1.0, 0.5),
                                colors: [Color(0xFF5296FD), Color(0xFFBF57FF)],
                                stops: [0.28, 1.0],
                              ),
                              icon: type == ServiceType.video
                                  ? Icons.play_circle
                                  : type == ServiceType.text
                                  ? Icons.title
                                  : type == ServiceType.text
                                  ? Icons.list
                                  : Icons.work,
                            ),
                          Padding(
                            padding: EdgeInsetsGeometry.only(bottom: 20),
                            child: Text(
                              service?.name ?? purchased?.name ?? '- - -',
                              style: TextStyle(
                                color: customColors?.primaryTextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Positioned(
                  left: 72,
                  bottom: 16,
                  right: 10,
                  child: Opacity(
                    opacity: percent < fade ? 1.0 : 0.0,
                    child: Text(
                      service?.name ?? purchased?.name ?? '- - -',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: customColors?.primaryTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ServiceBodyInfo extends StatelessWidget {
  final ServiseForSale? service;
  final MyPurchasesService? purchased;
  final PageController controller;
  const ServiceBodyInfo({
    super.key,
    this.service,
    required this.controller,
    this.purchased,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    final type = service?.type ?? purchased?.type;
    double? month;
    final days = service?.days ?? purchased?.days;
    if (days != null) {
      month = (days / 30).round().toDouble();
    }
    return SliverToBoxAdapter(
      child: Column(
        spacing: 10,
        children: [
          if ((type == ServiceType.video || type == ServiceType.coworking) &&
              month != null)
            Row(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '+${month.toInt().toString()}',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                GradientTextPaint(
                  text: sl<LocalData>().plural(
                    'global_data.monthText'.tr(),
                    month.toInt(),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(-0.766, -1.0),
                    end: Alignment(1.0, 0.5),
                    colors: [Color(0xFF5296FD), Color(0xFFBF57FF)],
                    stops: [0.28, 1.0],
                  ),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  fitToContainer: true,
                ),
              ],
            ),
          if ((type == ServiceType.video || type == ServiceType.coworking) &&
              month != null)
            Text(
              type == ServiceType.coworking
                  ? 'Коворкинг будет доступен по окончанию обучения'
                  : 'Срок хранения видео по окончанию обучения',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          if ((service?.price ?? purchased?.price) != null)
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 2,
                children: [
                  ListTileBuilder(
                    isStart: true,
                    isEnd: purchased == null,
                    builder: (shape, contentPadding, isThreeLine) {
                      return Material(
                        color: Colors.transparent,
                        child: ListTile(
                          onTap: purchased == null
                              ? () {
                                  controller.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              : null,
                          shape: shape,
                          contentPadding: contentPadding,
                          selected: true,
                          selectedTileColor: customColor?.containerColor,
                          selectedColor: customColor?.primaryTextColor,
                          leading: IconAvatar(icon: Icons.attach_money),
                          title: Text('Стоимость услуги'),
                          subtitle: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GradientTextPaint(
                                text: NumberFormat('#,##0', 'ru_RU').format(
                                  double.parse(
                                    (service?.price ?? purchased?.price)!,
                                  ),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment(-0.766, -1.0),
                                  end: Alignment(1.0, 0.5),
                                  colors: [
                                    Color(0xFF5296FD),
                                    Color(0xFFBF57FF),
                                  ],
                                ),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                fitToContainer: true,
                              ),
                              Text(
                                'global_data.sum'.tr(namedArgs: {'money': ''}),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          trailing: purchased == null
                              ? Icon(Icons.chevron_right_rounded)
                              : null,
                        ),
                      );
                    },
                  ),
                  if (purchased != null)
                    ListTileBuilder(
                      isStart: false,
                      isEnd: true,
                      builder: (shape, contentPadding, isThreeLine) {
                        return Material(
                          color: Colors.transparent,
                          child: ListTile(
                            shape: shape,
                            contentPadding: contentPadding,
                            selected: true,
                            selectedTileColor: customColor?.containerColor,
                            selectedColor: customColor?.primaryTextColor,
                            leading: CourseAvatar(
                              icon: purchased!.student!.group!.course!.icon!,
                              color: HexColor(
                                purchased!.student!.group!.course!.color!,
                              ),
                            ),
                            title: Text(
                              purchased!.student!.group!.course!.name ??
                                  '- - -',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text(
                              '#${purchased!.student!.group!.id!}',
                            ),
                            trailing: purchased == null
                                ? Icon(Icons.chevron_right_rounded)
                                : null,
                          ),
                        );
                      },
                    ),
                ],
              ),
            ),
          if (service?.description != null || purchased?.description != null)
            Opacity(
              opacity: 0.7,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  (service?.description ?? purchased?.description)!,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ServiceBuyData extends StatefulWidget {
  final ServiseForSale service;
  final PageController controller;
  const ServiceBuyData({
    super.key,
    required this.service,
    required this.controller,
  });

  @override
  State<ServiceBuyData> createState() => _ServiceBuyDataState();
}

class _ServiceBuyDataState extends State<ServiceBuyData> {
  MyGroupsItem? selectGroup;
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    final stateBuy = context.read<BuyServiceProvider>();
    final customColors = Theme.of(context).extension<CustomColors>();
    final blocBalanc = context.read<BalanceBloc>().state;
    final mainBalance = blocBalanc.whenOrNull(
      balance: (balance) {
        return balance.mainBalance;
      },
    );
    double balance = 0;
    if (mainBalance != null) {
      balance = double.parse(mainBalance);
    }
    double price = 0;
    if (widget.service.price != null) {
      price = double.parse(widget.service.price!);
    }

    String balanceFormater = NumberFormat('#,##0', 'ru_RU').format(balance);
    String priceFormater = NumberFormat('#,##0', 'ru_RU').format(price);
    final isBuy = balance >= price;
    return Scaffold(
      appBar: MainAppBar(),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(bottom: 2),
            child: ListTileBuilder(
              isStart: true,
              isEnd: false,
              builder: (shape, contentPadding, isThreeLine) {
                return ListTile(
                  shape: shape,
                  contentPadding: contentPadding,
                  isThreeLine: isThreeLine,
                  tileColor: customColors?.containerColor,
                  minTileHeight: 30,
                  leading: IconAvatar(icon: Icons.attach_money_rounded),
                  title: Text('Стоимость услуги'),
                  subtitle: Text(
                    'global_data.sum'.tr(namedArgs: {'money': priceFormater}),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(bottom: 2),
            child: ListTileBuilder(
              isStart: false,
              isEnd: !isBuy,
              builder: (shape, contentPadding, isThreeLine) {
                return ListTile(
                  shape: shape,
                  contentPadding: contentPadding,
                  isThreeLine: isThreeLine,
                  tileColor: customColors?.containerColor,
                  minTileHeight: 30,
                  leading: IconAvatar(icon: Icons.wallet),
                  title: Text('shop_app.Your_main_balance'.tr()),
                  subtitle: Text(
                    'global_data.sum'.tr(namedArgs: {'money': balanceFormater}),
                    style: TextStyle(
                      color: !isBuy
                          ? customColors?.errorFill
                          : customColors?.primaryTextColor,
                    ),
                  ),
                );
              },
            ),
          ),
          if (isBuy)
            Padding(
              padding: EdgeInsetsGeometry.only(bottom: 2),
              child: ListTileBuilder(
                isStart: false,
                isEnd: stateBuy.group == null,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    onTap: stateBuy.group == null
                        ? () async {
                            final myGroup = await showDialog<MyGroupsItem?>(
                              context: context,
                              builder: (context) {
                                return DialogMyGroupSelectVideo();
                              },
                            );
                            stateBuy.setGroup(myGroup);
                          }
                        : () {
                            stateBuy.clearGroup();
                          },
                    selected: true,
                    shape: shape,
                    contentPadding: contentPadding,
                    selectedTileColor: customColors?.containerColor,
                    selectedColor: customColors?.primaryTextColor,
                    minTileHeight: 30,
                    trailing: stateBuy.group == null ? null : Icon(Icons.clear),
                    leading: stateBuy.group == null
                        ? IconAvatar(icon: Icons.groups)
                        : CourseAvatar(
                            icon: stateBuy.group!.group!.course!.icon!,
                            color: HexColor(
                              stateBuy.group!.group!.course!.color!,
                            ),
                          ),
                    title: Text(
                      stateBuy.group?.group?.course?.name != null
                          ? '${stateBuy.group?.group?.course?.name}'
                          : 'Выбирете группу',
                    ),
                    subtitle: Text(
                      stateBuy.group?.group != null
                          ? '#${stateBuy.group?.group?.id}'
                          : 'Группа не выбрана',
                    ),
                  );
                },
              ),
            ),
          if (stateBuy.group != null)
            Padding(
              padding: EdgeInsetsGeometry.only(bottom: 2),
              child: ListTileBuilder(
                isStart: false,
                isEnd: true,
                builder: (shape, contentPadding, isThreeLine) {
                  return CheckboxListTile(
                    value: isSelect,
                    onChanged: isBuy
                        ? (value) {
                            if (value != null) {
                              setState(() {
                                isSelect = value;
                              });
                              stateBuy.setFlag(value);
                            }
                          }
                        : null,
                    selected: true,
                    shape: shape,
                    contentPadding: contentPadding,
                    selectedTileColor: customColors?.containerColor,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      isBuy
                          ? 'Подтвердите, что хотите приобрести услугу для текущей группы.'
                          : 'Недостаточно денег на балансе для покупке услуги.',
                      style: TextStyle(
                        color: isBuy
                            ? customColors?.primaryTextColor
                            : customColors?.errorFill,
                      ),
                    ),
                    subtitle: isBuy
                        ? Text('Оплата спишется с вашего баланса.')
                        : null,
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

class BuyServiceProvider extends ChangeNotifier {
  MyGroupsItem? _group;
  bool _flag = false;

  MyGroupsItem? get group => _group;
  bool get flag => _flag;

  void setGroup(MyGroupsItem? group) {
    _group = group;
    notifyListeners();
  }

  void clearGroup() {
    _group = null;
    notifyListeners();
  }

  void setFlag(bool value) {
    _flag = value;
    notifyListeners();
  }

  void toggleFlag() {
    _flag = !_flag;
    notifyListeners();
  }
}
