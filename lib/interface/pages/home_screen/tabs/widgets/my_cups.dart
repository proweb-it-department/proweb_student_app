import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/cups/cups_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/go_page.dart';
import 'package:proweb_student_app/models/cups/cups.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:talker_logger/talker_logger.dart';

class MyCups extends StatelessWidget {
  const MyCups({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Material(
      color: customColors?.primaryBg,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            ClipPath(
              clipper: SvgClipper(PathSvgShape.burst),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                width: 20,
                height: 20,
                color: customColors?.primaryTextColor,
              ),
            ),
            Text(
              'Кубки',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            BlocBuilder<CupsBloc, CupsState>(
              builder: (context, state) {
                final List<Cups> cups = switch (state) {
                  CupsStateLoad() => [],
                  CupsStateComplited(cups: final cups) => cups.list,
                };
                return Material(
                  borderOnForeground: true,
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    onTap: cups.isEmpty ? null : () {},
                    borderRadius: BorderRadius.circular(16),
                    child: Ink(
                      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: customColors?.containerColor,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 45 + 22 + 22 + 22,
                            height: 45,
                            child: Stack(
                              children: List.generate(4, (index) {
                                final reversedIndex = 4 - 1 - index;
                                final item = cups.reversed
                                    .toList()
                                    .elementAtOrNull(index);
                                return Positioned(
                                  left: reversedIndex * 22,
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: customColors?.primaryBg,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color:
                                            customColors?.borderColors ??
                                            Colors.transparent,
                                        width: 2,
                                      ),
                                      boxShadow: reversedIndex == 3
                                          ? null
                                          : [
                                              BoxShadow(
                                                color: Colors.black.withAlpha(
                                                  100,
                                                ),
                                                blurRadius: 5,
                                                offset: Offset(10, 0),
                                                spreadRadius: -3,
                                              ),
                                            ],
                                    ),
                                    child: item != null && item.icon != null
                                        ? CachedNetworkImage(
                                            imageUrl: item.icon!,
                                            width: double.infinity,
                                            height: double.infinity,
                                          )
                                        : null,
                                  ),
                                );
                              }),
                            ),
                          ),
                          SizedBox(width: 10),
                          switch (state) {
                            CupsStateLoad() => Container(
                              width: 45,
                              height: 45,
                              alignment: Alignment.center,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                constraints: BoxConstraints(
                                  minHeight: 20,
                                  maxHeight: 20,
                                  maxWidth: 20,
                                  minWidth: 20,
                                ),
                              ),
                            ),
                            CupsStateComplited(cups: _) => GoPage(
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: customColors?.primaryBg,
                                ),
                                child: Icon(Icons.chevron_right_rounded),
                              ),
                            ),
                          },
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
