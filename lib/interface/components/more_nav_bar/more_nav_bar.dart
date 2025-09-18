import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class MoreBottomNavBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  const MoreBottomNavBar({super.key, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    final customTheme = Theme.of(context).extension<CustomColors>();
    return Stack(
      children: [
        GridView.count(
          primary: false,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 4,
          shrinkWrap: true,
          childAspectRatio: 4 / 3,
          padding: EdgeInsets.only(bottom: bottom + 10),
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context, 3);
                },
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                splashColor: Colors.transparent,
                child: Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: tabsRouter.activeIndex == 3 ? customTheme?.primaryTextColor : null, borderRadius: BorderRadius.all(Radius.circular(50))),
                      constraints: BoxConstraints(minWidth: 70),
                      child: Icon(Icons.emoji_events_outlined, color: tabsRouter.activeIndex == 3 ? customTheme?.primaryBg : null),
                    ),
                    Text('menu.rating'.tr(), overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context, 4);
                },
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                splashColor: Colors.transparent,
                child: Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: tabsRouter.activeIndex == 4 ? customTheme?.primaryTextColor : null, borderRadius: BorderRadius.all(Radius.circular(50))),
                      constraints: BoxConstraints(minWidth: 70),
                      child: Icon(Icons.shopping_cart_outlined, color: tabsRouter.activeIndex == 4 ? customTheme?.primaryBg : null),
                    ),
                    Text('menu.shop'.tr(), overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context, 5);
                },
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                splashColor: Colors.transparent,
                child: Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: tabsRouter.activeIndex == 5 ? customTheme?.primaryTextColor : null, borderRadius: BorderRadius.all(Radius.circular(50))),
                      constraints: BoxConstraints(minWidth: 70),
                      child: Icon(Icons.local_parking, color: tabsRouter.activeIndex == 5 ? customTheme?.primaryBg : null),
                    ),
                    Text('menu.proweb'.tr(), overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
