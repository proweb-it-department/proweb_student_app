import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/course_detail/course_detail_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/course_model/course_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:talker_logger/talker_logger.dart';

@RoutePage()
class CourseMainPageScreen extends StatelessWidget {
  final int id;
  const CourseMainPageScreen({
    super.key,
    @PathParam.inherit('id') required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<CourseDetailBloc>();
    final state = bloc.state;
    return switch (state) {
      CourseDetailInitial() => ScafoldBase(child: Md3CirculeIndicator()),
      CourseDetailError() => ScafoldBase(child: Center(child: ErrorLoad())),
      CourseDetailComplited(course: final course) => CourseScafold(
        course: course,
      ),
    };
  }
}

class ScafoldBase extends StatelessWidget {
  final Widget child;
  const ScafoldBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('profile.loaded'.tr())),
      body: child,
    );
  }
}

class CourseScafold extends StatelessWidget {
  final CourseModel course;
  const CourseScafold({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final colorString = course.color;
    TalkerLogger().log(customColors?.brightness);
    Color color =
        (colorString == null
            ? customColors?.primaryBg
            : HexColor(colorString)) ??
        Colors.black;
    color = color.normalizeForTheme(
      brightness: customColors?.brightness ?? Brightness.dark,
    );
    final brightness = ThemeData.estimateBrightnessForColor(color);
    final Color colorText = brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
    return Scaffold(
      backgroundColor: color,
      body: CourseDetailBody(
        course: course,
        color: color,
        colorText: colorText,
      ),
    );
  }
}

class CourseDetailBody extends StatelessWidget {
  final CourseModel course;
  final Color color;
  final Color colorText;
  const CourseDetailBody({
    super.key,
    required this.course,
    required this.color,
    required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    final category = course.categories;
    return CustomScrollView(
      slivers: [
        CourseAppBar(course: course, color: color, colorText: colorText),
        if (category != null && category.isNotEmpty == true)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runAlignment: WrapAlignment.center,
                  alignment: WrapAlignment.center,
                  spacing: 5,
                  children: category.map((e) {
                    final colorHex = e.color ?? '#ffffff';
                    final categoryColor = HexColor(colorHex);
                    final brightness = ThemeData.estimateBrightnessForColor(
                      categoryColor,
                    );
                    final Color colorText = brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black;
                    return IntrinsicWidth(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: categoryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          e.name ?? '- - -',
                          style: TextStyle(color: colorText),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsGeometry.only(
              top: 10,
              left: 16,
              right: 16,
              bottom: 40,
            ),
            child: Text(
              sl<LocalData>().removeHtmlTags(course.description ?? '- - -'),
              style: TextStyle(fontSize: 18, color: colorText),
            ),
          ),
        ),
      ],
    );
  }
}

class CourseAppBar extends StatelessWidget {
  final CourseModel course;
  final Color color;
  final Color colorText;
  const CourseAppBar({
    super.key,
    required this.course,
    required this.color,
    required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    final expandedHeight = MediaQuery.of(context).size.height * 0.65;
    final customColors = Theme.of(context).extension<CustomColors>();
    final paddingTop = MediaQuery.of(context).viewPadding.top;
    final banner = course.adsBanner;
    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      shadowColor: customColors?.containerColor,
      expandedHeight: expandedHeight,
      backgroundColor: color,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final percent =
              (constraints.maxHeight - kToolbarHeight) /
              (expandedHeight - kToolbarHeight);
          final fade = 0.1;
          final bgColor = Color.lerp(color, Colors.transparent, 0);
          double opacity = percent > 1 ? 1 : percent;
          if (opacity < 0) {
            opacity = 0;
          }
          return Container(
            color: bgColor,
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (banner != null)
                  Opacity(
                    opacity: (percent - fade) < 0
                        ? 0
                        : (percent - fade) > 1
                        ? 1
                        : (percent - fade),
                    child: CachedNetworkImage(
                      imageUrl: banner,
                      fit: BoxFit.cover,
                      memCacheWidth: 800,
                      fadeInDuration: Duration.zero,
                    ),
                  )
                else
                  SizedBox(),
                if (percent >= fade)
                  Container(
                    padding: EdgeInsets.only(top: paddingTop),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.center,
                        colors: [color, Colors.transparent],
                      ),
                    ),
                  ),
                if (percent >= fade)
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.3,
                        left: 20,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [color, Colors.transparent],
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Padding(
                            padding: EdgeInsetsGeometry.only(bottom: 20),
                            child: Text(
                              course.name ?? '- - -',
                              style: TextStyle(
                                color: colorText,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Positioned(
                  left: 72,
                  bottom: 16,
                  right: 10,
                  child: Opacity(
                    opacity: percent < fade ? 1.0 : 0.0,
                    child: Text(
                      course.name ?? '- - -',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: colorText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

extension ThemeAwareColor on Color {
  Color normalizeForTheme({
    required Brightness brightness,
    double darkBase = 0.55,
    double darkExtra = 0.75,
    double lightBase = 0.08,
    double lightExtra = 0.08,
    double darkTargetMaxL = 0.75,
    double lightTargetMinL = 0.08,
  }) {
    final hsl = HSLColor.fromColor(this);
    final l = hsl.lightness;
    final s = hsl.saturation;

    double clamp01(double v) => v.clamp(0.0, 1.0);

    if (brightness == Brightness.dark) {
      final lightProblem = clamp01(
        (l - darkTargetMaxL) / (1.0 - darkTargetMaxL),
      );
      final neonProblem = clamp01((s - 0.60) / 0.40);

      final k = clamp01(0.75 * lightProblem + 0.25 * neonProblem);

      final amount = clamp01(darkBase + darkExtra * k);

      final newL = clamp01(l * (1.0 - amount));

      final newS = clamp01(s * (1.0 - 0.20 * k));

      return hsl.withLightness(newL).withSaturation(newS).toColor();
    } else {
      final darkProblem = clamp01((lightTargetMinL - l) / lightTargetMinL);
      final k = darkProblem;

      final amount = clamp01(lightBase + lightExtra * k);

      final newL = clamp01(l + (1.0 - l) * amount);

      final newS = clamp01(s + 0.08 * k);

      return hsl.withLightness(newL).withSaturation(newS).toColor();
    }
  }
}
