import 'dart:math';

typedef RgbArray = List<int>;
typedef RgbaArray = List<num>;
typedef HslArray = List<double>;
typedef HslaArray = List<num>;

class ParsedColor {
  final String type;
  final List<num> values;
  final double alpha;

  ParsedColor({required this.type, required this.values, required this.alpha});
}

class MixedColor {
  final String hex;
  final String hexa;
  final RgbaArray rgba;
  final HslaArray hsla;

  MixedColor({
    required this.hex,
    required this.hexa,
    required this.rgba,
    required this.hsla,
  });
}

double clamp(num value, num minValue, num maxValue) {
  return value.clamp(minValue, maxValue).toDouble();
}

String padHex(num value) {
  final hex = clamp(value.round(), 0, 255).toInt().toRadixString(16);
  return hex.length == 1 ? '0$hex' : hex;
}

RgbaArray parseHexToRgb(String hex) {
  hex = hex.replaceAll('#', '');
  double alpha = 1;

  if (hex.length == 8) {
    alpha = int.parse(hex.substring(6, 8), radix: 16) / 255;
    hex = hex.substring(0, 6);
  } else if (hex.length == 4) {
    alpha = int.parse('${hex[3]}${hex[3]}', radix: 16) / 255;
    hex = hex.substring(0, 3);
  }

  if (hex.length == 3) {
    hex = '${hex[0]}${hex[0]}${hex[1]}${hex[1]}${hex[2]}${hex[2]}';
  }

  final numVal = int.parse(hex, radix: 16);
  final r = numVal >> 16;
  final g = (numVal >> 8) & 255;
  final b = numVal & 255;

  return [r, g, b, alpha];
}

RgbArray hslToRgb(HslArray hsl) {
  double h = hsl[0] / 360;
  double s = hsl[1] / 100;
  double l = hsl[2] / 100;

  if (s == 0) {
    int gray = (255 * l).round();
    return [gray, gray, gray];
  }

  double temp2 = l < 0.5 ? l * (1 + s) : l + s - l * s;
  double temp1 = 2 * l - temp2;

  List<int> rgb = [];
  for (int i = 0; i < 3; i++) {
    double temp3 = h + (1 / 3) * -(i - 1);
    if (temp3 < 0) temp3 += 1;
    if (temp3 > 1) temp3 -= 1;

    double color;
    if (6 * temp3 < 1) {
      color = temp1 + (temp2 - temp1) * 6 * temp3;
    } else if (2 * temp3 < 1) {
      color = temp2;
    } else if (3 * temp3 < 2) {
      color = temp1 + (temp2 - temp1) * (2 / 3 - temp3) * 6;
    } else {
      color = temp1;
    }
    rgb.add((255 * color).round());
  }
  return rgb;
}

String rgbToHex(List<num> rgba) {
  final r = rgba[0].toInt();
  final g = rgba[1].toInt();
  final b = rgba[2].toInt();
  final a = rgba.length == 4 ? rgba[3].toDouble() : 1.0;
  final alphaHex = rgba.length == 4 ? padHex((255 * a).round()) : '';
  return '#${padHex(r)}${padHex(g)}${padHex(b)}$alphaHex';
}

HslArray rgbToHsl(RgbArray rgb) {
  double rf = rgb[0] / 255;
  double gf = rgb[1] / 255;
  double bf = rgb[2] / 255;

  double minVal = min(rf, min(gf, bf));
  double maxVal = max(rf, max(gf, bf));
  double delta = maxVal - minVal;

  double hue = 0;
  double saturation = 0;
  double lightness = (minVal + maxVal) / 2;

  if (delta != 0) {
    saturation = lightness > 0.5
        ? delta / (2 - maxVal - minVal)
        : delta / (maxVal + minVal);

    if (maxVal == rf) {
      hue = (gf - bf) / delta + (gf < bf ? 6 : 0);
    } else if (maxVal == gf) {
      hue = (bf - rf) / delta + 2;
    } else {
      hue = (rf - gf) / delta + 4;
    }
    hue *= 60;
  }

  return [hue, saturation * 100, lightness * 100];
}

MixedColor? mixColors(String color1, String color2, [int weight = 50]) {
  final c1 = ColorUtil.toRgb(color1);
  final c2 = ColorUtil.toRgb(color2);
  if (c1 == null || c2 == null) return null;

  final w = clamp(weight, 0, 100) / 100;
  final w2 = 2 * w - 1;
  final a = c1['alpha']! - c2['alpha']!;
  final wA = (w2 * a == -1) ? w2 : (w2 + a) / (1 + w2 * a);
  final combinedWeight = (wA + 1) / 2;
  final invWeight = 1 - combinedWeight;

  final r = (c1['values']![0] * combinedWeight + c2['values']![0] * invWeight)
      .round();
  final g = (c1['values']![1] * combinedWeight + c2['values']![1] * invWeight)
      .round();
  final b = (c1['values']![2] * combinedWeight + c2['values']![2] * invWeight)
      .round();
  final aFinal = double.parse(
    (c1['alpha']! * w + c2['alpha']! * (1 - w)).toStringAsFixed(8),
  );

  final rgba = [r, g, b, aFinal];
  final hsla = [
    ...rgbToHsl([r, g, b]),
    aFinal,
  ];

  return MixedColor(
    hex: rgbToHex([r, g, b]),
    hexa: rgbToHex(List<num>.from(rgba)),
    rgba: List<num>.from(rgba),
    hsla: List<num>.from(hsla),
  );
}

class ColorUtil {
  static Map<String, dynamic>? toRgb(String colorString) {
    if (colorString.startsWith('#')) {
      final rgba = parseHexToRgb(colorString);
      return {
        'values': [rgba[0] as int, rgba[1] as int, rgba[2] as int],
        'alpha': rgba[3].toDouble(),
      };
    }
    return null;
  }
}

class ColorCreater {
  RgbArray rgb = [0, 0, 0];
  double alpha = 1;
  String type;
  int weight;

  ColorCreater(String input, [this.type = 'base', this.weight = 0]) {
    final parsed = ColorUtil.toRgb(input);
    if (parsed == null) {
      throw Exception('Unable to parse color: $input');
    }
    rgb = List<int>.from(parsed['values']);
    alpha = parsed['alpha'];
  }

  String hexString() {
    return rgbToHex(alpha >= 1 ? rgb : [...rgb, alpha]);
  }

  String rgbString() {
    return alpha >= 1
        ? 'rgb(${rgb.join(', ')})'
        : 'rgba(${rgb.join(', ')}, $alpha)';
  }

  String _normalizeHex(String hex) {
    var value = hex.trim().toUpperCase();
    if (!value.startsWith('#')) {
      value = '#$value';
    }
    if (value.length == 4) {
      value =
          '#'
          '${value[1]}${value[1]}'
          '${value[2]}${value[2]}'
          '${value[3]}${value[3]}';
    }
    return value;
  }

  String getColorContent() {
    final hexcolor = _normalizeHex(hexString());

    final r = int.parse(hexcolor.substring(1, 3), radix: 16);
    final g = int.parse(hexcolor.substring(3, 5), radix: 16);
    final b = int.parse(hexcolor.substring(5, 7), radix: 16);

    final yiq = ((r * 299) + (g * 587) + (b * 114)) / 1000;
    return (yiq >= 128) ? 'black' : 'white';
  }

  ColorCreater tint([int weight = 50]) {
    final mixed = mixColors('#ffffff', hexString(), weight);
    if (mixed == null) throw Exception('Failed to mix colors');
    return ColorCreater(mixed.hex, 'tint', weight);
  }

  ColorCreater shade([int weight = 50]) {
    final mixed = mixColors('#000000', hexString(), weight);
    if (mixed == null) throw Exception('Failed to mix colors');
    return ColorCreater(mixed.hex, 'shade', weight);
  }

  List<ColorCreater> all([int step = 10]) {
    final tints = List.generate(
      (100 ~/ step),
      (i) => tint((i + 1) * step),
    ).reversed.toList();
    final shades = List.generate((100 ~/ step), (i) => shade((i + 1) * step));
    return [...tints, this, ...shades];
  }
}
