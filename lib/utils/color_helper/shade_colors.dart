import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/color_helper/color_helper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class ShadeColors {
  Map<String, ColorCreater> _value = {};
  final String _hex;

  ShadeColors(this._hex);

  Map<String, ColorCreater> get value => _value;

  void generate() {
    final colorsCreate = ColorCreater(_hex);
    final List<int> shadeSteps = [
      50,
      100,
      200,
      300,
      400,
      500,
      600,
      700,
      800,
      900,
      1000,
      1100,
      1200,
    ];
    final colorsArray = colorsCreate.all(16);
    final Map<String, ColorCreater> colors = {};

    for (var i = 0; i < shadeSteps.length; i++) {
      final step = shadeSteps[i];
      final newColor = colorsArray[i];
      colors['shade$step'] = newColor;
    }

    _value = colors;
  }

  ColorCreater? theme(
    BuildContext context, {
    required int light,
    required int dark,
  }) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final brightness = customColors?.brightness;
    if (brightness != null && _value.isNotEmpty) {
      if (brightness == Brightness.dark) {
        return _value['shade$dark'];
      }
      if (brightness == Brightness.light) {
        return _value['shade$light'];
      }
    }
    return null;
  }
}
