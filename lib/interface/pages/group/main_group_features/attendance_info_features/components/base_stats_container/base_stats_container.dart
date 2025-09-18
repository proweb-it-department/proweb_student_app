import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class BaseStatsContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? insertPadding;
  const BaseStatsContainer({super.key, required this.child, this.padding, this.insertPadding});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(color: customColors?.containerColor, borderRadius: BorderRadius.circular(20)),
          padding: insertPadding ?? EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 10),
          child: child,
        ),
      ),
    );
  }
}
