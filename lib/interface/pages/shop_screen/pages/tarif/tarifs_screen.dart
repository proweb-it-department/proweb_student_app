import 'dart:ui';

import 'dart:math' as math;
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/tarif_for_sale/tarif_for_sale_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/app_bar/go_page.dart';
import 'package:proweb_student_app/interface/components/course_avatar/course_avatar.dart';
import 'package:proweb_student_app/interface/components/gradient_text/gradient_text.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/my_purchases_tarif/my_purchases_tarif.dart';
import 'package:proweb_student_app/models/tarif_model/tarif_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class TarifsScreen extends StatelessWidget {
  final int? tarifId;
  const TarifsScreen({super.key, @pathParam this.tarifId});

  @override
  Widget build(BuildContext context) {
    final int tarifParamId = context.routeData.queryParams.getInt('id', 0);
    int? tarifIdOrNull = tarifParamId == 0 ? tarifId : tarifParamId;
    return BlocProvider(
      create: (context) {
        final bloc = TarifForSaleBloc();
        bloc.add(
          TarifForSaleEvent.started(offset: 0, limit: LimitRequest.tarif),
        );
        return bloc;
      },
      child: TarifBody(tarifId: tarifIdOrNull),
    );
  }
}

class TarifBody extends StatelessWidget {
  final int? tarifId;
  const TarifBody({super.key, this.tarifId});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: MainAppBar(isBorder: false),
        body: TarifList(tarifId: tarifId),
      ),
    );
  }
}

class TarifList extends StatelessWidget {
  final int? tarifId;
  const TarifList({super.key, this.tarifId});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    return BlocBuilder<TarifForSaleBloc, TarifForSaleState>(
      builder: (context, state) {
        return state.when(
          load: () => Center(child: Md3CirculeIndicator()),
          complited: (tarifs, load) {
            return ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
              child: Container(
                decoration: BoxDecoration(color: customColors?.containerColor),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: bottom + 10,
                  ),
                  children: [
                    ...List.generate(tarifs.list.length, (index) {
                      final tarif = tarifs.list.elementAt(index);
                      return TarifItem(tarif: tarif, tarifId: tarifId);
                    }),
                    if (load)
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        alignment: Alignment.center,
                        child: Md3CirculeIndicator(),
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class TarifItem extends StatefulWidget {
  final TarifForSale? tarif;
  final MyPurchasesTarif? purchased;
  final int? tarifId;
  const TarifItem({super.key, this.tarif, this.tarifId, this.purchased});

  @override
  State<TarifItem> createState() => _TarifItemState();
}

class _TarifItemState extends State<TarifItem> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if ((widget.tarifId == null || widget.tarifId != widget.tarif?.id)) {
        return;
      }
      if (!mounted) return;
      if (widget.purchased != null) return;

      _showBottomSheet(context, 0);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final width = MediaQuery.of(context).size.width * .9;
    final products = widget.tarif?.products;
    final productsPurchase = widget.purchased?.products;
    final services = widget.tarif?.services;
    final servicesPurchase = widget.purchased?.services;
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Container(
        width: width,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: customColors?.primaryBg,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: customColors?.borderColors ?? Colors.transparent,
          ),
        ),
        child: Stack(
          children: [
            ?_backgroundTarif(context),
            ?_iconTarif(context),
            ListView(
              children: [
                TarifInfoHeader(
                  tarif: widget.tarif,
                  purchased: widget.purchased,
                  callback: _showBottomSheet,
                ),
                if (widget.tarif?.products != null &&
                    widget.tarif?.products?.isNotEmpty == true)
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 10),
                    child: Divider(),
                  ),
                if (productsPurchase != null &&
                    productsPurchase.isNotEmpty == true)
                  TarifProductList(
                    productsPurchased: productsPurchase,
                    startIndex: 1,
                    callback: _showBottomSheet,
                  ),
                if (products != null && products.isNotEmpty == true)
                  TarifProductList(
                    products: products,
                    startIndex: 1,
                    callback: _showBottomSheet,
                  ),
                if (servicesPurchase != null && servicesPurchase.isNotEmpty)
                  TarifServiceList(
                    servicesPurchase: servicesPurchase,
                    startIndex: (1 + (productsPurchase?.length ?? 0)).toInt(),
                    callback: _showBottomSheet,
                  ),
                if (services != null && services.isNotEmpty)
                  TarifServiceList(
                    services: services,
                    startIndex: (1 + (products?.length ?? 0)).toInt(),
                    callback: _showBottomSheet,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, int index) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: false,
      isDismissible: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,

      builder: (_) {
        return DraggableModalWithAppBar(
          tarif: widget.tarif,
          index: index,
          purchase: widget.purchased,
        );
      },
    );
  }

  Widget? _backgroundTarif(BuildContext context) {
    final courceIcon =
        widget.tarif?.course?.icon ?? widget.purchased?.course?.icon;
    final courceColor =
        widget.tarif?.course?.color ?? widget.purchased?.course?.color;
    if (courceIcon != null && courceColor != null) {
      final customColors = Theme.of(context).extension<CustomColors>();
      final width = MediaQuery.of(context).size.width * .9;
      return Positioned(
        left: -(width * 0.8) / 3,
        top: -(width * 0.8) / 4,
        child: Opacity(
          opacity: .3,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 45,
              sigmaY: 45,
              tileMode: TileMode.clamp,
            ),
            enabled: true,
            child: Container(
              width: width * 0.6,
              height: width * 0.8,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    HexColor(courceColor).withAlpha(150),
                    customColors?.primaryBg ?? Colors.transparent,
                  ],
                  center: Alignment.center,
                  radius: 0.5,
                  stops: [0.3, 0.9],
                ),
              ),
            ),
          ),
        ),
      );
    }
    return null;
  }

  Widget? _iconTarif(BuildContext context) {
    final courceIcon =
        widget.tarif?.course?.icon ?? widget.purchased?.course?.icon;
    final courceColor =
        widget.tarif?.course?.color ?? widget.purchased?.course?.color;
    if (courceIcon != null && courceColor != null) {
      final width = MediaQuery.of(context).size.width * .9;

      return Positioned(
        left: -(width * 0.1),
        top: width * 0.4 / 6,
        child: Opacity(
          opacity: .1,
          child: Container(
            width: width * 0.3,
            height: width * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(courceIcon),
              ),
            ),
          ),
        ),
      );
    }
    return null;
  }
}

class DraggableModalWithAppBar extends StatefulWidget {
  final TarifForSale? tarif;
  final MyPurchasesTarif? purchase;
  final int index;
  const DraggableModalWithAppBar({
    super.key,
    this.tarif,
    required this.index,
    this.purchase,
  });

  @override
  State<DraggableModalWithAppBar> createState() =>
      _DraggableModalWithAppBarState();
}

class _DraggableModalWithAppBarState extends State<DraggableModalWithAppBar> {
  double _extent = 0.6;
  late PageController _pageController;
  late int _currentPage;

  final double minChildSize = 0.6;
  final double closeThreshold = 0.55;

  @override
  void initState() {
    _pageController = PageController(initialPage: widget.index);
    _currentPage = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final products = widget.tarif?.products;
    final productsPurchase = widget.purchase?.products;
    final services = widget.tarif?.products;
    final servicesPurchase = widget.purchase?.services;
    final statusBarHeight = MediaQueryData.fromView(
      View.of(context),
    ).padding.top;
    final navigationBarHeight = MediaQueryData.fromView(
      View.of(context),
    ).padding.bottom;
    final customColors = Theme.of(context).extension<CustomColors>();
    final int countPage =
        1 +
        ((products ?? productsPurchase)?.length ?? 0) +
        ((services ?? servicesPurchase)?.length ?? 0);
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        setState(() => _extent = notification.extent);
        if (notification.extent < closeThreshold) {
          Navigator.of(context).pop();
        }
        return true;
      },
      child: DraggableScrollableSheet(
        expand: false,
        initialChildSize: minChildSize,
        minChildSize: minChildSize,
        maxChildSize: 1.0,
        builder: (context, scrollController) {
          final isFullScreen = _extent >= 0.99;
          final products = widget.tarif?.products;
          final productsPurchase = widget.purchase?.products;
          final services = widget.tarif?.services;
          final servicesPurchase = widget.purchase?.services;
          final paidTarif = double.parse(widget.purchase?.paid ?? '0');
          final priceTarif = double.parse(widget.purchase?.price ?? '0');
          String priceFormater = NumberFormat(
            '#,##0',
            'ru_RU',
          ).format(double.parse(widget.purchase?.price ?? '0'));
          String paidFormater = NumberFormat(
            '#,##0',
            'ru_RU',
          ).format(double.parse(widget.purchase?.paid ?? '0'));
          return ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isFullScreen ? 0 : 22),
              topRight: Radius.circular(isFullScreen ? 0 : 22),
            ),

            child: Material(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isFullScreen ? 0 : 22),
                topRight: Radius.circular(isFullScreen ? 0 : 22),
              ),
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() => _currentPage = index);
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (scrollController.hasClients) {
                          scrollController.jumpTo(0);
                        }
                      });
                    },
                    children: [
                      TarifInforamtion(
                        isFullScreen: isFullScreen,
                        tarif: widget.tarif,
                        purchase: widget.purchase,
                        scrollController: _currentPage == 0
                            ? scrollController
                            : null,
                      ),
                      if (products?.isNotEmpty == true)
                        ...List.generate(products!.length, (index) {
                          final product = products.elementAt(index);
                          return TarifInforamtionProduct(
                            isFullScreen: isFullScreen,
                            scrollController: _currentPage == (index + 1)
                                ? scrollController
                                : null,
                            product: product,
                          );
                        }),
                      if (productsPurchase?.isNotEmpty == true)
                        ...List.generate(productsPurchase!.length, (index) {
                          final product = productsPurchase.elementAt(index);
                          return TarifInforamtionProduct(
                            isFullScreen: isFullScreen,
                            scrollController: _currentPage == (index + 1)
                                ? scrollController
                                : null,
                            productPurchased: product,
                          );
                        }),
                      if (services?.isNotEmpty == true)
                        ...List.generate(services!.length, (index) {
                          final service = services.elementAt(index);
                          return TarifInforamtionService(
                            isFullScreen: isFullScreen,
                            scrollController:
                                _currentPage ==
                                    (index + (products?.length ?? 0) + 1)
                                ? scrollController
                                : null,
                            service: service,
                          );
                        }),
                      if (servicesPurchase?.isNotEmpty == true)
                        ...List.generate(servicesPurchase!.length, (index) {
                          final service = servicesPurchase.elementAt(index);
                          return TarifInforamtionService(
                            isFullScreen: isFullScreen,
                            scrollController:
                                _currentPage ==
                                    (index + (products?.length ?? 0) + 1)
                                ? scrollController
                                : null,
                            servicePurchase: service,
                          );
                        }),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    child: IntrinsicHeight(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15).add(
                          EdgeInsetsGeometry.only(bottom: navigationBarHeight),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          border: Border(
                            top: BorderSide(
                              color:
                                  customColors?.containerColor ??
                                  Colors.transparent,
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 10,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 5,
                              children: List.generate(countPage, (index) {
                                return Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: _currentPage == index
                                        ? customColors?.primaryTextColor
                                              .withAlpha(200)
                                        : customColors?.containerColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                );
                              }),
                            ),
                            if (widget.purchase == null)
                              Text('Для покупки тарифа свяжитесь с менеджером'),
                            if (widget.purchase == null)
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(10),
                                  onTap: () {
                                    sl<LocalData>().openLink(
                                      url: 'tel:+998712036060',
                                    );
                                  },
                                  child: Ink(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-0.766, -1.0),
                                        end: Alignment(1.0, 0.5),
                                        colors: [
                                          Color(0xFF5296FD),
                                          Color(0xFFBF57FF),
                                        ],
                                        stops: [0.28, 1.0],
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Связаться',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (widget.purchase != null && priceTarif > 0)
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                spacing: 5,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'global_data.sum'.tr(
                                          namedArgs: {'money': paidFormater},
                                        ),
                                      ),
                                      Text(
                                        'global_data.sum'.tr(
                                          namedArgs: {'money': priceFormater},
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (priceTarif > 0)
                                    LinearProgressIndicator(
                                      backgroundColor:
                                          customColors?.containerColor,
                                      color: Color(0xFF5296FD),
                                      stopIndicatorColor: Color(0xFF5296FD),
                                      minHeight: 10,
                                      value: paidTarif == 0
                                          ? 0
                                          : paidTarif / priceTarif,
                                      year2023: false,
                                    ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  /// Кастомный AppBar
                  AnimatedSlide(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    offset: isFullScreen ? Offset.zero : const Offset(0, -0.5),

                    child: AnimatedOpacity(
                      opacity: isFullScreen ? 1 : 0,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInOut,
                      child: Container(
                        height: statusBarHeight + kToolbarHeight,
                        padding: EdgeInsets.only(top: statusBarHeight),
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(
                                (255 * 0.2).toInt(),
                              ),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 4),
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () => Navigator.of(
                                context,
                                rootNavigator: true,
                              ).pop(),
                            ),
                            const SizedBox(width: 12),
                            const Expanded(
                              child: Text(
                                "О тарифе",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class BaseHeaderTarifDitail extends StatefulWidget {
  final Widget child;
  final bool isFullScreen;
  const BaseHeaderTarifDitail({
    super.key,
    required this.child,
    required this.isFullScreen,
  });

  @override
  State<BaseHeaderTarifDitail> createState() => _BaseHeaderTarifDitailState();
}

class _BaseHeaderTarifDitailState extends State<BaseHeaderTarifDitail>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [Color(0xFF5296FD), Color(0xFFBF57FF)],
                transform: GradientRotation(_controller.value * 2 * math.pi),
              ),
            ),
            child: Stack(
              children: [
                ?child,
                if (!widget.isFullScreen)
                  Positioned(
                    top: 5,
                    left: 5,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close, color: Colors.white),
                      iconSize: 18,
                      constraints: BoxConstraints(
                        maxHeight: 28,
                        maxWidth: 28,
                        minHeight: 28,
                        minWidth: 28,
                      ),
                      padding: EdgeInsets.zero,
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white.withAlpha(50),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
        child: widget.child,
      ),
    );
  }
}

class TarifInforamtion extends StatelessWidget {
  final TarifForSale? tarif;
  final MyPurchasesTarif? purchase;
  final bool isFullScreen;
  final ScrollController? scrollController;
  const TarifInforamtion({
    super.key,
    this.tarif,
    required this.isFullScreen,
    this.scrollController,
    this.purchase,
  });

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQueryData.fromView(
      View.of(context),
    ).padding.top;
    String priceFormater = NumberFormat(
      '#,##0',
      'ru_RU',
    ).format(double.parse(tarif?.price ?? purchase?.price ?? '0'));
    final customColors = Theme.of(context).extension<CustomColors>();
    final services = tarif?.services;
    final servicesPurchase = purchase?.services;
    final products = tarif?.products;
    final productsPurchase = purchase?.products;
    return ListView(
      padding: EdgeInsets.only(bottom: 150),
      controller: scrollController,
      physics: const ClampingScrollPhysics(),
      primary: false,
      children: [
        AnimatedContainer(
          height: isFullScreen ? statusBarHeight + kToolbarHeight : 0,
          duration: Duration(milliseconds: 150),
        ),
        BaseHeaderTarifDitail(
          isFullScreen: isFullScreen,
          child: Center(
            child: Padding(
              padding: EdgeInsetsGeometry.only(bottom: 10),
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: LottieBuilder.asset(
                        'assets/lottie/TarifView.json',
                        width: 80,
                        repeat: true,
                      ),
                    ),
                  ),
                  Text(
                    tarif?.name ?? purchase?.name ?? '',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  if (purchase == null)
                    Text(
                      'global_data.sum'.tr(namedArgs: {'money': priceFormater}),
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Text(
            'Вы можете приобрести этот тариф, обучаясь на курсе',
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListTileBuilder(
            isStart: true,
            isEnd: true,
            builder: (shape, contentPadding, isThreeLine) {
              String? icon = tarif?.course?.icon ?? purchase?.course?.icon;
              String? color = tarif?.course?.color ?? purchase?.course?.color;
              return ListTile(
                shape: shape,
                contentPadding: contentPadding,
                tileColor: customColors?.containerColor,
                leading: icon != null && color != null
                    ? CourseAvatar(icon: icon, color: HexColor(color))
                    : Icon(Icons.play_lesson),
                title: Text(
                  tarif?.course?.name ?? purchase?.course?.name ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  tarif?.course?.language == 'ru' ? 'Русский' : 'O`zbek',
                ),
              );
            },
          ),
        ),
        if ((services ?? servicesPurchase)?.isNotEmpty == true ||
            (productsPurchase ?? products)?.isNotEmpty == true)
          Divider(height: 30),
        if ((services ?? servicesPurchase)?.isNotEmpty == true ||
            (productsPurchase ?? products)?.isNotEmpty == true)
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: Text(
              'Тариф содержит',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        if ((services ?? servicesPurchase)?.isNotEmpty == true ||
            (productsPurchase ?? products)?.isNotEmpty == true)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ).add(EdgeInsetsGeometry.only(top: 10)),
            child: Column(
              children: [
                if ((productsPurchase ?? products)?.isNotEmpty == true)
                  Padding(
                    padding: EdgeInsetsGeometry.only(bottom: 2),
                    child: ListTileBuilder(
                      isStart: true,
                      isEnd:
                          (services ?? servicesPurchase)?.isNotEmpty == false,
                      builder: (shape, contentPadding, isThreeLine) {
                        return ListTile(
                          shape: shape,
                          contentPadding: contentPadding,
                          tileColor: customColors?.containerColor,
                          leading: Icon(Icons.play_lesson),
                          title: Text(
                            'Эксклюзивных продуктов',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Text(
                            '${(productsPurchase ?? products)?.length ?? 0}',
                          ),
                        );
                      },
                    ),
                  ),
                if ((services ?? servicesPurchase)?.isNotEmpty == true)
                  ListTileBuilder(
                    isStart:
                        (productsPurchase ?? products)?.isNotEmpty == false,
                    isEnd: true,
                    builder: (shape, contentPadding, isThreeLine) {
                      return ListTile(
                        shape: shape,
                        contentPadding: contentPadding,
                        tileColor: customColors?.containerColor,
                        leading: Icon(Icons.work),
                        title: Text(
                          'Уникальных услуг',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Text(
                          '${(services ?? servicesPurchase)?.length ?? 0}',
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
        if (purchase == null) Divider(height: 30),
        if (purchase == null)
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: Text(
              'Доступные способы оплаты',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        if (purchase == null)
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTileBuilder(
              isStart: true,
              isEnd: true,
              builder: (shape, contentPadding, isThreeLine) {
                return ListTile(
                  shape: shape,
                  contentPadding: contentPadding,
                  tileColor: customColors?.containerColor,
                  leading: Icon(Icons.info),
                  isThreeLine: true,
                  title: Text(
                    'Рассрочка',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    'Оплата тарифа обучения предоставляется в рассрочку без процентов. Списание средств производится после каждого урока. Сумма списания зависит от номера урока, на котором был активирован тариф.',
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}

class TarifInforamtionProduct extends StatelessWidget {
  final ProductsinTarif? product;
  final ProductsTarif? productPurchased;
  final bool isFullScreen;
  final ScrollController? scrollController;
  const TarifInforamtionProduct({
    super.key,
    this.product,
    required this.isFullScreen,
    this.scrollController,
    this.productPurchased,
  });
  String secondToTime(double seconds) {
    final nulNumber = sl<LocalData>().nulNumber;
    if (seconds < 60) {
      return 'shop_app.ClockDurationSec'.tr(
        namedArgs: {'sec': seconds.toInt().toString()},
      );
    }

    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds.round() % 60;

    if (minutes < 60) {
      return remainingSeconds > 0
          ? 'shop_app.ClockDurationMinSec'.tr(
              namedArgs: {
                'sec': nulNumber(remainingSeconds.toDouble()),
                'min': minutes.toInt().toString(),
              },
            )
          : 'shop_app.ClockDurationMin'.tr(
              namedArgs: {'min': minutes.toInt().toString()},
            );
    }

    int hours = minutes ~/ 60;
    minutes %= 60;

    return (minutes > 0 || remainingSeconds > 0)
        ? 'shop_app.ClockDurationMinHour'.tr(
            namedArgs: {
              'hour': hours.toInt().toString(),
              'min': nulNumber(minutes.toDouble()),
            },
          )
        : 'shop_app.ClockDurationHour'.tr(
            namedArgs: {'hour': hours.toInt().toString()},
          );
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQueryData.fromView(
      View.of(context),
    ).padding.top;

    final customColors = Theme.of(context).extension<CustomColors>();
    return ListView(
      padding: EdgeInsets.only(bottom: 150),
      controller: scrollController,
      physics: const ClampingScrollPhysics(),
      primary: false,
      children: [
        AnimatedContainer(
          height: isFullScreen ? statusBarHeight + kToolbarHeight : 0,
          duration: Duration(milliseconds: 150),
        ),
        BaseHeaderTarifDitail(
          isFullScreen: isFullScreen,
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.78,
              child: Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        'Эксклюзивный\nпродукт',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        spacing: 5,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: 5,
                            children: [
                              Icon(Icons.school),
                              Text(
                                sl<LocalData>().plural(
                                  'shop_app.countModule'.tr(
                                    namedArgs: {
                                      'count':
                                          (product?.product?.moduleCount ??
                                                  productPurchased
                                                      ?.product
                                                      ?.moduleCount ??
                                                  0)
                                              .toString(),
                                    },
                                  ),
                                  product?.product?.moduleCount ??
                                      productPurchased?.product?.moduleCount ??
                                      0,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            spacing: 5,
                            children: [
                              Icon(Icons.access_time),
                              Text(
                                secondToTime(
                                  (product?.product?.totalCountTime ??
                                          productPurchased
                                              ?.product
                                              ?.totalCountTime ??
                                          0)
                                      .toDouble(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: AspectRatio(
                      aspectRatio: 3 / 4,
                      child: Container(
                        decoration: BoxDecoration(
                          color: customColors?.primaryBg,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                              product?.product?.cover ??
                                  productPurchased?.product?.cover ??
                                  '',
                            ),
                          ),
                          border: Border(
                            top: BorderSide(color: Colors.white, width: 2),
                            left: BorderSide(color: Colors.white, width: 2),
                            right: BorderSide(color: Colors.white, width: 2),
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                product?.product?.name ?? productPurchased?.product?.name ?? '',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                product?.product?.description ??
                    productPurchased?.product?.description ??
                    '',
                style: TextStyle(
                  color: customColors?.primaryTextColor.withAlpha(
                    (255 * 0.7).toInt(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TarifInforamtionService extends StatelessWidget {
  final Services? service;
  final ServicesTarif? servicePurchase;
  final bool isFullScreen;
  final ScrollController? scrollController;
  const TarifInforamtionService({
    super.key,
    this.service,
    required this.isFullScreen,
    this.scrollController,
    this.servicePurchase,
  });

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQueryData.fromView(
      View.of(context),
    ).padding.top;

    final customColors = Theme.of(context).extension<CustomColors>();
    return ListView(
      padding: EdgeInsets.only(bottom: 150),
      controller: scrollController,
      physics: const ClampingScrollPhysics(),
      primary: false,
      children: [
        AnimatedContainer(
          height: isFullScreen ? statusBarHeight + kToolbarHeight : 0,
          duration: Duration(milliseconds: 150),
        ),
        BaseHeaderTarifDitail(
          isFullScreen: isFullScreen,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  service?.service?.cover ??
                      servicePurchase?.service?.cover ??
                      '',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                service?.service?.name ?? servicePurchase?.service?.name ?? '',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                service?.service?.description ??
                    servicePurchase?.service?.description ??
                    '',
                style: TextStyle(
                  color: customColors?.primaryTextColor.withAlpha(
                    (255 * 0.7).toInt(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TarifInfoHeader extends StatelessWidget {
  final TarifForSale? tarif;
  final MyPurchasesTarif? purchased;
  final Function(BuildContext context, int index) callback;
  const TarifInfoHeader({
    super.key,
    this.tarif,
    required this.callback,
    this.purchased,
  });

  @override
  Widget build(BuildContext context) {
    final tarifPrice = tarif?.price;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsetsGeometry.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: 5,
          ),
          child: AutoSizeText(
            tarif?.name ?? purchased?.name ?? '',
            maxLines: 2,
            minFontSize: 30,
            maxFontSize: 30,
            style: GoogleFonts.roboto().copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 10,
          ).add(EdgeInsetsGeometry.only(bottom: 20)),
          child: AutoSizeText(
            tarif?.course?.name ?? purchased?.course?.name ?? '',
            maxLines: 2,
            minFontSize: 20,
            maxFontSize: 30,
            style: GoogleFonts.roboto(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: [
            GradientTextPaint(
              fitToContainer: true,
              text: NumberFormat(
                '#,##0',
                'ru_RU',
              ).format(double.parse(tarifPrice ?? '0')),
              gradient: LinearGradient(
                begin: Alignment(-0.766, -1.0),
                end: Alignment(1.0, 0.5),
                colors: [Color(0xFF5296FD), Color(0xFFBF57FF)],
              ),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'global_data.sum'.tr(namedArgs: {'money': ''}),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          'Общая стоимость продукта',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 10,
          ).add(EdgeInsetsGeometry.only(top: 25)),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                callback(context, 0);
              },
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.766, -1.0),
                    end: Alignment(1.0, 0.5),
                    colors: [Color(0xFF5296FD), Color(0xFFBF57FF)],
                    stops: [0.28, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'О тарифе',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TarifProductList extends StatelessWidget {
  final List<ProductsinTarif>? products;
  final List<ProductsTarif>? productsPurchased;

  final int startIndex;
  final Function(BuildContext context, int index) callback;
  const TarifProductList({
    super.key,
    this.products,
    required this.callback,
    required this.startIndex,
    this.productsPurchased,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Padding(
      padding: EdgeInsets.all(10).add(EdgeInsetsGeometry.only(top: 0)),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.766, -1.0),
              end: Alignment(1.0, 0.5),
              colors: [Color(0xFF5296FD), Color(0xFFBF57FF)],
              stops: [0.28, 1.0],
            ),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(
                  10,
                ).add(EdgeInsetsGeometry.only(bottom: 2)),
                child: Text(
                  'Эксклюзивные продукты',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...List.generate((products ?? productsPurchased ?? []).length, (
                index,
              ) {
                final item = products?.elementAtOrNull(index);
                final itemPurchase = productsPurchased?.elementAtOrNull(index);
                return Padding(
                  padding: EdgeInsetsGeometry.only(
                    bottom:
                        ((products ?? productsPurchased ?? []).length - 1) ==
                            index
                        ? 0
                        : 2,
                  ),
                  child: ListTileBuilder(
                    isStart: index == 0,
                    isEnd:
                        ((products ?? productsPurchased ?? []).length - 1) ==
                        index,
                    builder: (shape, contentPadding, isThreeLine) {
                      return ListTile(
                        shape: shape,
                        contentPadding: contentPadding,
                        tileColor: customColors?.primaryBg,
                        onTap: () {
                          callback(context, index + startIndex);
                        },
                        leading: Icon(Icons.school_outlined),
                        title: Text(
                          item?.product?.name ??
                              itemPurchase?.product?.name ??
                              '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: GoPage(
                          decoration: BoxDecoration(
                            color: customColors?.containerColor,
                          ),
                          child: Icon(Icons.chevron_right_rounded),
                        ),
                        subtitle: Text(
                          sl<LocalData>().plural(
                            'shop_app.countModule'.tr(
                              namedArgs: {
                                'count':
                                    (item?.product?.moduleCount ??
                                            itemPurchase
                                                ?.product
                                                ?.moduleCount ??
                                            0)
                                        .toString(),
                              },
                            ),
                            item?.product?.moduleCount ??
                                itemPurchase?.product?.moduleCount ??
                                0,
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class TarifServiceList extends StatelessWidget {
  final List<Services>? services;
  final List<ServicesTarif>? servicesPurchase;
  final int startIndex;
  final Function(BuildContext context, int index) callback;
  const TarifServiceList({
    super.key,
    this.services,
    required this.startIndex,
    required this.callback,
    this.servicesPurchase,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Padding(
      padding: EdgeInsets.all(10).add(EdgeInsetsGeometry.only(bottom: 0)),
      child: Material(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate((services ?? servicesPurchase ?? []).length, (
            index,
          ) {
            final item = services?.elementAtOrNull(index);
            final itemPurchase = servicesPurchase?.elementAtOrNull(index);
            return Padding(
              padding: EdgeInsetsGeometry.only(
                bottom:
                    ((services ?? servicesPurchase ?? []).length - 1) == index
                    ? 0
                    : 2,
              ),
              child: ListTileBuilder(
                isStart: index == 0,
                isEnd:
                    ((services ?? servicesPurchase ?? []).length - 1) == index,
                builder: (shape, contentPadding, isThreeLine) {
                  final type =
                      item?.service?.type ?? itemPurchase?.service?.type;
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    tileColor: customColors?.containerColor,
                    onTap: () {
                      callback(context, index + startIndex);
                    },
                    title: Text(
                      item?.service?.name ?? itemPurchase?.service?.name ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    leading: type != null
                        ? IconAvatar(
                            gradient: LinearGradient(
                              begin: Alignment(-0.766, -1.0),
                              end: Alignment(1.0, 0.5),
                              colors: [Color(0xFF5296FD), Color(0xFFBF57FF)],
                              stops: [0.28, 1.0],
                            ),
                            clipPath: PathSvgShape.pentagon,
                            icon: type == ServiceType.video
                                ? Icons.play_circle
                                : type == ServiceType.coworking
                                ? Icons.desktop_windows
                                : type == ServiceType.text
                                ? Icons.work
                                : Icons.work,
                          )
                        : null,
                    trailing: GoPage(
                      decoration: BoxDecoration(color: customColors?.primaryBg),
                      child: Icon(Icons.chevron_right_rounded),
                    ),
                    subtitle: Text(
                      item?.service?.description ??
                          itemPurchase?.service?.description ??
                          '- - -',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}

class SnappingScrollPhysics extends ScrollPhysics {
  final double itemExtent;

  const SnappingScrollPhysics({required this.itemExtent, super.parent});

  @override
  SnappingScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return SnappingScrollPhysics(
      itemExtent: itemExtent,
      parent: buildParent(ancestor),
    );
  }

  double _getTargetPixels(
    ScrollMetrics position,
    Tolerance tolerance,
    double velocity,
  ) {
    double page = position.pixels / itemExtent;

    if (velocity < -tolerance.velocity) {
      page -= 0.5;
    } else if (velocity > tolerance.velocity) {
      page += 0.5;
    }

    return (page.roundToDouble() * itemExtent).clamp(
      position.minScrollExtent,
      position.maxScrollExtent,
    );
  }

  @override
  Simulation? createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    final Tolerance tol = toleranceFor(position);
    final double target = _getTargetPixels(position, tol, velocity);

    if (target != position.pixels) {
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tol,
      );
    }
    return null;
  }
}
