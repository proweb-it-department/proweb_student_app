import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/bloc/my_statistic/my_statistic_bloc.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/homework_info_item/homework_info_item.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;

class MyStatistcsWidget extends StatelessWidget {
  const MyStatistcsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(width: 2);
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      color: customColors?.primaryBg,
      child: BlocBuilder<MyStatisticBloc, MyStatisticState>(
        builder: (context, state) {
          return ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 0),
            scrollDirection: Axis.horizontal,
            children: [
              MyScoreStatistic(
                studentMiddleRating: state.data.studentMiddleRating ?? '5',
                homeworkNotSolvedCount: state.data.homeworkNotSolvedCount ?? 0,
                homeworkSolvedCount: state.data.homeworkSolvedCount ?? 0,
              ),
              gap,
              MyAttendanceStatistic(
                lessonNotVisitedCount: state.data.lessonNotVisitedCount ?? 0,
                lessonVisitedCount: state.data.lessonVisitedCount ?? 0,
              ),
              gap,
              MyWatchedStatistic(
                lessonWatchedCount: state.data.lessonWatchedCount ?? 0,
                lessonNotWatchedCount: state.data.lessonNotWatchedCount ?? 0,
              ),
              gap,
              MyRankingStatistic(
                totalScore: state.position.totalScore ?? 0,
                position: state.position.position ?? 0,
              ),
              gap,
              MyCoworkingStatistic(
                coworkingVisitedCount: state.data.coworkingVisitedCount ?? 0,
                coworkingVisitedWithoutReserveCount:
                    state.data.coworkingVisitedWithoutReserveCount ?? 0,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MyAttendanceStatistic extends StatelessWidget {
  final int lessonVisitedCount;
  final int lessonNotVisitedCount;
  const MyAttendanceStatistic({
    super.key,
    required this.lessonVisitedCount,
    required this.lessonNotVisitedCount,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final visitedAll = lessonVisitedCount + lessonNotVisitedCount;
    final a = (lessonVisitedCount / visitedAll * 100);
    final visitedPersent = (a.isNaN ? 0 : a).round();
    final notVisitedPersent = 100 - visitedPersent;
    final double size = 280;
    final double horizontal = 15;
    final double gap = 5;
    final persent = size - horizontal - horizontal - gap;
    final visitePersent = persent * (visitedPersent / 100);
    final noVisitePersent = persent * (notVisitedPersent / 100);
    return Container(
      width: 400,
      padding: EdgeInsets.only(
        top: 20,
        left: horizontal,
        right: horizontal,
        bottom: 10,
      ),
      height: double.infinity,
      decoration: BoxDecoration(color: customColors?.containerColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          TitleHeader('Посещаемость'),
          Expanded(
            child: Row(
              spacing: 15,
              children: [
                Row(
                  spacing: gap,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      height: double.infinity,
                      width: visitePersent,
                      decoration: BoxDecoration(
                        color: HexColor('#4971FE'),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: visitePersent <= 50
                          ? null
                          : AnimatedFlipCounter(
                              value: visitedPersent,
                              fractionDigits: 0,
                              suffix: "%",
                              duration: Duration(milliseconds: 500),
                              textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      height: double.infinity,
                      width: noVisitePersent,

                      child: DiagonalStripesBox(
                        borderRadius: BorderRadius.circular(22),
                        color1: customColors?.primaryBg ?? Colors.transparent,
                        color2:
                            customColors?.containerColor ?? Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  customColors?.primaryBg ?? Colors.transparent,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          width: double.infinity,
                          height: double.infinity,
                          child: noVisitePersent <= 50
                              ? null
                              : AnimatedFlipCounter(
                                  value: notVisitedPersent,
                                  fractionDigits: 0,
                                  suffix: "%",
                                  duration: Duration(milliseconds: 500),
                                  textStyle: TextStyle(
                                    fontSize: 25,
                                    color: customColors?.primaryTextColor,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  spacing: 15,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 7,
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: HexColor('##4971FE'),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Посещено'),
                            Text(
                              '$lessonVisitedCount уроков',
                              style: TextStyle(
                                color: customColors?.primaryTextColor.withAlpha(
                                  150,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 7,
                      children: [
                        DiagonalStripesBox(
                          borderRadius: BorderRadius.circular(4),
                          size: 2,
                          color1: customColors?.primaryBg ?? Colors.transparent,
                          color2:
                              customColors?.containerColor ??
                              Colors.transparent,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                    customColors?.primaryBg ??
                                    Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Пропущено'),
                            Text(
                              '$lessonNotVisitedCount уроков',
                              style: TextStyle(
                                color: customColors?.primaryTextColor.withAlpha(
                                  150,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyWatchedStatistic extends StatelessWidget {
  final int lessonWatchedCount;
  final int lessonNotWatchedCount;
  const MyWatchedStatistic({
    super.key,
    required this.lessonWatchedCount,
    required this.lessonNotWatchedCount,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final visitedAll = lessonWatchedCount + lessonNotWatchedCount;
    final a = (lessonWatchedCount / visitedAll * 100);
    final visitedPersent = (a.isNaN ? 0 : a).round();
    final notVisitedPersent = 100 - visitedPersent;
    final double size = 280;
    final double horizontal = 15;
    final double gap = 5;
    final persent = size - horizontal - horizontal - gap - gap - 26;
    final visitePersent = persent * (visitedPersent / 100);
    final noVisitePersent = persent * (notVisitedPersent / 100);
    return Container(
      width: 400,
      padding: EdgeInsets.only(
        top: 20,
        left: horizontal,
        right: horizontal,
        bottom: 10,
      ),
      height: double.infinity,
      decoration: BoxDecoration(color: customColors?.containerColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          TitleHeader('Просмотр уроков'),
          Expanded(
            child: Row(
              spacing: 15,
              children: [
                Row(
                  spacing: gap,
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      size: 26,
                      color: HexColor('##4971FE'),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      height: double.infinity,
                      width: visitePersent,
                      decoration: BoxDecoration(
                        color: HexColor('#4971FE'),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: visitePersent <= 50
                          ? null
                          : AnimatedFlipCounter(
                              value: visitedPersent,
                              fractionDigits: 0,
                              suffix: "%",
                              duration: Duration(milliseconds: 500),
                              textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      height: double.infinity,
                      width: noVisitePersent,

                      child: DiagonalStripesBox(
                        borderRadius: BorderRadius.circular(22),
                        color1: customColors?.primaryBg ?? Colors.transparent,
                        color2:
                            customColors?.containerColor ?? Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  customColors?.primaryBg ?? Colors.transparent,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          width: double.infinity,
                          height: double.infinity,
                          child: noVisitePersent <= 50
                              ? null
                              : AnimatedFlipCounter(
                                  value: notVisitedPersent,
                                  fractionDigits: 0,
                                  suffix: "%",
                                  duration: Duration(milliseconds: 500),
                                  textStyle: TextStyle(
                                    fontSize: 25,
                                    color: customColors?.primaryTextColor,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 7,
                      children: [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: HexColor('##4971FE'),
                          size: 16,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Просмотрено'),
                            Text(
                              '$lessonWatchedCount уроков',
                              style: TextStyle(
                                color: customColors?.primaryTextColor.withAlpha(
                                  150,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 7,
                      children: [
                        Icon(
                          Icons.visibility_off_outlined,
                          color: customColors?.primaryTextColor.withAlpha(150),
                          size: 16,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Осталось'),
                            Text(
                              '$lessonNotWatchedCount уроков',
                              style: TextStyle(
                                color: customColors?.primaryTextColor.withAlpha(
                                  150,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyScoreStatistic extends StatelessWidget {
  final String studentMiddleRating;
  final int homeworkSolvedCount;
  final int homeworkNotSolvedCount;
  const MyScoreStatistic({
    super.key,
    required this.studentMiddleRating,
    required this.homeworkSolvedCount,
    required this.homeworkNotSolvedCount,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final middle = double.parse(studentMiddleRating).round();
    final persent = middle / 5;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(0),
        bottomLeft: Radius.circular(22),
        bottomRight: Radius.circular(0),
      ),
      child: Container(
        width: 300,
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
        height: double.infinity,
        decoration: BoxDecoration(color: customColors?.containerColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            TitleHeader('Средняя оценка'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: customColors?.primaryBg,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      CircularProgressIndicator(
                        constraints: BoxConstraints(
                          minHeight: 130,
                          maxHeight: 130,
                          maxWidth: 130,
                          minWidth: 130,
                        ),
                        strokeWidth: 10,
                        year2023: false,
                        backgroundColor: customColors?.containerColor,
                        color: HexColor('#4971FE'),
                        value: persent,
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Center(
                          child: ScoreIcon(
                            score: middle,
                            child: Container(
                              width: 70,
                              height: 70,
                              color: HexColor('#4971FE'),
                              alignment: Alignment.center,
                              child: AnimatedFlipCounter(
                                value: middle,
                                fractionDigits: 0,
                                duration: Duration(milliseconds: 500),
                                textStyle: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 7,
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: HexColor('##4971FE'),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('$homeworkSolvedCount заданий'),
                            Text(
                              'Проверено',
                              style: TextStyle(
                                color: customColors?.primaryTextColor.withAlpha(
                                  150,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 7,
                      children: [
                        DiagonalStripesBox(
                          borderRadius: BorderRadius.circular(4),
                          size: 2,
                          color1: customColors?.primaryBg ?? Colors.transparent,
                          color2:
                              customColors?.containerColor ??
                              Colors.transparent,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                    customColors?.primaryBg ??
                                    Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('$homeworkNotSolvedCount заданий'),
                            Text(
                              'Не проверено',
                              style: TextStyle(
                                color: customColors?.primaryTextColor.withAlpha(
                                  150,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyRankingStatistic extends StatelessWidget {
  final int totalScore;
  final int position;
  const MyRankingStatistic({
    super.key,
    required this.totalScore,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      width: 300,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
      height: double.infinity,
      decoration: BoxDecoration(color: customColors?.containerColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          TitleHeader('Мой рейтинг'),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: customColors?.primaryBg.withAlpha(150),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedFlipCounter(
                        value: position,
                        fractionDigits: 0,
                        duration: Duration(milliseconds: 500),
                        textStyle: TextStyle(
                          fontSize: 26,
                          color: customColors?.primaryTextColor,
                        ),
                      ),
                      Text(
                        'место',
                        style: TextStyle(
                          color: customColors?.primaryTextColor.withAlpha(150),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: customColors?.primaryBg,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 5,
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          size: 28,
                          color: HexColor('#4971FE'),
                        ),
                        AnimatedFlipCounter(
                          value: totalScore,
                          fractionDigits: 0,
                          duration: Duration(milliseconds: 500),
                          textStyle: TextStyle(
                            fontSize: 26,
                            color: customColors?.primaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyCoworkingStatistic extends StatelessWidget {
  final int coworkingVisitedCount;
  final int coworkingVisitedWithoutReserveCount;
  const MyCoworkingStatistic({
    super.key,
    required this.coworkingVisitedCount,
    required this.coworkingVisitedWithoutReserveCount,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      width: 300,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
      height: double.infinity,
      decoration: BoxDecoration(
        color: customColors?.containerColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 2,
        children: [
          TitleHeader('Посещения коворкинга'),
          SizedBox(height: 6),
          ListTileBuilder(
            isStart: true,
            isEnd: false,
            builder: (shape, contentPadding, isThreeLine) {
              return ListTile(
                shape: shape,
                tileColor: customColors?.primaryBg,
                leading: Container(
                  width: 45,
                  height: 30,
                  decoration: BoxDecoration(
                    color: HexColor('#4971FE'),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: AnimatedFlipCounter(
                    value: coworkingVisitedCount,
                    fractionDigits: 0,
                    duration: Duration(milliseconds: 500),
                    textStyle: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                minLeadingWidth: 30,
                title: Text('Посещений'),
                subtitle: Text(
                  'По записи',
                  style: TextStyle(
                    color: customColors?.primaryTextColor.withAlpha(150),
                  ),
                ),
              );
            },
          ),
          ListTileBuilder(
            isStart: false,
            isEnd: true,
            builder: (shape, contentPadding, isThreeLine) {
              return ListTile(
                shape: shape,
                tileColor: customColors?.primaryBg,
                leading: Container(
                  width: 45,
                  height: 30,
                  decoration: BoxDecoration(
                    color: customColors?.containerColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: AnimatedFlipCounter(
                    value: coworkingVisitedWithoutReserveCount,
                    fractionDigits: 0,
                    duration: Duration(milliseconds: 500),
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: customColors?.primaryTextColor,
                    ),
                  ),
                ),
                minLeadingWidth: 30,
                title: Text('Посещений'),
                subtitle: Text(
                  'Без записи',
                  style: TextStyle(
                    color: customColors?.primaryTextColor.withAlpha(150),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TitleHeader extends StatelessWidget {
  final String title;
  const TitleHeader(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 22),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class DiagonalStripesBox extends StatelessWidget {
  final Widget? child;
  final BorderRadius borderRadius;
  final Color color1;
  final Color color2;
  final double size;

  const DiagonalStripesBox({
    super.key,
    this.child,
    required this.color1,
    required this.color2,
    this.size = 5,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CustomPaint(
        painter: _DiagonalStripesPainter(
          color1: color1,
          color2: color2,
          sizeStripe: size,
        ),
        child: child,
      ),
    );
  }
}

class _DiagonalStripesPainter extends CustomPainter {
  final Color color1;
  final Color color2;
  final double sizeStripe;
  const _DiagonalStripesPainter({
    required this.color1,
    required this.color2,
    required this.sizeStripe,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    canvas.save();

    // Поворачиваем холст под -135deg
    canvas.translate(size.width / 2, size.height / 2);
    canvas.rotate(135 * math.pi / 180);
    canvas.translate(-size.width / 2, -size.height / 2);

    final stripe = sizeStripe; // 5dp
    final period = stripe * 2; // 10dp цикл

    final paint = Paint()
      ..shader = ui.Gradient.linear(
        const Offset(0, 0),
        Offset(period, 0),
        [color1, color1, color2, color2],
        const [0.0, 0.5, 0.5, 1.0],
        ui.TileMode.repeated,
      );

    canvas.drawRect(rect.inflate(size.longestSide), paint);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _DiagonalStripesPainter oldDelegate) {
    return oldDelegate.color1 != color1 || oldDelegate.color2 != color2;
  }
}
