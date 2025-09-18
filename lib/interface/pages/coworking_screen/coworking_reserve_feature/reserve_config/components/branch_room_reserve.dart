import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/dialogs/dialog_rooms_select.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/provider/coworking_provider.dart';
import 'package:proweb_student_app/models/branche/branche.dart';
import 'package:proweb_student_app/models/room/room.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class BranchRoomReserve extends StatelessWidget {
  final List<Branche> branch;
  final List<Room> room;
  const BranchRoomReserve({
    super.key,
    required this.branch,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    final provide = context.watch<CoworkingProvider>();
    final customColors = Theme.of(context).extension<CustomColors>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 12,
        children: List.generate(branch.length, (index) {
          final branchItem = branch.elementAt(index);
          return GestureDetector(
            onTap: () async {
              final roomSelect = await showDialog<Room>(
                context: context,
                builder: (context) {
                  final rooms = room
                      .where((element) => element.branchId == branchItem.id)
                      .toList();
                  return DialogRoomsSelect(rooms: rooms);
                },
              );
              if (roomSelect != null) {
                if (context.mounted) {
                  context.read<CoworkingProvider>().setRoom(roomSelect);
                }
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: customColors?.containerColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: customColors?.borderColors ?? Colors.transparent,
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(branchItem.name ?? ''),
                    trailing: Checkbox(
                      value: provide.room?.branchId == branchItem.id,
                      onChanged: null,
                    ),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.door_back_door),
                    title: Text('coworing_mobile.Number_of_rooms'.tr()),
                    trailing: Text(
                      '${branchItem.cwCount ?? 0}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
