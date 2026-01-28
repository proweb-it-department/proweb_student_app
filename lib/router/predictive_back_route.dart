import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/router/predictive_back_scope.dart';

class PredictiveBackRouteCustom<T> extends PageRoute<T> {
  final Widget child;

  PredictiveBackRouteCustom({required this.child, super.settings});

  @override
  bool get opaque => false; // 🔥 обязательно

  @override
  bool get barrierDismissible => false;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 350);

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return PredictiveBackScope(onPop: () => context.router.pop(), child: child);
  }
}
