import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:proweb_student_app/models/my_profile/my_profile.dart';
import 'package:proweb_student_app/models/user/user.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

var colorData = <String, Color>{
  "a": Colors.red.shade800,
  "b": Colors.pink.shade800,
  "c": Colors.purple.shade800,
  "d": Colors.deepPurple.shade800,
  "e": Colors.indigo.shade800,
  "f": Colors.blue.shade800,
  "g": Colors.lightBlue.shade800,
  "h": Colors.cyan.shade800,
  "i": Colors.teal.shade800,
  "j": Colors.green.shade800,
  "k": Colors.lightGreen.shade800,
  "l": Colors.lime.shade800,
  "m": Colors.yellow.shade800,
  "n": Colors.amber.shade800,
  "o": Colors.orange.shade800,
  "p": Colors.deepOrange.shade800,
  "q": Colors.brown.shade800,
  "r": Colors.grey.shade800,
  "s": Colors.blueGrey.shade800,
  "t": Colors.redAccent.shade700,
  "u": Colors.pinkAccent.shade700,
  "v": Colors.purpleAccent.shade700,
  "w": Colors.deepPurpleAccent.shade700,
  "x": Colors.indigoAccent.shade700,
  "y": Colors.blueAccent.shade700,
  "z": Colors.lightBlueAccent.shade700,
  "а": Colors.red.shade800,
  "б": Colors.pink.shade800,
  "в": Colors.purple.shade800,
  "г": Colors.deepPurple.shade800,
  "д": Colors.indigo.shade800,
  "е": Colors.blue.shade800,
  "ё": Colors.lightBlue.shade800,
  "ж": Colors.cyan.shade800,
  "з": Colors.teal.shade800,
  "и": Colors.green.shade800,
  "й": Colors.lightGreen.shade800,
  "к": Colors.lime.shade800,
  "л": Colors.yellow.shade800,
  "м": Colors.amber.shade800,
  "н": Colors.orange.shade800,
  "о": Colors.deepOrange.shade800,
  "п": Colors.brown.shade800,
  "р": Colors.grey.shade800,
  "с": Colors.blueGrey.shade800,
  "т": Colors.redAccent.shade700,
  "у": Colors.pinkAccent.shade700,
  "ф": Colors.purpleAccent.shade700,
  "х": Colors.deepPurpleAccent.shade700,
  "ц": Colors.indigoAccent.shade700,
  "ч": Colors.blueAccent.shade700,
  "ш": Colors.lightBlueAccent.shade700,
  "щ": Colors.grey.shade900,
  "ъ": Colors.blueGrey.shade900,
  "ы": Colors.redAccent.shade700,
  "ь": Colors.pinkAccent.shade700,
  "э": Colors.purpleAccent.shade700,
  "ю": Colors.deepPurpleAccent.shade700,
  "я": Colors.indigoAccent.shade700,
};

class Avatar extends StatelessWidget {
  final MyProfile? profile;
  final User? user;
  final double size;
  final double circular;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;

  const Avatar({
    super.key,
    this.profile,
    this.size = 40,
    this.textColor,
    this.backgroundColor,
    this.fontWeight = FontWeight.bold,
    this.fontFamily,
    this.fontSize = 16,
    this.user,
    this.circular = 40,
  });

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomColors>();
    String? image;
    if (profile?.image != null) {
      image = profile?.image;
    } else if (user?.image != null) {
      image = user?.image;
    }
    if (image == null) {
      return _textAvatar(customTheme);
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(circular),
        child: CachedNetworkImage(
          imageUrl: image,
          height: size,
          width: size,
          repeat: ImageRepeat.noRepeat,
          fit: BoxFit.cover,
          fadeOutDuration: Duration.zero,
          fadeInDuration: Duration.zero,
          placeholderFadeInDuration: Duration.zero,
          placeholder: (context, url) {
            return _textAvatar(customTheme);
          },
          errorWidget: (context, url, error) {
            return _textAvatar(customTheme);
          },
        ),
      );
    }
  }

  Widget _textAvatar(CustomColors? customTheme) {
    return _textDisplay();
  }

  Color? _colorBackgroundConfig() {
    if (RegExp(r'[A-Z]|').hasMatch(_textConfiguration()) &&
        backgroundColor == null) {
      return colorData[_textConfiguration()[0].toLowerCase().toString()];
    }
    return backgroundColor;
  }

  String _textConfiguration() {
    if ((profile?.lastName ?? user?.lastName) != null ||
        (profile?.firstName ?? user?.firstName) != null) {
      var newText = _toString(
        value:
            '${((profile)?.lastName ?? user?.lastName) ?? ''} ${(profile?.firstName ?? user?.firstName) ?? ''}'
                .trim(),
      );
      newText = newText.toUpperCase();
      var arrayLeeters = newText.trim().split(' ');

      if (arrayLeeters.length > 1 && arrayLeeters.length == 2) {
        return '${arrayLeeters[0][0].trim()}${arrayLeeters[1][0].trim()}';
      }
      if (newText.isNotEmpty) {
        return newText[0];
      } else {
        return '?';
      }
    }
    return '?';
  }

  String _toString({String? value}) {
    return String.fromCharCodes(value!.runes.toList());
  }

  Widget _textDisplay() {
    return Material(
      shape: circular == 0 ? null : _buildTextType(),
      color: _colorBackgroundConfig(),
      child: SizedBox(
        height: size,
        width: size,
        child: Center(child: _buildText()),
      ),
    );
  }

  RoundedRectangleBorder _buildTextType() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(size / 2),
    );
  }

  Widget _buildText() {
    return Text(
      _textConfiguration(),
      style: TextStyle(
        color: textColor ?? Colors.white,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
