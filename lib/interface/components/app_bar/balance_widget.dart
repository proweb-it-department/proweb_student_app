import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/models/balance/balance.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';

class BalanceWidget extends StatefulWidget {
  const BalanceWidget({super.key});

  @override
  State<BalanceWidget> createState() => _BalanceWidgetState();
}

class _BalanceWidgetState extends State<BalanceWidget>
    with SingleTickerProviderStateMixin {
  final GlobalKey _key = GlobalKey();
  final GlobalKey _contentKey = GlobalKey();
  late AnimationController _controller;
  late Animation<Rect?> _rectAnimation;
  OverlayEntry? _overlayEntry;
  bool _showContent = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _overlayEntry?.remove();
    _overlayEntry = null;
    super.dispose();
  }

  void _hideOverlay() {
    if (!mounted || _overlayEntry == null) return;
    setState(() {
      _showContent = false;
    });

    _controller.reverse().then((_) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    });
  }

  Future<void> _showOverlay() async {
    final renderBox = _key.currentContext!.findRenderObject() as RenderBox;
    final startOffset = renderBox.localToGlobal(Offset.zero);
    final startRect = Rect.fromLTWH(
      startOffset.dx,
      startOffset.dy,
      renderBox.size.width,
      renderBox.size.height,
    );

    final screenSize = MediaQuery.of(context).size;

    final endRect = Rect.fromLTWH(
      screenSize.width * 0.02,
      startOffset.dy,
      screenSize.width * 0.96,
      renderBox.size.height,
    );

    _rectAnimation =
        RectTween(begin: startRect, end: endRect).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
        )..addListener(() {
          if (_rectAnimation.isCompleted && mounted) {
            setState(() {
              _showContent = true;
            });
          }
        });
    _overlayEntry = OverlayEntry(
      builder: (context) {
        final customColor = Theme.of(context).extension<CustomColors>();
        return PopScope(
          canPop: _overlayEntry == null,
          onPopInvokedWithResult: (didPop, result) {
            if (!didPop) _hideOverlay();
          },
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final rect = _rectAnimation.value!;
              return Stack(
                children: [
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: _hideOverlay,
                      child: Container(color: Colors.black.withAlpha(70)),
                    ),
                  ),
                  Positioned(
                    left: rect.left,
                    top: rect.top,
                    width: rect.width,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),

                      color: customColor?.containerColor,
                      clipBehavior: Clip.antiAlias,
                      child: SizeTransition(
                        sizeFactor: _controller,
                        axisAlignment: -1.0,
                        child: Padding(
                          key: _contentKey,
                          padding: EdgeInsets.only(
                            top: 5,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Opacity(
                            opacity: _showContent ? 1 : 0,
                            child: BlocBuilder<BalanceBloc, BalanceState>(
                              builder: (context, state) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 5,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Center(
                                            child: Text(
                                              'profile_dialog.balance'.tr(),
                                              style: TextStyle(fontSize: 22),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: _hideOverlay,
                                        ),
                                      ],
                                    ),
                                    state.when(
                                      initial: () {
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                      error: () {
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                      balance: (balance) {
                                        return BalanceView(
                                          balance: balance,
                                          onTap: onTap,
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);
    await Future.delayed(const Duration(milliseconds: 16));
    _controller.forward(from: 0);
  }

  void onTap() {
    _hideOverlay();
    context.router.navigate(HomeBalanceRoute());
  }

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomColors>();
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        key: _key,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
        ),
        child: BlocBuilder<BalanceBloc, BalanceState>(
          bloc: context.read<BalanceBloc>()..add(BalanceEvent.started()),
          builder: (context, state) {
            return state.when(
              balance: (balance) {
                bool validBalance = double.parse(balance.mainBalance) < 0;
                String balanceFormater = NumberFormat(
                  '#,##0',
                  'ru_RU',
                ).format(double.parse(balance.mainBalance));
                final balanceConnections =
                    sl<Channel>().connect.connections[WsEvent.balance.name];
                if (balanceConnections?.isEmpty == true ||
                    balanceConnections == null) {
                  sl<Channel>().connect.subscribe(
                    channel: WsEvent.balance.name,
                    connection: ConnectionData(
                      callback: (data) {
                        final bloc = context.read<BalanceBloc>();
                        bloc.add(BalanceEvent.wsupdate(data: data));
                      },
                    ),
                  );
                }
                return InkWell(
                  onTap: _showOverlay,
                  onLongPress: _showOverlay,
                  borderRadius: BorderRadius.circular(40),
                  child: Ink(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      color: validBalance
                          ? customTheme?.errorFillOp
                          : customTheme?.containerColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.wallet,
                          color: validBalance
                              ? customTheme?.errorFillOp
                              : customTheme?.primaryTextColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'global_data.sum'.tr(
                            namedArgs: {'money': balanceFormater},
                          ),
                          style: TextStyle(
                            color: double.parse(balance.mainBalance) < 0
                                ? customTheme?.errorFill
                                : customTheme?.primaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              error: () {
                return Ink(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: customTheme?.errorFillOp,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.wallet, color: customTheme?.errorFillOp),
                      SizedBox(width: 10),
                      Row(
                        children: [
                          Text(
                            'global_data.error'.tr(),
                            style: TextStyle(color: customTheme?.errorFill),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.error_outline_outlined,
                            color: customTheme?.errorFill,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              initial: () {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: customTheme?.containerColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.wallet, color: customTheme?.primaryTextColor),
                      SizedBox(width: 10),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class BalanceView extends StatelessWidget {
  final Balance balance;
  final Function() onTap;
  const BalanceView({super.key, required this.balance, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 2,
      children: [
        ListTileBuilder(
          isStart: true,
          isEnd: false,
          builder: (shape, contentPadding, isThreeLine) {
            return ListTile(
              shape: shape,
              contentPadding: contentPadding,

              onTap: onTap,
              splashColor: double.parse(balance.mainBalance) < 0
                  ? customColors?.errorFillOp
                  : customColors?.primaryTextColorOp,
              leading: Icon(
                Icons.wallet,
                color: double.parse(balance.mainBalance) < 0
                    ? customColors?.errorFill
                    : customColors?.primaryTextColor,
              ),
              tileColor: double.parse(balance.mainBalance) < 0
                  ? customColors?.errorFillOp
                  : customColors?.primaryBg,
              title: Text(
                'profile_dialog.balance'.tr(),
                style: TextStyle(
                  color: double.parse(balance.mainBalance) < 0
                      ? customColors?.errorFill
                      : customColors?.primaryTextColor,
                ),
              ),
              subtitle: Text(
                'global_data.sum'.tr(
                  namedArgs: {
                    'money': NumberFormat(
                      '#,##0',
                      'ru_RU',
                    ).format(double.parse(balance.mainBalance)),
                  },
                ),
                style: TextStyle(
                  color: double.parse(balance.mainBalance) < 0
                      ? customColors?.errorFill
                      : customColors?.primaryTextColor,
                ),
              ),
            );
          },
        ),
        ListTileBuilder(
          isStart: false,
          isEnd: false,
          builder: (shape, contentPadding, isThreeLine) {
            return ListTile(
              tileColor: customColors?.primaryBg,
              shape: shape,
              contentPadding: contentPadding,
              onTap: onTap,
              splashColor: customColors?.primaryBgOp,
              leading: Icon(
                Icons.confirmation_number,
                color: customColors?.primaryTextColor,
              ),
              title: Text('profile_dialog.voucher_balance'.tr()),
              subtitle: Text(
                'global_data.sum'.tr(
                  namedArgs: {
                    'money': NumberFormat(
                      '#,##0',
                      'ru_RU',
                    ).format(double.parse(balance.voucherBalance)),
                  },
                ),
              ),
            );
          },
        ),
        ListTileBuilder(
          isStart: false,
          isEnd: true,

          builder: (shape, contentPadding, isThreeLine) {
            return ListTile(
              shape: shape,
              contentPadding: contentPadding,
              tileColor: customColors?.primaryBg,
              onTap: onTap,
              splashColor: customColors?.primaryBgOp,
              leading: SvgPicture.asset('assets/images/procoin.svg', width: 25),
              title: Text('PROCOIN'),
              subtitle: Text(
                NumberFormat(
                  '#,##0',
                  'ru_RU',
                ).format(double.parse(balance.procoin ?? '0')),
              ),
            );
          },
        ),
      ],
    );
  }
}
