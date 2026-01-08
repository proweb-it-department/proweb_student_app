import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class ThemeColorSettings extends StatefulWidget {
  const ThemeColorSettings({super.key});

  @override
  State<ThemeColorSettings> createState() => _ThemeColorSettingsState();
}

class _ThemeColorSettingsState extends State<ThemeColorSettings> {
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
    return ExpansionTile(
      title: Text('profile_dialog.colors'.tr()),
      leading: IconAvatar(icon: Icons.color_lens),
      backgroundColor: customColor?.containerColor,
      collapsedBackgroundColor: customColor?.containerColor,
      controller: controller,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.directional(
          bottomEnd: Radius.circular(0),
          bottomStart: Radius.circular(0),
          topEnd: Radius.circular(22),
          topStart: Radius.circular(22),
        ),
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.directional(
          bottomEnd: Radius.circular(0),
          bottomStart: Radius.circular(0),
          topEnd: Radius.circular(22),
          topStart: Radius.circular(22),
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
              Material(
                color: Colors.transparent,
                child: Column(
                  spacing: 2,
                  mainAxisSize: MainAxisSize.min,
                  children: AdaptiveThemeMode.values
                      .map(
                        (e) => ListTileBuilder(
                          isStart: false,
                          isEnd: false,
                          builder: (shape, contentPadding, isThreeLine) {
                            return ListTile(
                              shape: shape,
                              contentPadding: contentPadding,
                              tileColor: customColor?.containerColor,
                              onTap: () {
                                switch (e) {
                                  case AdaptiveThemeMode.light:
                                    AdaptiveTheme.of(context).setLight();
                                    break;
                                  case AdaptiveThemeMode.dark:
                                    AdaptiveTheme.of(context).setDark();
                                    break;
                                  case AdaptiveThemeMode.system:
                                    AdaptiveTheme.of(context).setSystem();
                                    break;
                                }
                              },
                              leading: AdaptiveTheme.of(context).mode == e
                                  ? Icon(Icons.check)
                                  : null,
                              title: Text(
                                'profile_dialog.colors_${e.modeName.toLowerCase()}'
                                    .tr(),
                              ),
                            );
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
