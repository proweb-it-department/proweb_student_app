import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/models/course_model/course_model.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class CourseCard extends StatelessWidget {
  final CourseModel course;
  final Function()? onTap;
  const CourseCard({super.key, required this.course, this.onTap});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: customColors?.containerColor,
        type: MaterialType.button,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: customColors?.borderColors ?? Colors.transparent,
                width: 2,
              ),
              image: DecorationImage(
                image: CachedNetworkImageProvider(course.adsBanner ?? ''),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 0,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'courses.course_card'.tr(),
                  style: TextStyle(color: HexColor(course.color ?? '#ffffff')),
                ),
                Text(
                  course.name ?? '- - -',
                  style: TextStyle(
                    color: HexColor('#ffffff'),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
