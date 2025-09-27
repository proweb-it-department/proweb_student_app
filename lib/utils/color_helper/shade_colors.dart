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
    required ShadeNumber light,
    required ShadeNumber dark,
  }) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final brightness = customColors?.brightness;
    if (brightness != null && _value.isNotEmpty) {
      if (brightness == Brightness.dark) {
        return _value[dark.shade];
      }
      if (brightness == Brightness.light) {
        return _value[light.shade];
      }
    }
    return null;
  }
}

enum ShadeNumber {
  shade50('shade50'),
  shade100('shade100'),
  shade200('shade200'),
  shade300('shade300'),
  shade400('shade400'),
  shade500('shade500'),
  shade600('shade600'),
  shade700('shade700'),
  shade800('shade800'),
  shade900('shade900'),
  shade1000('shade1000'),
  shade1100('shade1100'),
  shade1200('shade1200');

  final String shade;
  const ShadeNumber(this.shade);
}
