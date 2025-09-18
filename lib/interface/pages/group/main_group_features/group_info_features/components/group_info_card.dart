import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class GroupInfoCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title, subtitle;
  const GroupInfoCard({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    return Container(
      decoration: BoxDecoration(
        color: customColor?.containerColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        // border: Border.all(color: customColor!.borderColor),
      ),
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color.withAlpha(30),
            child: Icon(icon, size: 25, color: color),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 5),
          Text(subtitle, style: TextStyle(color: customColor?.additionalTwo)),
        ],
      ),
    );
  }
}
