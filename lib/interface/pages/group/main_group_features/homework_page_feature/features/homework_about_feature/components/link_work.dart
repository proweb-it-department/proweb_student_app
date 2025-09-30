import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/homework_group/homework_group.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class LinksWork extends StatefulWidget {
  final List<AttachedData> attachFile;
  const LinksWork({super.key, required this.attachFile});

  @override
  State<LinksWork> createState() => _LinksWorkState();
}

class _LinksWorkState extends State<LinksWork> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final links = widget.attachFile
        .where((element) => element.link is String)
        .toList();
    bool isLinks = false;
    if (links.isNotEmpty) isLinks = true;
    return Container(
      decoration: BoxDecoration(
        color: customColors?.primaryBg,
        borderRadius: BorderRadius.circular(22),
      ),
      child: ListView(
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),

        children: [
          Text('group_homework.link_to_work'.tr()),
          SizedBox(height: 10),
          if (!isLinks)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: NoData(
                text: 'group_homework.link_to_work_not_found'.tr(),
                icon: Icons.link,
                color: customColors?.containerColor,
              ),
            )
          else
            ...List.generate(links.length, (index) {
              final item = links[index];
              return Material(
                color: Colors.transparent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTileBuilder(
                      isStart: index == 0,
                      isEnd: (links.length - 1) == index,

                      builder: (shape, contentPadding, isThreeLine) {
                        return ListTile(
                          shape: shape,
                          contentPadding: contentPadding,
                          tileColor: customColors?.containerColor,
                          leading: Icon(Icons.link),
                          title: Text(
                            item.displayName ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: IconButton(
                            onPressed: () => _launchUrl(item.link),
                            icon: Icon(Icons.open_in_new),
                          ),
                        );
                      },
                    ),
                    if ((links.length - 1) != index) SizedBox(height: 2),
                  ],
                ),
              );
            }),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String? url) async {
    await sl<LocalData>().openLink(url: url);
  }
}
