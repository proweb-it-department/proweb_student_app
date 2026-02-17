import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/my_telegram_connected/my_telegram_connected_bloc.dart';
import 'package:proweb_student_app/bloc/offer_path/offer_path_bloc.dart';
import 'package:proweb_student_app/bloc/profile/profile_data_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/go_page.dart';
import 'package:proweb_student_app/interface/components/app_bar/widgets/language_settings.dart';
import 'package:proweb_student_app/interface/components/app_bar/widgets/theme_color_settings.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CustomColors? customColor = Theme.of(context).extension<CustomColors>();
    final profileBloc = context.watch<ProfileDataBloc>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              MyTelegramConnectedBloc()
                ..add(MyTelegramConnectedEvent.started()),
        ),
        BlocProvider(
          create: (context) => OfferPathBloc()..add(OfferPathEvent.started()),
        ),
      ],
      child: AnnotatedRegion(
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
              view: (profile, _) {
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
          body: ProfileBody(),
        ),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final profileBloc = context.watch<ProfileDataBloc>();
    final customColor = Theme.of(context).extension<CustomColors>();
    final profile = profileBloc.state.when(
      initial: () => null,
      view: (profile, _) => profile,
    );
    final birth = profile?.dateOfBirth;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              spacing: 2,
              children: [
                SizedBox(),
                if (profile != null)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.router.navigate(ProfileEditedRoute());
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Avatar(
                              profile: profile,
                              size: 90,
                              circular: 90,
                              fontSize: 40,
                            ),
                            Positioned(
                              top: -15,
                              right: -15,
                              child: IconButton.outlined(
                                onPressed: () {
                                  context.router.navigate(ProfileEditedRoute());
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.all(6),
                                  backgroundColor: customColor?.primaryBg,
                                  side: BorderSide(
                                    color:
                                        customColor?.primaryBg ??
                                        Colors.transparent,
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                  shape: const CircleBorder(),
                                ),
                                padding: EdgeInsets.zero,
                                icon: IconAvatar(icon: Icons.edit),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        sl<LocalData>().nameMyProfile(profile),
                        style: TextStyle(fontSize: 22),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (birth != null)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 10,
                          children: [
                            Opacity(
                              opacity:
                                  sl<LocalData>().getDateString(
                                        date: DateTime.parse(birth),
                                        seporator: DateSeporator.dotMd,
                                      ) ==
                                      sl<LocalData>().getDateString(
                                        date:
                                            DateTime.fromMillisecondsSinceEpoch(
                                              sl<LocalData>().getTime().toInt(),
                                            ),
                                        seporator: DateSeporator.dotMd,
                                      )
                                  ? 1
                                  : 0.7,
                              child: Icon(Icons.cake),
                            ),
                            Text(
                              sl<LocalData>().getDateString(
                                date: DateTime.parse(birth),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                SizedBox(height: 20),
                BlocBuilder<MyTelegramConnectedBloc, MyTelegramConnectedState>(
                  builder: (context, state) {
                    final data = state.when(
                      initial: () => null,
                      load: () => null,
                      complited: (tgUserList) => tgUserList,
                    );
                    final bloc = context.read<MyTelegramConnectedBloc>();
                    return Material(
                      color: Colors.transparent,
                      child: Column(
                        spacing: 2,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTileBuilder(
                            isStart: true,
                            isEnd: false,
                            builder: (shape, contentPadding, isThreeLine) {
                              return ListTile(
                                tileColor: customColor?.containerColor,
                                shape: shape,
                                contentPadding: contentPadding,
                                onTap: data == null
                                    ? null
                                    : () {
                                        context.router.navigate(
                                          TelegramRoute(bloc: bloc),
                                        );
                                      },
                                leading: IconAvatar(
                                  icon: Icons.send_time_extension_rounded,
                                ),
                                title: Text('profile.Telegram_Binding'.tr()),
                                trailing: data == null
                                    ? Md3CirculeIndicator(
                                        size: 25,
                                        center: false,
                                        background: customColor?.primaryBg,
                                        shapeColor: customColor?.additionalTwo,
                                      )
                                    : GoPage(
                                        decoration: BoxDecoration(
                                          color: customColor?.primaryBg,
                                        ),
                                        child: Icon(Icons.keyboard_arrow_right),
                                      ),

                                subtitle: data == null
                                    ? Text('profile.loaded'.tr())
                                    : Text(
                                        data.isNotEmpty
                                            ? 'profile.Linked'.tr(
                                                namedArgs: {
                                                  "count": data.length
                                                      .toString(),
                                                },
                                              )
                                            : 'profile.Account_is_not_linked'
                                                  .tr(),
                                      ),
                              );
                            },
                          ),
                          ListTileBuilder(
                            isStart: false,
                            isEnd: true,
                            builder: (shape, contentPadding, isThreeLine) {
                              return ListTile(
                                tileColor: customColor?.containerColor,
                                shape: shape,
                                contentPadding: contentPadding,
                                onTap: data == null
                                    ? null
                                    : () {
                                        context.router.push(EmailRoute());
                                      },
                                leading: IconAvatar(
                                  icon: Icons.alternate_email_rounded,
                                ),
                                title: Text('profile.Login_email'.tr()),
                                trailing: profile == null
                                    ? Md3CirculeIndicator(
                                        size: 25,
                                        center: false,
                                        background: customColor?.primaryBg,
                                        shapeColor: customColor?.additionalTwo,
                                      )
                                    : GoPage(
                                        decoration: BoxDecoration(
                                          color: customColor?.primaryBg,
                                        ),
                                        child: Icon(Icons.keyboard_arrow_right),
                                      ),

                                subtitle: profile == null
                                    ? Text('profile.loaded'.tr())
                                    : profile.email == null
                                    ? Text(
                                        'profile.The_mail_is_not_linked'.tr(),
                                      )
                                    : Text('${profile.email}'),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 0),
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
                          leading: IconAvatar(icon: Icons.slow_motion_video),
                          title: Text('profile_dialog.download_video'.tr()),
                          trailing: GoPage(
                            decoration: BoxDecoration(
                              color: customColor?.primaryBg,
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
                        leading: IconAvatar(icon: Icons.file_open_outlined),
                        title: Text('profile_dialog.download_files'.tr()),
                        trailing: GoPage(
                          decoration: BoxDecoration(
                            color: customColor?.primaryBg,
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
                        leading: IconAvatar(icon: Icons.data_usage),
                        title: Text('profile.Memory_usage'.tr()),
                        trailing: GoPage(
                          decoration: BoxDecoration(
                            color: customColor?.primaryBg,
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                        onTap: () {
                          context.router.navigate(MyActiveSessionsRoute());
                        },
                        leading: IconAvatar(icon: Icons.phonelink),
                        title: Text('profile.My_active_sessions'.tr()),
                        trailing: GoPage(
                          decoration: BoxDecoration(
                            color: customColor?.primaryBg,
                          ),
                          child: Icon(Icons.keyboard_arrow_right),
                        ),
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
                      return BlocBuilder<OfferPathBloc, OfferPathState>(
                        builder: (context, state) {
                          return switch (state) {
                            OfferPathInitial() => ListTile(
                              minVerticalPadding: 1,
                              shape: shape,
                              contentPadding: contentPadding,
                              tileColor: customColor?.containerColor,
                              onTap: null,
                              leading: IconAvatar(icon: Icons.article_outlined),
                              title: Text('profile.Public_offer'.tr()),
                              trailing: Md3CirculeIndicator(
                                size: 25,
                                center: false,
                                background: customColor?.primaryBg,
                                shapeColor: customColor?.additionalTwo,
                              ),
                            ),
                            OfferPathLoad() => ListTile(
                              minVerticalPadding: 1,
                              shape: shape,
                              contentPadding: contentPadding,
                              tileColor: customColor?.containerColor,
                              onTap: null,
                              leading: IconAvatar(icon: Icons.article_outlined),
                              title: Text('profile.Public_offer'.tr()),
                              trailing: Md3CirculeIndicator(
                                size: 25,
                                center: false,
                                background: customColor?.primaryBg,
                                shapeColor: customColor?.additionalTwo,
                              ),
                            ),
                            OfferPathComplited(offer: final offer) => ListTile(
                              minVerticalPadding: 1,
                              shape: shape,
                              contentPadding: contentPadding,
                              tileColor: customColor?.containerColor,
                              onTap: () {
                                final locale = context.locale.languageCode;
                                String? url;
                                if (locale == 'ru') {
                                  url = offer.offerpath?.offerRu?.offer?.url;
                                } else if (locale == 'uz') {
                                  url = offer.offerpath?.offerUz?.offer?.url;
                                }

                                if (url == null) {
                                  Fluttertoast.showToast(
                                    msg: 'profile.The_offer_is_unavailable'
                                        .tr(),
                                  );
                                  return;
                                }
                                context.router.navigate(
                                  PdfViewRoute(
                                    title: 'profile.Public_offer'.tr(),
                                    url: url,
                                  ),
                                );
                              },
                              leading: IconAvatar(icon: Icons.article_outlined),
                              title: Text('profile.Public_offer'.tr()),
                              trailing: GoPage(
                                decoration: BoxDecoration(
                                  color: customColor?.primaryBg,
                                ),
                                child: Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                          };
                        },
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
    );
  }
}
