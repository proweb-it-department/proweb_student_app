import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class NoData extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget? action;
  final double? size;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final Color? color;
  const NoData({super.key, required this.text, required this.icon, this.action, this.textStyle, this.textAlign, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomColors>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color ?? customTheme?.containerColor,
          minRadius: 40,
          maxRadius: 40,
          child: Icon(icon, color: customTheme?.primaryTextColor, size: size ?? 30),
        ),
        SizedBox(height: 5),
        Text(text, style: textStyle, textAlign: textAlign ?? TextAlign.center),
        if (action != null) SizedBox(height: 5),
        if (action != null) action!,
      ],
    );
  }
}
