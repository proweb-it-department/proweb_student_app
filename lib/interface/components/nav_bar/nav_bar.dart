import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/profile/profile_data_bloc.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/pages/app_screen_widget.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final pb = MediaQuery.of(context).viewPadding.bottom;
    final customTheme = Theme.of(context).extension<CustomColors>();
    final navBar = context.watch<NavBarProvider>();
    final profileBloc = context.watch<ProfileDataBloc>();
    final profile = profileBloc.state.when(
      initial: () => null,
      view: (profile) => profile,
    );
    final isVisible = context
        .watch<ScrollStateProvider>()
        .isNavigationBarVisible;
    tabsRouter.addListener(() {
      context.read<NavBarProvider>().close();
    });
    return AnimatedSlide(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      offset: isVisible ? Offset.zero : const Offset(0, 1),
      child: GestureDetector(
        onTap: () {
          if (navBar.isOpen) {
            context.read<NavBarProvider>().close();
          }
        },
        child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: 300),
          height: navBar.isOpen ? MediaQuery.of(context).size.height : 92,
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10 + pb,
            left: 20,
            right: 20,
          ),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                customTheme?.primaryBg.withAlpha(navBar.isOpen ? 100 : 0) ??
                    Colors.transparent,
                customTheme?.primaryBg.withAlpha(navBar.isOpen ? 150 : 100) ??
                    Colors.transparent,
                customTheme?.primaryBg.withAlpha(navBar.isOpen ? 150 : 200) ??
                    Colors.transparent,
                customTheme?.primaryBg.withAlpha(navBar.isOpen ? 150 : 255) ??
                    Colors.transparent,
              ],
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: navBar.isOpen ? 385 : 55,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: customTheme?.containerColor,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color:
                      customTheme?.additionalTwo.withAlpha(50) ??
                      Colors.transparent,
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRect(
                    child: AnimatedAlign(
                      alignment: Alignment.topCenter,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      heightFactor: navBar.isOpen ? 1 : 0,
                      child: SizedBox(
                        height: 333,
                        child: AnimatedOpacity(
                          opacity: navBar.isOpen ? 1 : 0,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          child: Padding(
                            padding: EdgeInsetsGeometry.only(top: 3),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (profile != null)
                                  Material(
                                    color: Colors.transparent,
                                    child: Padding(
                                      padding: EdgeInsetsGeometry.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: ListTileBuilder(
                                        isEnd: true,
                                        isStart: true,
                                        builder:
                                            (
                                              shape,
                                              contentPadding,
                                              isThreeLine,
                                            ) {
                                              return ListTile(
                                                onTap: () {
                                                  context
                                                      .read<NavBarProvider>()
                                                      .close();
                                                  context.router.navigate(
                                                    ProfileRoute(),
                                                  );
                                                },
                                                shape: shape,
                                                tileColor:
                                                    customTheme?.primaryBg,
                                                minTileHeight: 30,
                                                contentPadding: contentPadding,
                                                leading: Avatar(
                                                  profile: profile,
                                                  size: 40,
                                                  circular: 40,
                                                ),
                                                title: Text(
                                                  sl<LocalData>().nameMyProfile(
                                                    profile,
                                                  ),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                subtitle: Text(
                                                  sl<LocalData>().getContryCode(
                                                    phone: profile.phone,
                                                  ),
                                                ),
                                                trailing: IconButton(
                                                  onPressed: () {
                                                    context
                                                        .read<NavBarProvider>()
                                                        .close();
                                                    context.router.navigate(
                                                      ProfileEditedRoute(),
                                                    );
                                                  },
                                                  style: IconButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                  ),
                                                  icon: IconAvatar(
                                                    icon: Icons.edit,
                                                  ),
                                                ),
                                              );
                                            },
                                      ),
                                    ),
                                  ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: EdgeInsetsGeometry.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: ExtraMenu(tabsRouter: tabsRouter),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsetsGeometry.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Padding(
                                      padding: EdgeInsetsGeometry.only(top: 10),
                                      child: ListTileBuilder(
                                        isStart: true,
                                        isEnd: false,
                                        builder:
                                            (
                                              shape,
                                              contentPadding,
                                              isThreeLine,
                                            ) {
                                              return ListTile(
                                                shape: shape,
                                                contentPadding: contentPadding,
                                                tileColor:
                                                    customTheme?.primaryBg,
                                                onTap: () {
                                                  context
                                                      .read<NavBarProvider>()
                                                      .close();
                                                  context.router.navigate(
                                                    DownloadVideosRoute(),
                                                  );
                                                },
                                                leading: IconAvatar(
                                                  icon: Icons.slow_motion_video,
                                                ),
                                                title: Text(
                                                  'profile_dialog.download_video'
                                                      .tr(),
                                                ),
                                                trailing: Ink(
                                                  decoration: BoxDecoration(
                                                    color:
                                                        customTheme?.primaryBg,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          80,
                                                        ),
                                                  ),
                                                  child: Icon(
                                                    Icons.keyboard_arrow_right,
                                                  ),
                                                ),
                                              );
                                            },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2),
                                Padding(
                                  padding: EdgeInsetsGeometry.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTileBuilder(
                                      isStart: false,
                                      isEnd: true,
                                      builder:
                                          (shape, contentPadding, isThreeLine) {
                                            return ListTile(
                                              shape: shape,
                                              contentPadding: contentPadding,
                                              tileColor: customTheme?.primaryBg,
                                              onTap: () {
                                                context
                                                    .read<NavBarProvider>()
                                                    .close();
                                                context.router.navigate(
                                                  DownloadFilesRoute(),
                                                );
                                              },
                                              leading: IconAvatar(
                                                icon: Icons.file_open_outlined,
                                              ),
                                              title: Text(
                                                'profile_dialog.download_files'
                                                    .tr(),
                                              ),
                                              trailing: Ink(
                                                decoration: BoxDecoration(
                                                  color: customTheme?.primaryBg,
                                                  borderRadius:
                                                      BorderRadius.circular(80),
                                                ),
                                                child: Icon(
                                                  Icons.keyboard_arrow_right,
                                                ),
                                              ),
                                            );
                                          },
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  height: 1,
                                  color: customTheme?.additionalTwo.withAlpha(
                                    150,
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    padding: EdgeInsets.only(
                      left: 3,
                      right: 3,
                      bottom: 3,
                      top: navBar.isOpen ? 0 : 3,
                    ),
                    child: SizedBox(
                      height: 47,
                      child: MainMenu(tabsRouter: tabsRouter),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  final TabsRouter tabsRouter;
  const MainMenu({super.key, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomColors>();
    final navBar = context.watch<NavBarProvider>();
    return Row(
      spacing: 2,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(40),
            child: Material(
              color: activeColor(tabsRouter.activeIndex == 0, customTheme),
              child: InkWell(
                onTap: () {
                  context.router.navigate(HomeMainRoute());
                },
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 15,
                    vertical: 4,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        tabsRouter.activeIndex == 0
                            ? Icons.home
                            : Icons.home_outlined,
                        size: 22,
                        color: activeTextColor(
                          tabsRouter.activeIndex == 0,
                          customTheme,
                        ),
                      ),
                      Text(
                        'menu.home'.tr(),
                        style: TextStyle(
                          fontSize: 12,
                          color: activeTextColor(
                            tabsRouter.activeIndex == 0,
                            customTheme,
                          ),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(40),
            child: Material(
              color: activeColor(tabsRouter.activeIndex == 1, customTheme),
              child: InkWell(
                onTap: () {
                  tabsRouter.setActiveIndex(1);
                },
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 15,
                    vertical: 4,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        tabsRouter.activeIndex == 1
                            ? Icons.desktop_windows
                            : Icons.desktop_windows_outlined,
                        size: 22,
                        color: activeTextColor(
                          tabsRouter.activeIndex == 1,
                          customTheme,
                        ),
                      ),
                      Text(
                        'menu.coworking'.tr(),
                        style: TextStyle(
                          fontSize: 12,
                          color: activeTextColor(
                            tabsRouter.activeIndex == 1,
                            customTheme,
                          ),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(40),
            child: Material(
              color: activeColor(tabsRouter.activeIndex == 2, customTheme),
              child: InkWell(
                onTap: () {
                  tabsRouter.setActiveIndex(2);
                },
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 15,
                    vertical: 4,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        tabsRouter.activeIndex == 2
                            ? Icons.forum
                            : Icons.forum_outlined,
                        size: 22,
                        color: activeTextColor(
                          tabsRouter.activeIndex == 2,
                          customTheme,
                        ),
                      ),
                      Text(
                        'menu.feedback'.tr(),
                        style: TextStyle(
                          fontSize: 12,
                          color: activeTextColor(
                            tabsRouter.activeIndex == 2,
                            customTheme,
                          ),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(40),
            child: Material(
              color: activeColor(tabsRouter.activeIndex > 2, customTheme),
              child: InkWell(
                onTap: () {
                  Future.microtask(() {
                    if (context.mounted) {
                      context.read<NavBarProvider>().toggle();
                    }
                  });
                },
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  switchInCurve: Curves.easeInOut,
                  switchOutCurve: Curves.easeInOut,
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                        final offsetAnimation = Tween<Offset>(
                          begin: const Offset(0.0, -1.0),
                          end: Offset.zero,
                        ).animate(animation);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: FadeTransition(
                            opacity: animation,
                            child: child,
                          ),
                        );
                      },
                  child: navBar.isOpen == false
                      ? Padding(
                          key: ValueKey('open_menu'),
                          padding: EdgeInsetsGeometry.symmetric(
                            horizontal: 15,
                            vertical: 4,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.arrow_circle_up_outlined,
                                size: 22,
                                color: activeTextColor(
                                  tabsRouter.activeIndex > 2,
                                  customTheme,
                                ),
                              ),
                              Text(
                                'menu.more'.tr(),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: activeTextColor(
                                    tabsRouter.activeIndex > 2,
                                    customTheme,
                                  ),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        )
                      : Padding(
                          key: ValueKey('close_menu'),
                          padding: EdgeInsetsGeometry.symmetric(
                            horizontal: 15,
                            vertical: 4,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.close,
                                size: 22,
                                color: activeTextColor(
                                  tabsRouter.activeIndex > 2,
                                  customTheme,
                                ),
                              ),
                              Text(
                                'Закрыть',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: activeTextColor(
                                    tabsRouter.activeIndex > 2,
                                    customTheme,
                                  ),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color? activeColor(bool isTrue, CustomColors? customTheme) {
    if (!isTrue) return Colors.transparent;
    return customTheme?.borderColor;
  }

  Color? activeTextColor(bool isTrue, CustomColors? customTheme) {
    if (!isTrue) return customTheme?.primaryTextColor;
    return customTheme?.primaryTextColor;
  }
}

class ExtraMenu extends StatelessWidget {
  final TabsRouter tabsRouter;
  const ExtraMenu({super.key, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomColors>();
    final padding = EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10);
    return Row(
      spacing: 7,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Material(
              color: activeColor(tabsRouter.activeIndex == 3, customTheme),
              child: InkWell(
                onTap: () {
                  tabsRouter.setActiveIndex(3);
                },
                child: Padding(
                  padding: padding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        tabsRouter.activeIndex == 3
                            ? Icons.emoji_events
                            : Icons.emoji_events_outlined,
                        size: 22,
                        color: activeTextColor(
                          tabsRouter.activeIndex == 3,
                          customTheme,
                        ),
                      ),
                      Text(
                        'menu.rating'.tr(),
                        style: TextStyle(
                          fontSize: 12,
                          color: activeTextColor(
                            tabsRouter.activeIndex == 3,
                            customTheme,
                          ),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Material(
              color: activeColor(tabsRouter.activeIndex == 4, customTheme),
              child: InkWell(
                onTap: () {
                  tabsRouter.setActiveIndex(4);
                },
                child: Padding(
                  padding: padding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        tabsRouter.activeIndex == 4
                            ? Icons.shopping_cart
                            : Icons.shopping_cart_outlined,
                        size: 22,
                        color: activeTextColor(
                          tabsRouter.activeIndex == 4,
                          customTheme,
                        ),
                      ),
                      Text(
                        'menu.shop'.tr(),
                        style: TextStyle(
                          fontSize: 12,
                          color: activeTextColor(
                            tabsRouter.activeIndex == 4,
                            customTheme,
                          ),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Material(
              color: activeColor(tabsRouter.activeIndex == 5, customTheme),
              child: InkWell(
                onTap: () {
                  tabsRouter.setActiveIndex(5);
                },
                child: Padding(
                  padding: padding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        tabsRouter.activeIndex == 5
                            ? Icons.local_parking
                            : Icons.local_parking_outlined,
                        size: 22,
                        color: activeTextColor(
                          tabsRouter.activeIndex == 5,
                          customTheme,
                        ),
                      ),
                      Text(
                        'menu.proweb'.tr(),
                        style: TextStyle(
                          fontSize: 12,
                          color: activeTextColor(
                            tabsRouter.activeIndex == 5,
                            customTheme,
                          ),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color? activeColor(bool isTrue, CustomColors? customTheme) {
    if (!isTrue) return customTheme?.additionalTwo.withAlpha(50);
    return customTheme?.additionalTwo.withAlpha(200);
  }

  Color? activeTextColor(bool isTrue, CustomColors? customTheme) {
    if (!isTrue) return customTheme?.primaryTextColor;
    return customTheme?.primaryTextColor;
  }
}

class NavBarProvider extends ChangeNotifier {
  bool _isOpen = false;

  bool get isOpen => _isOpen;

  void open() {
    if (_isOpen) return;
    _isOpen = true;
    notifyListeners();
  }

  void close() {
    if (!_isOpen) return;
    _isOpen = false;
    notifyListeners();
  }

  void toggle() {
    _isOpen = !_isOpen;
    notifyListeners();
  }
}
