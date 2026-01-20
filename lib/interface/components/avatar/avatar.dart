import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:proweb_student_app/models/my_profile/my_profile.dart';
import 'package:proweb_student_app/models/user/user.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

final Map<String, String> avatarPathByLetter = {
  // latin
  "a": "assets/images/avatar/gray1.png",
  "b": "assets/images/avatar/gray2.png",
  "c": "assets/images/avatar/green1.png",
  "d": "assets/images/avatar/green2.png",
  "e": "assets/images/avatar/ice1.png",
  "f": "assets/images/avatar/ice2.png",
  "g": "assets/images/avatar/purple1.png",
  "h": "assets/images/avatar/purple2.png",
  "i": "assets/images/avatar/red1.png",
  "j": "assets/images/avatar/red2.png",
  "k": "assets/images/avatar/gray1.png",
  "l": "assets/images/avatar/gray2.png",
  "m": "assets/images/avatar/green1.png",
  "n": "assets/images/avatar/green2.png",
  "o": "assets/images/avatar/ice1.png",
  "p": "assets/images/avatar/ice2.png",
  "q": "assets/images/avatar/purple1.png",
  "r": "assets/images/avatar/purple2.png",
  "s": "assets/images/avatar/red1.png",
  "t": "assets/images/avatar/red2.png",
  "u": "assets/images/avatar/gray1.png",
  "v": "assets/images/avatar/gray2.png",
  "w": "assets/images/avatar/green1.png",
  "x": "assets/images/avatar/green2.png",
  "y": "assets/images/avatar/ice1.png",
  "z": "assets/images/avatar/ice2.png",

  // cyrillic
  "а": "assets/images/avatar/gray1.png",
  "б": "assets/images/avatar/purple2.png",
  "в": "assets/images/avatar/red1.png",
  "г": "assets/images/avatar/red2.png",
  "д": "assets/images/avatar/gray1.png",
  "е": "assets/images/avatar/gray2.png",
  "ё": "assets/images/avatar/green1.png",
  "ж": "assets/images/avatar/green2.png",
  "з": "assets/images/avatar/ice1.png",
  "и": "assets/images/avatar/ice2.png",
  "й": "assets/images/avatar/purple1.png",
  "к": "assets/images/avatar/purple2.png",
  "л": "assets/images/avatar/red1.png",
  "м": "assets/images/avatar/red2.png",
  "н": "assets/images/avatar/gray1.png",
  "о": "assets/images/avatar/gray2.png",
  "п": "assets/images/avatar/green1.png",
  "р": "assets/images/avatar/green2.png",
  "с": "assets/images/avatar/ice1.png",
  "т": "assets/images/avatar/ice2.png",
  "у": "assets/images/avatar/purple1.png",
  "ф": "assets/images/avatar/purple2.png",
  "х": "assets/images/avatar/red1.png",
  "ц": "assets/images/avatar/red2.png",
  "ч": "assets/images/avatar/gray1.png",
  "ш": "assets/images/avatar/gray2.png",
  "щ": "assets/images/avatar/green1.png",
  "ъ": "assets/images/avatar/green2.png",
  "ы": "assets/images/avatar/ice1.png",
  "ь": "assets/images/avatar/ice2.png",
  "э": "assets/images/avatar/purple1.png",
  "ю": "assets/images/avatar/purple2.png",
  "я": "assets/images/avatar/red1.png",
};

class Avatar extends StatelessWidget {
  final MyProfile? profile;
  final User? user;
  final double size;
  final double circular;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;

  const Avatar({
    super.key,
    this.profile,
    this.size = 40,
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
    return _textDisplay(customTheme);
  }

  String _colorBackgroundConfig() {
    if (RegExp(r'[A-Z]|').hasMatch(_textConfiguration())) {
      return avatarPathByLetter[_textConfiguration()[0]
              .toLowerCase()
              .toString()] ??
          avatarPathByLetter.keys.first;
    }
    return avatarPathByLetter.keys.first;
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

  Widget _textDisplay(CustomColors? customTheme) {
    return ClipRRect(
      borderRadius: circular == 0 ? BorderRadius.zero : _buildBorderRadius(),
      child: Material(
        shape: circular == 0 ? null : _buildTextType(),
        color: backgroundColor ?? customTheme?.containerColor,
        child: SizedBox(
          height: size,
          width: size,
          child: Image.asset(
            _colorBackgroundConfig(),
            height: size * 0.8,
            width: size * 0.8,
          ),
        ),
      ),
    );
  }

  RoundedRectangleBorder _buildTextType() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(size / 2),
    );
  }

  BorderRadiusGeometry _buildBorderRadius() {
    return BorderRadiusGeometry.circular(size / 2);
  }
}
