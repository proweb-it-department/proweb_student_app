import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_groups_item_widgets.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class MyGroupsWidgets extends StatefulWidget {
  final List<MyGroupsItem> groups;
  const MyGroupsWidgets({super.key, required this.groups});

  @override
  State<MyGroupsWidgets> createState() => _MyGroupsWidgetsState();
}

class _MyGroupsWidgetsState extends State<MyGroupsWidgets> {
  late final PageController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          color: customColors?.primaryBg,
          child: Ink(
            width: double.infinity,
            decoration: BoxDecoration(
              color: customColors?.containerColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
            padding: const EdgeInsets.only(
              left: 20,
              right: 10,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: [
                    ClipPath(
                      clipper: SvgClipper(PathSvgShape.bun),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        width: 20,
                        height: 20,
                        color: customColors?.primaryTextColor,
                      ),
                    ),
                    Text(
                      'education.my_groups'.tr(),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                if (widget.groups.isNotEmpty)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: customColors?.primaryBg,
                          disabledBackgroundColor: customColors?.primaryBg
                              .withAlpha(50),
                        ),
                        onPressed: _currentIndex == 0
                            ? null
                            : () {
                                _controller.previousPage(
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              },
                        icon: Icon(
                          Icons.chevron_left,
                          color: _currentIndex == 0
                              ? customColors?.primaryTextColorOp
                              : customColors?.primaryTextColor,
                        ),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: customColors?.primaryBg,
                          disabledBackgroundColor: customColors?.primaryBg
                              .withAlpha(50),
                        ),
                        onPressed: _currentIndex == (widget.groups.length - 1)
                            ? null
                            : () {
                                _controller.nextPage(
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              },
                        icon: Icon(
                          Icons.chevron_right,
                          color: _currentIndex == (widget.groups.length - 1)
                              ? customColors?.primaryTextColorOp
                              : customColors?.primaryTextColor,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: SizedBox(
            height: 210,
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                  child: Material(
                    color: Colors.transparent,
                    child: MyGroupsItemWidgets(myGroup: widget.groups[index]),
                  ),
                );
              },
              itemCount: widget.groups.length,
            ),
          ),
        ),
      ],
    );
  }
}
