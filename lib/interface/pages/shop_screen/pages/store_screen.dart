import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'dart:math' as math;

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        color: customColors?.containerColor,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    child: Material(
                      color: customColors?.primaryBg,
                      child: InkWell(
                        onTap: () {
                          context.router.push(MyPurchasesRoute());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              OneUiIconShape(
                                size: 80,
                                color: LinearGradient(
                                  colors: [
                                    HexColor('#8264f5'),
                                    HexColor('#8264f5'),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                child: Transform.scale(
                                  scale: 1.5,
                                  child: Lottie.asset(
                                    'assets/lottie/cart_shop.json',
                                  ),
                                ),
                              ),
                              Text(
                                'shop_app.My_purchases'.tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    child: Material(
                      color: customColors?.primaryBg,
                      child: InkWell(
                        onTap: () {
                          context.router.push(ProductsListRoute());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              OneUiIconShape(
                                size: 80,
                                color: LinearGradient(
                                  colors: [
                                    Colors.red.shade400,
                                    Colors.red.shade900,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                child: Lottie.asset(
                                  'assets/lottie/playpause.json',
                                ),
                              ),
                              Text(
                                'shop_app.Exclusive_products'.tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    child: Material(
                      color: customColors?.primaryBg,
                      child: InkWell(
                        onTap: () {
                          context.router.push(ServicesListRoute());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              OneUiIconShape(
                                size: 80,
                                color: LinearGradient(
                                  colors: [
                                    Colors.orange.shade400,
                                    Colors.orange.shade900,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                child: Transform.scale(
                                  scale: 1.5,
                                  child: Lottie.asset(
                                    'assets/lottie/servises2.json',
                                  ),
                                ),
                              ),
                              Text(
                                'shop_app.Additional_services'.tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                    child: Material(
                      color: customColors?.primaryBg,
                      child: InkWell(
                        onTap: () {
                          context.router.push(TarifsRoute());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              OneUiIconShapeTarif(
                                size: 80,
                                child: Text(
                                  'PREMIUM',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'shop_app.PREMIUM_Tariffs'.tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OneUiIconShapeTarif extends StatefulWidget {
  final double size;
  final Widget child;

  const OneUiIconShapeTarif({
    super.key,
    required this.size,
    required this.child,
  });

  @override
  State<OneUiIconShapeTarif> createState() => _OneUiIconShapeTarifState();
}

class _OneUiIconShapeTarifState extends State<OneUiIconShapeTarif>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OneUiClipper(),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            alignment: Alignment.center,
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF5296FD), Color(0xFFBF57FF)],
                stops: [0.28, 1.0],
                transform: GradientRotation(_controller.value * 2 * math.pi),
              ),
            ),
            child: child,
          );
        },
        child: widget.child,
      ),
    );
  }
}

class OneUiIconShape extends StatelessWidget {
  final double size;
  final LinearGradient color;
  final Widget child;

  const OneUiIconShape({
    super.key,
    required this.size,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OneUiClipper(),
      child: Material(
        child: Ink(
          width: size,
          height: size,
          decoration: BoxDecoration(gradient: color),
          child: Center(child: child),
        ),
      ),
    );
  }
}

class OneUiClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    double width = size.width;
    double height = size.height;
    double cornerRadius = width * 0.40;

    path.moveTo(cornerRadius, 0);
    path.lineTo(width - cornerRadius, 0);
    path.quadraticBezierTo(width, 0, width, cornerRadius);
    path.lineTo(width, height - cornerRadius);
    path.quadraticBezierTo(width, height, width - cornerRadius, height);
    path.lineTo(cornerRadius, height);
    path.quadraticBezierTo(0, height, 0, height - cornerRadius);
    path.lineTo(0, cornerRadius);
    path.quadraticBezierTo(0, 0, cornerRadius, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
