import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/room/room.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class DialogRoomsSelect extends StatefulWidget {
  final List<Room> rooms;
  const DialogRoomsSelect({super.key, required this.rooms});

  @override
  State<DialogRoomsSelect> createState() => _DialogRoomsSelectState();
}

class _DialogRoomsSelectState extends State<DialogRoomsSelect> {
  Room? _room;

  void setRoom(Room room) {
    setState(() {
      _room = room;
    });
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Dialog(
      insetPadding: EdgeInsets.all(12),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 1,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      color: customColors?.primaryTextColor,
                    ),
                  ),
                  Center(
                    child: Text(
                      'coworing_mobile.Coworking_spaces'.tr(),
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (widget.rooms.isEmpty)
              NoData(
                text: 'coworing_mobile.There_are_no_coworking_offices'.tr(),
                icon: Icons.desktop_access_disabled,
              )
            else
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: widget.rooms.map((e) {
                    return GestureDetector(
                      onTap: () {
                        setRoom(e);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: customColors?.containerColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color:
                                customColors?.borderColors ??
                                Colors.transparent,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ListTile(
                              leading: Icon(Icons.door_back_door),
                              title: Text('coworing_mobile.Cabinet'.tr()),
                              subtitle: Text('#${e.name ?? ''}'),
                              trailing: Checkbox(
                                value: e.id == _room?.id,
                                onChanged: null,
                              ),
                            ),
                            Divider(height: 1),
                            ListTile(
                              title: Text(
                                sl<LocalData>().removeHtmlTags(
                                  e.description ?? '',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            SizedBox(height: 10),
            if (widget.rooms.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    disabledBackgroundColor: customColors?.additionalTwo,
                  ),
                  onPressed: _room != null
                      ? () {
                          Navigator.of(context).pop(_room);
                        }
                      : null,
                  child: Text(
                    'global_data.Choose'.tr(),
                    style: TextStyle(
                      color: _room != null
                          ? customColors?.primaryTextColor
                          : customColors?.additionalThree,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
