import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class SegmentLanguageProduct extends StatelessWidget {
  final Function(String lang) callback;
  final String language;
  final bool disabled;
  const SegmentLanguageProduct({
    super.key,
    required this.callback,
    required this.language,
    required this.disabled,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return SegmentedButton<String>(
      style: SegmentedButton.styleFrom(
        iconColor: customColors?.primaryTextColor,
        backgroundColor: customColors?.containerColor,
        selectedBackgroundColor: customColors?.primaryBg,
        disabledBackgroundColor: customColors?.containerColor.withAlpha(150),
        disabledIconColor: customColors?.primaryTextColor.withAlpha(150),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: customColors?.borderColor ?? Colors.transparent,
          ),
        ),
      ),
      selected: {language},
      onSelectionChanged: disabled
          ? null
          : (p0) {
              callback(p0.first);
            },
      segments: [
        ButtonSegment(
          label: Text(
            'Русский',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: customColors?.primaryTextColor),
          ),
          value: 'ru',
        ),
        ButtonSegment(
          label: Text(
            'O`zbek',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: customColors?.primaryTextColor),
          ),
          value: 'uz',
        ),
      ],
    );
  }
}
