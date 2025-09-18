import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/bloc/product_ditail/product_ditail_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/products/category_product_view.dart';
import 'package:proweb_student_app/interface/components/products/price_product.dart';
import 'package:proweb_student_app/models/products/products.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class ProductScreen extends StatefulWidget {
  final int id;
  const ProductScreen({super.key, @PathParam.inherit('id') required this.id});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Color? color;

  void changeColor(Color? newColor) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          color = newColor;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        backgroundColor: color,
        body: BlocBuilder<ProductDitailBloc, ProductDitailState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return Center(child: CircularProgressIndicator());
              },
              load: () {
                return Center(child: CircularProgressIndicator());
              },
              error: () {
                return Center(child: ErrorLoad());
              },
              complited: (product, productModules) {
                return ProductBody(product: product, callback: changeColor);
              },
            );
          },
        ),
      ),
    );
  }
}

class ProductBody extends StatefulWidget {
  final Products product;
  final Function(Color? newColor) callback;
  const ProductBody({super.key, required this.product, required this.callback});

  @override
  State<ProductBody> createState() => ProductBodyState();
}

class ProductBodyState extends State<ProductBody> {
  ColorScheme? _scheme;
  int _currentRequest = 0;
  Brightness? _lastBrightness;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final customColors = Theme.of(context).extension<CustomColors>();
    // Если тема изменилась или схема ещё не загружена — перезапускаем
    if ((_lastBrightness != customColors?.brightness || _scheme == null) &&
        customColors?.brightness != null) {
      _lastBrightness = customColors!.brightness;
      _loadScheme(_lastBrightness!);
    }
  }

  @override
  void didUpdateWidget(covariant ProductBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.product.cover != oldWidget.product.cover) {
      final customColors = Theme.of(context).extension<CustomColors>();
      if (customColors?.brightness != null) {
        _loadScheme(customColors!.brightness);
      }
    }
  }

  Future<void> _loadScheme(Brightness brightness) async {
    final int requestId = ++_currentRequest;

    try {
      final ImageProvider provider = ResizeImage(
        CachedNetworkImageProvider(widget.product.cover!),
        width: 250,
        height: 250,
      );

      final ColorScheme cs = await ColorScheme.fromImageProvider(
        provider: provider,
        brightness: brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark,
      );

      if (!mounted || requestId != _currentRequest) return;

      setState(() {
        _scheme = cs;
      });
    } catch (e, _) {
      if (!mounted || requestId != _currentRequest) return;

      final seed = Theme.of(context).colorScheme.primary;
      final fallback = ColorScheme.fromSeed(
        seedColor: seed,
        brightness: brightness,
      );

      setState(() {
        _scheme = fallback;
      });
    } finally {
      if (mounted && requestId == _currentRequest) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final ColorScheme? effectiveScheme = _scheme;
    if (effectiveScheme != null) {
      widget.callback(effectiveScheme.primary);
    } else {
      widget.callback(customColors?.primaryBg);
    }
    return CustomScrollView(
      slivers: [
        ProductAppBar(product: widget.product, scheme: effectiveScheme),
        SliverToBoxAdapter(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 7,
            children: [
              if ((widget.product.updatedAt ?? widget.product.createdAt) !=
                  null)
                Text(
                  '${DateTime.parse(widget.product.updatedAt ?? widget.product.createdAt ?? '').year},',
                  style: TextStyle(color: customColors?.primaryTextColor),
                  textAlign: TextAlign.center,
                ),
              Text(
                secondToTime((widget.product.totalCountTime ?? 0).toDouble()),
                style: TextStyle(color: customColors?.primaryTextColor),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        SliverToBoxAdapter(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              Icon(Icons.translate),
              Text(widget.product.language == 'ru' ? 'Русский,' : 'O`zbek,'),
              if (widget.product.moduleCount != null) Icon(Icons.school),
              if (widget.product.moduleCount != null)
                Text(
                  sl<LocalData>().plural(
                    'shop_app.countModule'.tr(
                      namedArgs: {
                        'count': (widget.product.moduleCount ?? 0).toString(),
                      },
                    ),
                    widget.product.moduleCount ?? 0,
                  ),
                ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsGeometry.only(bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                Icon(
                  widget.product.isPractical == true
                      ? Icons.work
                      : Icons.play_circle_outline_outlined,
                ),
                Text(
                  (widget.product.isPractical == true
                          ? 'shop_app.Additional_practice'
                          : 'shop_app.Video_course')
                      .tr(),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              if (widget.product.purchased == true)
                FilledButton.icon(
                  onPressed: () {
                    final tabRouter = AutoTabsRouter.of(context);
                    tabRouter.setActiveIndex(1);
                  },
                  icon: Icon(Icons.play_arrow_rounded),
                  label: Text('shop_app.Look'.tr()),
                )
              else if (widget.product.saleType != ProductSaleType.package)
                FilledButton.icon(
                  onPressed: () async {
                    final data = await showGeneralDialog(
                      context: context,
                      pageBuilder: (_, animation, secondaryAnimation) {
                        return MultiBlocProvider(
                          providers: [
                            BlocProvider.value(
                              value: context.read<BalanceBloc>(),
                            ),
                            BlocProvider.value(
                              value: context.read<ProductDitailBloc>(),
                            ),
                          ],
                          child: BuyProductDialog(),
                        );
                      },
                    );
                    final idProduct = widget.product.id;
                    if (data == 'buy' && context.mounted && idProduct != null) {
                      final bloc = context.read<ProductDitailBloc>();
                      bloc.add(ProductDitailEvent.buy(id: idProduct));
                    }
                  },
                  icon: Icon(Icons.payments),
                  label: Text('shop_app.Buy'.tr()),
                ),
              if (widget.product.purchased != true)
                FilledButton.icon(
                  onPressed: () {
                    final tabRouter = AutoTabsRouter.of(context);
                    tabRouter.setActiveIndex(1);
                  },
                  icon: Icon(Icons.view_agenda_rounded),
                  label: Text(
                    (widget.product.isPractical == true
                            ? 'shop_app.Practice_modules'
                            : 'shop_app.Course_modules')
                        .tr(),
                  ),
                ),
              PriceProduct(product: widget.product),
            ],
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 40, horizontal: 16),
            child: Text(
              widget.product.description ?? '- - -',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }

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
}

class ProductAppBar extends StatelessWidget {
  final Products product;
  final ColorScheme? scheme;
  const ProductAppBar({super.key, required this.product, this.scheme});

  @override
  Widget build(BuildContext context) {
    final expandedHeight = MediaQuery.of(context).size.height * 0.65;
    final customColors = Theme.of(context).extension<CustomColors>();
    final paddingTop = MediaQuery.of(context).viewPadding.top;
    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      shadowColor: customColors?.containerColor,
      expandedHeight: expandedHeight,
      backgroundColor: scheme?.primary ?? customColors?.primaryBg,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final percent =
              (constraints.maxHeight - kToolbarHeight) /
              (expandedHeight - kToolbarHeight);
          final fade = 0.1;
          final bgColor = Color.lerp(
            scheme?.primary ?? customColors?.primaryBg ?? Colors.black,
            Colors.transparent,
            0,
          );
          double opacity = percent > 1 ? 1 : percent;
          if (opacity < 0) {
            opacity = 0;
          }
          return Container(
            color: bgColor,
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (product.hoverCover != null && product.cover != null)
                  Opacity(
                    opacity: (percent - fade) < 0
                        ? 0
                        : (percent - fade) > 1
                        ? 1
                        : (percent - fade),
                    child: FadeImageSwitcher(
                      cover: product.cover!,
                      hoverCover: product.hoverCover!,
                      id: product.id!,
                    ),
                  )
                else
                  SizedBox(),
                if (percent >= fade)
                  Container(
                    padding: EdgeInsets.only(top: paddingTop),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.center,
                        colors: [
                          scheme?.primary ??
                              customColors?.primaryBg ??
                              Colors.black,
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
                    child: Container(
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
                            scheme?.primary ??
                                customColors?.primaryBg ??
                                Colors.black,
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 10,
                        children: [
                          CategoryProductView(
                            color: product.category?.color,
                            name: product.category?.name,
                          ),
                          Padding(
                            padding: EdgeInsetsGeometry.only(bottom: 20),
                            child: Text(
                              product.name ?? '- - -',
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
                      product.name ?? '- - -',
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

class FadeImageSwitcher extends StatefulWidget {
  final String cover;
  final String hoverCover;
  final int id;

  const FadeImageSwitcher({
    required this.cover,
    required this.hoverCover,
    super.key,
    required this.id,
  });

  @override
  State<FadeImageSwitcher> createState() => _FadeImageSwitcherState();
}

class _FadeImageSwitcherState extends State<FadeImageSwitcher> {
  bool _showHover = false;
  bool _hoverLoaded = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      if (_hoverLoaded) {
        setState(() => _showHover = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CachedNetworkImage(
          imageUrl: widget.cover,
          fit: BoxFit.cover,
          memCacheWidth: 800,
          fadeInDuration: Duration.zero,
        ),
        AnimatedOpacity(
          opacity: _showHover ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          child: CachedNetworkImage(
            imageUrl: widget.hoverCover,
            memCacheWidth: 800,
            fit: BoxFit.cover,
            fadeInDuration: Duration.zero,
            imageBuilder: (context, imageProvider) {
              Future.delayed(const Duration(seconds: 1), () {
                if (mounted) {
                  setState(() {
                    _hoverLoaded = true;
                    _showHover = true;
                  });
                }
              });
              return Image(image: imageProvider, fit: BoxFit.cover);
            },
          ),
        ),
      ],
    );
  }
}

class BuyProductDialog extends StatefulWidget {
  const BuyProductDialog({super.key});

  @override
  State<BuyProductDialog> createState() => _BuyProductDialogState();
}

class _BuyProductDialogState extends State<BuyProductDialog> {
  final PageController controller = PageController();
  int activePage = 0;
  bool isBuy = false;
  void back() {
    controller.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() {
      isBuy = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final product = context.read<ProductDitailBloc>().state;
    final balance = context.read<BalanceBloc>().state;
    final productType = product.whenOrNull(
      complited: (product, productModules) {
        return product.saleType;
      },
    );
    final mainBalance = balance.whenOrNull(
      balance: (balance) {
        return balance.mainBalance;
      },
    );
    final procoinBalance = balance.whenOrNull(
      balance: (balance) {
        return balance.procoin;
      },
    );
    bool type =
        productType == ProductSaleType.money ||
        productType == ProductSaleType.packageMoney ||
        productType == ProductSaleType.coin;
    bool isBalance = false;
    if (productType == ProductSaleType.money ||
        productType == ProductSaleType.packageMoney) {
      if (mainBalance != null) {
        isBalance = true;
      }
    } else if (productType == ProductSaleType.coin) {
      if (procoinBalance != null) {
        isBalance = true;
      }
    }
    bool isViewBtnBuy = type && isBalance;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(null);
          },
          icon: Icon(Icons.close),
        ),
        title: Text('shop_app.Buy_product_title'.tr()),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.only(bottom: 10),
        child: IntrinsicHeight(
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: customColors?.borderColor ?? Colors.white,
                  width: 1,
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
                            backgroundColor: customColors?.additionalThree,
                            textStyle: TextStyle(
                              color: customColors?.primaryTextColor,
                            ),
                            iconColor: customColors?.primaryTextColor,
                            disabledBackgroundColor:
                                customColors?.additionalTwo,
                            disabledIconColor: customColors?.additionalThree,
                          ),
                          iconAlignment: IconAlignment.end,
                          icon: Icon(Icons.keyboard_arrow_right),
                          label: Text(
                            'global_data.next_text'.tr(),
                            style: TextStyle(
                              color: customColors?.primaryTextColor,
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
                          onPressed: back,
                          style: FilledButton.styleFrom(
                            backgroundColor: customColors?.additionalThree,
                            textStyle: TextStyle(
                              color: customColors?.primaryTextColor,
                            ),
                            iconColor: customColors?.primaryTextColor,
                          ),
                          icon: Icon(Icons.keyboard_arrow_left),
                          label: Text(
                            'global_data.back_text'.tr(),
                            style: TextStyle(
                              color: customColors?.primaryTextColor,
                            ),
                          ),
                        ),
                        if (isViewBtnBuy)
                          FilledButton.icon(
                            onPressed: isBuy
                                ? () {
                                    Navigator.of(context).pop('buy');
                                  }
                                : null,
                            style: FilledButton.styleFrom(
                              disabledBackgroundColor:
                                  customColors?.additionalTwo,
                              disabledIconColor: customColors?.additionalThree,
                            ),
                            label: Text(
                              'shop_app.Buy_product'.tr(),
                              style: TextStyle(
                                color: customColors?.primaryTextColor,
                              ),
                            ),
                          )
                        else
                          SizedBox(),
                      ],
                    ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: customColors?.containerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
        ),
        child: PageView(
          controller: controller,
          onPageChanged: (value) {
            setState(() {
              activePage = value;
            });
          },
          physics: NeverScrollableScrollPhysics(),
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.all(10),
              child: BuyProductInformation(),
            ),
            BuyProductPrice(
              check: isBuy,
              onBack: back,
              onCheck: (check) {
                setState(() {
                  isBuy = check;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BuyProductInformation extends StatelessWidget {
  const BuyProductInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final String information = 'shop_app.infobuyproduct'.tr();
    final infoList = information.split('___');
    final double fontSize = 16;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            'shop_app.Product_usage_rules'.tr(),
            style: TextStyle(fontSize: 18),
          ),
        ),
        ...List.generate(infoList.length, (index) {
          final item = infoList.elementAt(index);

          return ListTileBuilder(
            isStart: index == 0,
            isEnd: index == (infoList.length - 1),
            builder: (shape, contentPadding, isThreeLine) {
              return Material(
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsetsGeometry.only(bottom: 4),
                  child: ListTile(
                    isThreeLine: isThreeLine,
                    shape: shape,
                    contentPadding: contentPadding,
                    textColor: customColors?.primaryTextColor,
                    tileColor: customColors?.primaryBg,
                    leading: IconAvatar(icon: Icons.info_rounded),
                    title: Text(
                      'shop_app.rule_number'.tr(
                        namedArgs: {'count': (index + 1).toString()},
                      ),
                    ),
                    subtitle: Text(
                      item.trim(),
                      style: TextStyle(
                        fontSize: fontSize,
                        color: customColors?.primaryTextColor.withAlpha(150),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ],
    );
  }
}

class BuyProductPrice extends StatelessWidget {
  final Function(bool check) onCheck;
  final Function() onBack;
  final bool check;
  const BuyProductPrice({
    super.key,
    required this.onCheck,
    required this.check,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final blocBalance = context.read<BalanceBloc>().state;
    final blocProduct = context.read<ProductDitailBloc>().state;
    final mainBalance = blocBalance.whenOrNull(
      balance: (balance) {
        return balance.mainBalance;
      },
    );
    final procoinBalance = blocBalance.whenOrNull(
      balance: (balance) {
        return balance.procoin;
      },
    );
    final productType = blocProduct.whenOrNull(
      complited: (product, productModules) {
        return product;
      },
    );
    double balance = 0;
    double price = 0;
    final isMain =
        productType?.saleType == ProductSaleType.money ||
        productType?.saleType == ProductSaleType.packageMoney;
    final isProcoin = productType?.saleType == ProductSaleType.coin;
    if (isMain) {
      balance = double.parse(mainBalance ?? '0');
      price = double.parse(productType?.price ?? '0');
    } else if (isProcoin) {
      balance = double.parse(procoinBalance ?? '0');
      price = double.parse('${productType?.priceCoin ?? 0}');
    }

    String balanceFormater = NumberFormat('#,##0', 'ru_RU').format(balance);
    String priceFormater = NumberFormat('#,##0', 'ru_RU').format(price);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          children: [
            Column(
              spacing: 2,
              children: [
                ListTileBuilder(
                  isStart: true,
                  isEnd: false,
                  builder: (shape, contentPadding, isThreeLine) {
                    return Material(
                      color: Colors.transparent,
                      child: ListTile(
                        minTileHeight: 30,
                        shape: shape,
                        contentPadding: contentPadding,
                        selected: true,
                        selectedTileColor: customColors?.primaryBg,
                        selectedColor: customColors?.primaryTextColor,
                        leading: isMain
                            ? Icon(
                                Icons.attach_money_rounded,
                                color: customColors?.primaryTextColor,
                              )
                            : SvgPicture.asset(
                                'assets/images/procoin.svg',
                                width: 25,
                              ),
                        title: Text('shop_app.Product_cost'.tr()),
                        subtitle: Text(
                          isMain
                              ? 'global_data.sum'.tr(
                                  namedArgs: {'money': priceFormater},
                                )
                              : priceFormater,
                          style: TextStyle(
                            color: customColors?.primaryTextColor,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                ListTileBuilder(
                  isStart: false,
                  isEnd: false,
                  builder: (shape, contentPadding, isThreeLine) {
                    return Material(
                      color: Colors.transparent,
                      child: ListTile(
                        minTileHeight: 30,
                        shape: shape,
                        contentPadding: contentPadding,
                        selected: true,
                        selectedTileColor: customColors?.primaryBg,
                        selectedColor: customColors?.primaryTextColor,
                        leading: isMain
                            ? Icon(
                                Icons.wallet,
                                color: customColors?.primaryTextColor,
                              )
                            : SvgPicture.asset(
                                'assets/images/procoin.svg',
                                width: 25,
                              ),
                        title: Text(
                          (isMain
                                  ? 'shop_app.Your_main_balance'
                                  : 'shop_app.Your_PROCOIN_balance')
                              .tr(),
                        ),
                        subtitle: Text(
                          isMain
                              ? 'global_data.sum'.tr(
                                  namedArgs: {'money': balanceFormater},
                                )
                              : balanceFormater,
                          style: TextStyle(
                            color: balance < price
                                ? customColors?.errorFill
                                : customColors?.primaryTextColor,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                ListTileBuilder(
                  isEnd: true,
                  isStart: false,
                  builder: (shape, contentPadding, isThreeLine) {
                    return Material(
                      color: Colors.transparent,
                      child: CheckboxListTile(
                        value: check,
                        onChanged: balance >= price
                            ? (value) {
                                if (value.runtimeType == bool) {
                                  onCheck(value!);
                                }
                              }
                            : null,
                        shape: shape,
                        contentPadding: contentPadding,
                        selectedTileColor: customColors?.primaryBg,
                        tileColor: customColors?.primaryBg.withAlpha(100),
                        selected: balance >= price,
                        title: Text(
                          (balance >= price
                                  ? 'shop_app.I_accept_the_terms_of_use_of_the_product_and_confirm_my_consent_to_write-offs_from_the_balance'
                                  : 'shop_app.There_are_not_enough_funds_on_the_balance_to_purchase_the_product')
                              .tr(),
                          style: TextStyle(
                            color: balance >= price
                                ? customColors?.primaryTextColor
                                : customColors?.errorFill,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        isError: balance < price,
                        checkColor: balance >= price
                            ? null
                            : customColors?.errorFill,
                      ),
                    );
                  },
                ),
              ],
            ),
            FilledButton.icon(
              onPressed: onBack,
              icon: Icon(Icons.chevron_left),
              label: Text('shop_app.To_the_rules_of_purchase'.tr()),
              style: FilledButton.styleFrom(
                backgroundColor: customColors?.additionalThree,
                textStyle: TextStyle(color: customColors?.primaryTextColor),
                iconColor: customColors?.primaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
