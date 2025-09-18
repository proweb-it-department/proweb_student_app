import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class BranchGroup extends StatelessWidget {
  final Cabinet room;
  const BranchGroup({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();

    return Container(
      decoration: BoxDecoration(
        color: customColor?.containerColor,
        border: Border.all(color: customColor!.borderColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (room.branch?.name != null)
            ExpansionTile(
              leading: Icon(Icons.home_work_outlined),
              subtitle: Text('group.branch'.tr()),
              title: Text(
                room.branch!.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: FlutterMap(
                      options: MapOptions(
                        initialCenter: LatLng(
                          double.parse(room.branch!.latitude!),
                          double.parse(room.branch!.longitude!),
                        ), // Center the map over London
                        initialZoom: 14,
                      ),

                      children: [
                        TileLayer(
                          // Display map tiles from any source
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
                          userAgentPackageName: 'com.example.app',
                          // And many more recommended properties!
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(
                                double.parse(room.branch!.latitude!),
                                double.parse(room.branch!.longitude!),
                              ),
                              child: Icon(
                                Icons.location_on,
                                color: customColor.errorFill,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          if (room.branch?.name != null)
            Divider(endIndent: 0, indent: 0, thickness: 0, height: 1),

          ListTile(
            leading: Icon(Icons.door_front_door_outlined),
            subtitle: Text('group.room'.tr()),
            title: Text(
              room.name!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
