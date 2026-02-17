import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/language/language.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class LanguageSettings extends StatefulWidget {
  const LanguageSettings({super.key});

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  late ExpansibleController controller;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    controller = ExpansibleController();
    controller.addListener(() {
      setState(() {
        isExpanded = controller.isExpanded;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors? customColor = Theme.of(context).extension<CustomColors>();
    final LocalizationService serviceLocal = sl<LocalizationService>();
    final langs = serviceLocal.loadloadCachedLangList();
    return ExpansionTile(
      title: Text('profile_dialog.language'.tr()),
      leading: IconAvatar(icon: Icons.translate),
      backgroundColor: customColor?.containerColor,
      collapsedBackgroundColor: customColor?.containerColor,
      controller: controller,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.directional(
          bottomEnd: Radius.circular(0),
          bottomStart: Radius.circular(0),
          topEnd: Radius.circular(0),
          topStart: Radius.circular(0),
        ),
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.directional(
          bottomEnd: Radius.circular(22),
          bottomStart: Radius.circular(22),
          topEnd: Radius.circular(0),
          topStart: Radius.circular(0),
        ),
      ),
      trailing: AnimatedRotation(
        turns: isExpanded ? -0.5 : 0,
        duration: Duration(milliseconds: 200),
        curve: Curves.linear,
        child: Ink(
          decoration: BoxDecoration(
            color: customColor?.primaryBg,
            borderRadius: BorderRadius.circular(80),
          ),
          child: Icon(Icons.keyboard_arrow_down_outlined),
        ),
      ),
      children: [
        Container(
          decoration: BoxDecoration(color: customColor?.primaryBg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 2),
              if (langs == null)
                ErrorLoad()
              else
                Material(
                  color: Colors.transparent,
                  child: Column(
                    spacing: 2,
                    children: List.generate((langs.languages?.length ?? 0), (
                      index,
                    ) {
                      final indexLocal = langs.languages!.elementAt(index);
                      return ListTileBuilder(
                        isStart: false,
                        isEnd: index == ((langs.languages?.length ?? 0) - 1),
                        builder: (shape, contentPadding, isThreeLine) {
                          return ListTile(
                            shape: shape,
                            contentPadding: contentPadding,
                            tileColor: customColor?.containerColor,
                            onTap: () {
                              context.setLocale(Locale(indexLocal.code!));
                            },
                            leading:
                                context.locale.toString() == indexLocal.code
                                ? Icon(Icons.check)
                                : null,
                            title: Text(indexLocal.name!),
                          );
                        },
                      );
                    }),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
