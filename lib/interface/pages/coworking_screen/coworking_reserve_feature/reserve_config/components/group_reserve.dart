import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/interface/components/premium_container/premium_container.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/dialogs/dialog_my_group_select.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/provider/coworking_provider.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_groups_item_widgets.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class GroupReserve extends StatelessWidget {
  const GroupReserve({super.key});

  @override
  Widget build(BuildContext context) {
    final provide = context.watch<CoworkingProvider>();
    final customColors = Theme.of(context).extension<CustomColors>();
    return GestureDetector(
      onTap: () async {
        final myGroupSelect = await showDialog<MyGroupsItem>(
          context: context,
          builder: (context) {
            return DialogMyGroupSelect();
          },
        );
        if (myGroupSelect != null && context.mounted) {
          context.read<CoworkingProvider>().setMyGroup(myGroupSelect);
        }
      },
      child: Container(
        color: customColors?.containerColor,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 7,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: provide.myGroup == null
                  ? Icon(Icons.group)
                  : provide.myGroup?.group?.course?.icon != null &&
                        provide.myGroup?.group?.course?.color != null
                  ? CourseAvatar(
                      icon: provide.myGroup!.group!.course!.icon!,
                      color: HexColor(provide.myGroup!.group!.course!.color!),
                    )
                  : Icon(Icons.group),
              title: provide.myGroup == null
                  ? Text('coworing_mobile.No_group_selected'.tr())
                  : Text(
                      provide.myGroup?.group?.course?.name ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
              subtitle: provide.myGroup == null
                  ? null
                  : Text('#${provide.myGroup?.group?.id ?? 0}'),
              trailing: provide.myGroup?.hasPackage == true
                  ? PremiumContainer(
                      text: 'transactions_balance.tarif_transaction'.tr(),
                    )
                  : null,
            ),
            if (provide.myGroup != null)
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Opacity(
                  opacity: 0.7,
                  child: Text(
                    provide.myGroup?.hasPackage == true
                        ? 'coworing_mobile.Visiting_time_up_to_4_hours'.tr()
                        : 'coworing_mobile.Visiting_time_up_to_2_hours'.tr(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
