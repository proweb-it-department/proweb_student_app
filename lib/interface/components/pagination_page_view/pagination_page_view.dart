import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class PaginationPageView extends StatelessWidget {
  final PageController controller;
  final int activePage;
  final int length;
  const PaginationPageView({super.key, required this.controller, required this.activePage, required this.length});

  @override
  Widget build(BuildContext context) {
    double maxHeight = 12;
    final customColors = Theme.of(context).extension<CustomColors>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 7,
        children: [
          GestureDetector(
            onTap: activePage == 0
                ? null
                : () {
                    controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeOutBack);
                  },
            child: Icon(Icons.arrow_back, color: activePage == 0 ? customColors?.additionalTwo : customColors?.primaryTextColor),
          ),
          Row(
            spacing: 7,
            children: List.generate(length, (index) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 150),
                width: activePage == index ? maxHeight : 10,
                height: activePage == index ? maxHeight : 10,
                decoration: BoxDecoration(color: activePage == index ? customColors?.primaryTextColor : customColors?.primaryTextColor.withAlpha(150), borderRadius: BorderRadius.circular(50)),
              );
            }),
          ),
          GestureDetector(
            onTap: activePage == (length - 1)
                ? null
                : () {
                    controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeOutBack);
                  },
            child: Icon(Icons.arrow_forward, color: activePage == (length - 1) ? customColors?.additionalTwo : customColors?.primaryTextColor),
          ),
        ],
      ),
    );
  }
}
