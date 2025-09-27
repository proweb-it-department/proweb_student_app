import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proweb_student_app/api/language/language.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/profile/profile_data_bloc.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class ProfileDialog extends StatelessWidget {
  const ProfileDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final LocalizationService serviceLocal = sl<LocalizationService>();
    final list = serviceLocal.loadloadCachedLangList();
    CustomColors? customColor = Theme.of(context).extension<CustomColors>();
    final profileBloc = context.watch<ProfileDataBloc>();
    return Dialog(
      insetPadding: EdgeInsets.all(12),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 1,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: customColor?.primaryTextColor,
                    ),
                  ),
                  Center(
                    child: Text(
                      'PROWEB',
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                spacing: 2,
                children: [
                  profileBloc.state.when(
                    view: (profile) {
                      return ListTile(
                        leading: Avatar(profile: profile),
                        title: Text(sl<LocalData>().nameMyProfile(profile)),
                        subtitle: Text(
                          sl<LocalData>().getContryCode(phone: profile.phone),
                        ),
                      );
                    },
                    initial: () => Md3CirculeIndicator(),
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 10),
                    child: ListTileBuilder(
                      isStart: true,
                      isEnd: false,
                      builder: (shape, contentPadding, isThreeLine) {
                        return ListTile(
                          shape: shape,
                          contentPadding: contentPadding,
                          tileColor: customColor?.containerColor,
                          onTap: () {
                            Navigator.of(context).pop('download');
                          },
                          leading: Icon(
                            color: customColor?.primaryTextColor,
                            Icons.slow_motion_video,
                          ),
                          title: Text('profile_dialog.download_video'.tr()),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: customColor?.primaryTextColor,
                          ),
                        );
                      },
                    ),
                  ),
                  ListTileBuilder(
                    isStart: false,
                    isEnd: true,
                    builder: (shape, contentPadding, isThreeLine) {
                      return ListTile(
                        shape: shape,
                        contentPadding: contentPadding,
                        tileColor: customColor?.containerColor,
                        onTap: () {
                          Navigator.of(context).pop('files');
                        },
                        leading: Icon(
                          color: customColor?.primaryTextColor,
                          Icons.file_open_outlined,
                        ),
                        title: Text('profile_dialog.download_files'.tr()),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: customColor?.primaryTextColor,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text('profile_dialog.colors'.tr()),
                    leading: Icon(Icons.color_lens),
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsetsGeometry.all(10),
                          child: Column(
                            spacing: 2,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTileBuilder(
                                isStart: true,
                                isEnd: false,
                                builder: (shape, contentPadding, isThreeLine) {
                                  return ListTile(
                                    shape: shape,
                                    contentPadding: contentPadding,
                                    tileColor: customColor?.primaryBg,
                                    onTap: () {
                                      AdaptiveTheme.of(context).setLight();
                                    },
                                    leading:
                                        AdaptiveTheme.of(context).mode ==
                                            AdaptiveThemeMode.light
                                        ? Icon(Icons.check)
                                        : null,
                                    title: Text(
                                      'profile_dialog.colors_light'.tr(),
                                    ),
                                  );
                                },
                              ),
                              ListTileBuilder(
                                isStart: false,
                                isEnd: false,
                                builder: (shape, contentPadding, isThreeLine) {
                                  return ListTile(
                                    shape: shape,
                                    contentPadding: contentPadding,
                                    tileColor: customColor?.primaryBg,
                                    onTap: () {
                                      AdaptiveTheme.of(context).setDark();
                                    },
                                    leading:
                                        AdaptiveTheme.of(context).mode ==
                                            AdaptiveThemeMode.dark
                                        ? Icon(Icons.check)
                                        : null,
                                    title: Text(
                                      'profile_dialog.colors_dark'.tr(),
                                    ),
                                  );
                                },
                              ),
                              ListTileBuilder(
                                isStart: false,
                                isEnd: true,
                                builder: (shape, contentPadding, isThreeLine) {
                                  return ListTile(
                                    shape: shape,
                                    contentPadding: contentPadding,
                                    tileColor: customColor?.primaryBg,
                                    onTap: () {
                                      AdaptiveTheme.of(context).setSystem();
                                    },
                                    leading:
                                        AdaptiveTheme.of(context).mode ==
                                            AdaptiveThemeMode.system
                                        ? Icon(Icons.check)
                                        : null,
                                    title: Text(
                                      'profile_dialog.colors_system'.tr(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ExpansionTile(
                    title: Text('profile_dialog.language'.tr()),
                    leading: Icon(Icons.translate),
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.all(10),
                        child: Material(
                          color: Colors.transparent,
                          child: Column(
                            spacing: 2,
                            children: List.generate(list.length, (index) {
                              final indexLocal = list.elementAt(index);
                              return ListTileBuilder(
                                isStart: index == 0,
                                isEnd: index == (list.length - 1),
                                builder: (shape, contentPadding, isThreeLine) {
                                  return ListTile(
                                    shape: shape,
                                    contentPadding: contentPadding,
                                    tileColor: customColor?.primaryBg,
                                    onTap: () {
                                      context.setLocale(
                                        Locale(indexLocal.shortName!),
                                      );
                                    },
                                    leading:
                                        context.locale.toString() ==
                                            indexLocal.shortName
                                        ? Icon(Icons.check)
                                        : null,
                                    title: Text(indexLocal.name!),
                                  );
                                },
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop('logOut');
                    },
                    leading: Icon(
                      color: customColor?.primaryTextColor,
                      Icons.logout,
                    ),
                    title: Text('profile_dialog.logout'.tr()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
