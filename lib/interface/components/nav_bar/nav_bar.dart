import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:proweb_student_app/interface/components/more_nav_bar/more_nav_bar.dart';
import 'package:proweb_student_app/interface/pages/app_screen_widget.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final pb = MediaQuery.of(context).viewPadding.bottom;
    final tabsRouter = AutoTabsRouter.of(context);
    final customTheme = Theme.of(context).extension<CustomColors>();
    final isVisible = context
        .watch<ScrollStateProvider>()
        .isNavigationBarVisible;
    return AnimatedSlide(
      duration: const Duration(milliseconds: 200),
      offset: isVisible ? Offset.zero : const Offset(0, 1),
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 20 + pb, left: 20, right: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              customTheme?.primaryBg.withAlpha(0) ?? Colors.transparent,
              customTheme?.primaryBg.withAlpha(200) ?? Colors.transparent,
              customTheme?.primaryBg ?? Colors.transparent,
            ],
          ),
        ),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            color: customTheme?.containerColor,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color:
                  customTheme?.additionalTwo.withAlpha(50) ??
                  Colors.transparent,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 2,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(40),
                    child: Material(
                      color: activeColor(
                        tabsRouter.activeIndex == 0,
                        customTheme,
                      ),
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
                      color: activeColor(
                        tabsRouter.activeIndex == 1,
                        customTheme,
                      ),
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
                      color: activeColor(
                        tabsRouter.activeIndex == 2,
                        customTheme,
                      ),
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
                      color: activeColor(
                        tabsRouter.activeIndex > 2,
                        customTheme,
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<int>(
                            context: context,
                            builder: (context) {
                              return MoreBottomNavBar(tabsRouter: tabsRouter);
                            },
                          ).then((data) async {
                            if (data != null) {
                              await Future.delayed(Duration(milliseconds: 200));
                              tabsRouter.setActiveIndex(data);
                            }
                          });
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
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
