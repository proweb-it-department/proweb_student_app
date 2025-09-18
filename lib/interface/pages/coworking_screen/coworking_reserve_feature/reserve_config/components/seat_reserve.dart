import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/dialogs/dialog_seats_select.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/provider/coworking_provider.dart';
import 'package:proweb_student_app/models/seat_item/seat_item.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class SeatReserve extends StatelessWidget {
  const SeatReserve({super.key});

  @override
  Widget build(BuildContext context) {
    final provide = context.watch<CoworkingProvider>();
    final customColors = Theme.of(context).extension<CustomColors>();
    return GestureDetector(
      onTap: () async {
        final id = provide.room?.id;
        if (id == null || provide.myGroup == null) {
          if (id == null && provide.myGroup == null) {
            Fluttertoast.showToast(
              msg:
                  'coworing_mobile.First,_choose_a_branch,_office_and_group_from_which_you_will_come_to_the_coworking_space'
                      .tr(),
            );
          } else if (provide.myGroup == null) {
            Fluttertoast.showToast(
              msg:
                  'coworing_mobile.Select_the_group_from_which_you_will_come_to_the_coworking_space'
                      .tr(),
            );
          } else if (id == null) {
            Fluttertoast.showToast(
              msg: 'coworing_mobile.Choose_a_branch_and_coworking_office'.tr(),
            );
          }
          return;
        }
        final seat = await showDialog<SeatItem>(
          context: context,
          builder: (context) {
            return DialogSeatsSelect(roomId: id);
          },
        );
        if (seat != null && context.mounted) {
          context.read<CoworkingProvider>().setSeat(seat);
        }
      },
      child: Container(
        color: customColors?.containerColor,
        padding: EdgeInsets.all(10),
        child: ListTile(
          leading: Icon(
            provide.seat?.type == 'standard' || provide.seat?.type == 'advanced'
                ? Icons.desktop_windows_outlined
                : Icons.chair,
          ),
          title: provide.seat == null
              ? Text('coworing_mobile.Seat_not_selected'.tr())
              : Text('#${provide.seat?.number ?? ''}'),
          subtitle: provide.seat == null
              ? null
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: customColors?.primaryBg,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '• ${provide.seat?.type == 'standard'
                            ? 'coworing_mobile.Standard_PC'.tr()
                            : provide.seat?.type == 'advanced'
                            ? 'coworing_mobile.Advanced_PC'.tr()
                            : 'coworing_mobile.Place_for_laptop'.tr()}',
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
