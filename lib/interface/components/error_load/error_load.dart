import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class ErrorLoad extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final Widget? action;
  final Color? color;
  const ErrorLoad({super.key, this.text, this.icon, this.action, this.color});

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
          child: Icon(icon ?? Icons.warning, color: customTheme?.primaryTextColor, size: 30),
        ),
        SizedBox(height: 5),
        Text(text ?? 'global_data.error_load_title'.tr()),
        if (action != null) SizedBox(height: 5),
        if (action != null) action!,
      ],
    );
  }
}
