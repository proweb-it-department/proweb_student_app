import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/profile/profile_data_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/widgets/language_settings.dart';
import 'package:proweb_student_app/interface/components/app_bar/widgets/theme_color_settings.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CustomColors? customColor = Theme.of(context).extension<CustomColors>();
    final profileBloc = context.watch<ProfileDataBloc>();
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox(width: 0),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: IconButton.styleFrom(
                backgroundColor: customColor?.containerColor,
              ),
              icon: Icon(Icons.close, color: customColor?.primaryTextColor),
            ),
          ],
          title: profileBloc.state.when(
            view: (profile) {
              return Text(
                sl<LocalData>().getContryCode(phone: profile.phone),
                style: TextStyle(fontSize: 16),
              );
            },
            initial: () => Md3CirculeIndicator(size: 20),
          ),
          surfaceTintColor: customColor?.additionalTwo,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  spacing: 2,
                  children: [
                    profileBloc.state.when(
                      view: (profile) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 10,
                          children: [
                            Avatar(profile: profile, size: 90, circular: 90),
                            Text(
                              sl<LocalData>().nameMyProfile(profile),
                              style: TextStyle(fontSize: 22),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        );
                      },
                      initial: () => SizedBox(),
                    ),
                    SizedBox(height: 10),
                    Material(
                      color: Colors.transparent,
                      child: Padding(
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
                                context.router.navigate(DownloadVideosRoute());
                              },
                              leading: IconAvatar(
                                icon: Icons.slow_motion_video,
                                clipPath: PathSvgShape.bun,
                              ),
                              title: Text('profile_dialog.download_video'.tr()),
                              trailing: Ink(
                                decoration: BoxDecoration(
                                  color: customColor?.primaryBg,
                                  borderRadius: BorderRadius.circular(80),
                                ),
                                child: Icon(Icons.keyboard_arrow_right),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: ListTileBuilder(
                        isStart: false,
                        isEnd: false,
                        builder: (shape, contentPadding, isThreeLine) {
                          return ListTile(
                            shape: shape,
                            contentPadding: contentPadding,
                            tileColor: customColor?.containerColor,
                            onTap: () {
                              context.router.navigate(DownloadFilesRoute());
                            },
                            leading: IconAvatar(
                              icon: Icons.file_open_outlined,
                              clipPath: PathSvgShape.bun,
                            ),
                            title: Text('profile_dialog.download_files'.tr()),
                            trailing: Ink(
                              decoration: BoxDecoration(
                                color: customColor?.primaryBg,
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: Icon(Icons.keyboard_arrow_right),
                            ),
                          );
                        },
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: ListTileBuilder(
                        isStart: false,
                        isEnd: true,
                        builder: (shape, contentPadding, isThreeLine) {
                          return ListTile(
                            shape: shape,
                            contentPadding: contentPadding,
                            tileColor: customColor?.containerColor,
                            onTap: () {
                              context.router.navigate(SavedDataRoute());
                            },
                            leading: IconAvatar(
                              icon: Icons.data_usage,
                              clipPath: PathSvgShape.bun,
                            ),
                            title: Text('Использование памяти'),
                            trailing: Ink(
                              decoration: BoxDecoration(
                                color: customColor?.primaryBg,
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: Icon(Icons.keyboard_arrow_right),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    ThemeColorSettings(),
                    SizedBox(height: 2),
                    LanguageSettings(),
                    SizedBox(height: 20),

                    Material(
                      color: Colors.transparent,
                      child: ListTileBuilder(
                        isEnd: false,
                        isStart: true,
                        builder: (shape, contentPadding, isThreeLine) {
                          return ListTile(
                            minVerticalPadding: 1,
                            shape: shape,
                            contentPadding: contentPadding,
                            tileColor: customColor?.containerColor,
                            onTap: () {},
                            leading: IconAvatar(
                              icon: Icons.phonelink,
                              clipPath: PathSvgShape.verySunny,
                            ),
                            title: Text('Мои активные сессии'),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 2),
                    Material(
                      color: Colors.transparent,
                      child: ListTileBuilder(
                        isEnd: true,
                        isStart: false,
                        builder: (shape, contentPadding, isThreeLine) {
                          return ListTile(
                            minVerticalPadding: 1,
                            shape: shape,
                            contentPadding: contentPadding,
                            tileColor: customColor?.containerColor,
                            onTap: () {},
                            leading: IconAvatar(
                              icon: Icons.timer_outlined,
                              clipPath: PathSvgShape.verySunny,
                            ),
                            title: Text('Срок действия сессии'),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Material(
                      color: Colors.transparent,
                      child: ListTileBuilder(
                        isEnd: true,
                        isStart: true,
                        builder: (shape, contentPadding, isThreeLine) {
                          return ListTile(
                            minVerticalPadding: 1,
                            shape: shape,

                            contentPadding: contentPadding,
                            tileColor: customColor?.containerColor,
                            onTap: () {
                              ErrorRequest.logOut();
                            },
                            leading: IconAvatar(icon: Icons.logout),
                            title: Text('profile_dialog.logout'.tr()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
