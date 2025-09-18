import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
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
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(
        color: customColors?.borderColor ?? Colors.transparent,
        width: 1,
      ),
    );
    final links = widget.attachFile
        .where((element) => element.link is String)
        .toList();
    bool isLinks = false;
    if (links.isNotEmpty) isLinks = true;
    return ExpansionTile(
      backgroundColor: customColors?.containerColor,
      collapsedBackgroundColor: customColors?.containerColor,
      collapsedShape: shape,
      shape: shape,
      leading: Icon(Icons.link),
      initiallyExpanded: isLinks,
      title: Text('group_homework.link_to_work'.tr()),
      children: [
        Divider(height: 1),
        if (!isLinks)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NoData(
              text: 'group_homework.link_to_work_not_found'.tr(),
              icon: Icons.link,
              color: customColors?.primaryBg,
            ),
          )
        else
          ...List.generate(links.length, (index) {
            final item = links[index];
            return ListTile(
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
          }),
      ],
    );
  }

  Future<void> _launchUrl(String? url) async {
    await sl<LocalData>().openLink(url: url);
  }
}
