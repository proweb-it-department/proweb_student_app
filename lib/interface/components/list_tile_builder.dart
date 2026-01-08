import 'package:flutter/material.dart';

class ListTileBuilder extends StatelessWidget {
  final bool isStart;
  final bool isEnd;
  final Widget Function(
    RoundedRectangleBorder shape,
    EdgeInsets contentPadding,
    bool isThreeLine,
  )
  builder;
  const ListTileBuilder({
    super.key,
    required this.isStart,
    required this.isEnd,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    double radiusBig = 22;
    double radiusSmall = 0;
    Radius? top;
    Radius? bottom;
    if (isStart) {
      top = Radius.circular(radiusBig);
    }
    if (isEnd) {
      bottom = Radius.circular(radiusBig);
    }
    return builder(
      RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.directional(
          topStart: top ?? Radius.circular(radiusSmall),
          topEnd: top ?? Radius.circular(radiusSmall),
          bottomStart: bottom ?? Radius.circular(radiusSmall),
          bottomEnd: bottom ?? Radius.circular(radiusSmall),
        ),
      ),
      EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      true,
    );
  }
}
