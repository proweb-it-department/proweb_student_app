import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:proweb_student_app/interface/components/more_nav_bar/more_nav_bar.dart';
import 'package:proweb_student_app/interface/pages/app_screen_widget.dart';
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
    final fabCoworking = context.watch<FabProvider>().fabCoworking;
    final fabFeedback = context.watch<FabProvider>().fabFeedback;
    return AnimatedSlide(
      duration: const Duration(milliseconds: 200),
      offset: isVisible ? Offset.zero : const Offset(0, 1),
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10 + pb, left: 15, right: 15),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: customTheme?.containerColor,
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home_outlined,
                        color: tabsRouter.activeIndex == 0
                            ? customTheme?.primaryBg
                            : customTheme?.primaryTextColor,
                      ),
                      onPressed: () {
                        tabsRouter.setActiveIndex(0);
                      },
                      selectedIcon: Icon(
                        Icons.home,
                        color: tabsRouter.activeIndex == 0
                            ? customTheme?.primaryBg
                            : customTheme?.primaryTextColor,
                      ),
                      isSelected: tabsRouter.activeIndex == 0,
                      padding: EdgeInsets.all(15),
                      tooltip: 'menu.home'.tr(),
                      style: IconButton.styleFrom(
                        backgroundColor: tabsRouter.activeIndex == 0
                            ? customTheme?.primaryTextColor
                            : Colors.transparent,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.desktop_windows_outlined,
                        color: tabsRouter.activeIndex == 1
                            ? customTheme?.primaryBg
                            : customTheme?.primaryTextColor,
                      ),
                      onPressed: () {
                        tabsRouter.setActiveIndex(1);
                      },
                      color: tabsRouter.activeIndex == 1
                          ? customTheme?.primaryBg
                          : customTheme?.primaryTextColor,
                      selectedIcon: Icon(
                        Icons.desktop_windows,
                        color: tabsRouter.activeIndex == 1
                            ? customTheme?.primaryBg
                            : customTheme?.primaryTextColor,
                      ),
                      isSelected: tabsRouter.activeIndex == 1,
                      padding: EdgeInsets.all(15),
                      tooltip: 'menu.coworking'.tr(),
                      style: IconButton.styleFrom(
                        backgroundColor: tabsRouter.activeIndex == 1
                            ? customTheme?.primaryTextColor
                            : Colors.transparent,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.forum_outlined,
                        color: tabsRouter.activeIndex == 2
                            ? customTheme?.primaryBg
                            : customTheme?.primaryTextColor,
                      ),
                      onPressed: () {
                        tabsRouter.setActiveIndex(2);
                      },
                      selectedIcon: Icon(
                        Icons.forum,
                        color: tabsRouter.activeIndex == 2
                            ? customTheme?.primaryBg
                            : customTheme?.primaryTextColor,
                      ),
                      isSelected: tabsRouter.activeIndex == 2,
                      padding: EdgeInsets.all(15),
                      tooltip: 'menu.feedback'.tr(),
                      style: IconButton.styleFrom(
                        backgroundColor: tabsRouter.activeIndex == 2
                            ? customTheme?.primaryTextColor
                            : Colors.transparent,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: tabsRouter.activeIndex > 2
                            ? customTheme?.primaryBg
                            : customTheme?.primaryTextColor,
                      ),
                      onPressed: () {
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
                      isSelected: tabsRouter.activeIndex > 2,
                      padding: EdgeInsets.all(15),
                      tooltip: 'menu.more'.tr(),
                      style: IconButton.styleFrom(
                        backgroundColor: tabsRouter.activeIndex > 2
                            ? customTheme?.primaryTextColor
                            : Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
              width: (fabCoworking ?? fabFeedback) != null ? 70 : 0,
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
