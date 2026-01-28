import 'package:flutter/material.dart';

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
    return child;
  }
}
