import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/cups/cups_bloc.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/pro_coin_icon/pro_coin_icon.dart';
import 'package:proweb_student_app/models/achievements_cup/achievements_cup.dart';
import 'package:proweb_student_app/models/cups/cups.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class MyCupsScreen extends StatelessWidget {
  const MyCupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyCupsScaffold();
  }
}

class MyCupsScaffold extends StatelessWidget {
  const MyCupsScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bloc = context.read<CupsBloc>();
    return Scaffold(
      appBar: AppBar(title: Text('Кубки')),
      body: ClipRRect(
        borderRadius: BorderRadiusGeometry.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
        child: Container(
          decoration: BoxDecoration(color: customColors?.containerColor),
          child: BlocBuilder<CupsBloc, CupsState>(
            bloc: bloc..add(CupsEvent.cups()),
            builder: (context, state) {
              return switch (state) {
                CupsStateLoad() => Md3CirculeIndicator(),
                CupsStateComplited(
                  cups: final cups,
                  achievements: final achievements,
                  achievementsLoad: final load,
                ) =>
                  ViewCupsAndAchievements(
                    cups: cups,
                    achievements: achievements,
                    load: load,
                  ),
              };
            },
          ),
        ),
      ),
    );
  }
}

class ViewCupsAndAchievements extends StatefulWidget {
  final ResponseLazeList<Cups> cups;
  final ResponseLazeList<AchievementsCup>? achievements;
  final bool? load;
  const ViewCupsAndAchievements({
    super.key,
    required this.cups,
    this.achievements,
    this.load,
  });

  @override
  State<ViewCupsAndAchievements> createState() =>
      _ViewCupsAndAchievementsState();
}

class _ViewCupsAndAchievementsState extends State<ViewCupsAndAchievements> {
  late int activeId;

  @override
  void initState() {
    final first = widget.cups.list.first;
    activeId = first.id ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final arr = (widget.achievements?.list ?? []);
    return ListView(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            scrollDirection: Axis.horizontal,
            itemCount: widget.cups.list.length,
            itemBuilder: (context, index) {
              final element = widget.cups.list.elementAt(index);
              return GestureDetector(
                onTap: () {
                  if (element.id != null &&
                      activeId != element.id &&
                      widget.load != true) {
                    setState(() {
                      activeId = element.id ?? 0;
                    });
                    final bloc = context.read<CupsBloc>();
                    bloc.add(CupsEvent.cups(cupId: element.id));
                  }
                },
                child: CupItem(cup: element, activeId: activeId),
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
          ),
        ),
        if (widget.load == true)
          Md3CirculeIndicator()
        else
          Padding(
            padding: EdgeInsetsGeometry.only(left: 10, right: 10, bottom: 10),
            child: Column(
              spacing: 2,
              mainAxisSize: MainAxisSize.min,
              children: [
                ...arr.map((a) {
                  final index = arr.indexWhere((b) => a.id == b.id);
                  return AchievementItem(
                    achievement: a,
                    index: index,
                    length: arr.length,
                  );
                }),
              ],
            ),
          ),
      ],
    );
  }
}

class AchievementItem extends StatelessWidget {
  final AchievementsCup achievement;
  final int index;
  final int length;
  const AchievementItem({
    super.key,
    required this.achievement,
    required this.index,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final achUser = achievement.users?.firstOrNull;
    final isAchieved = achUser?.isAchieved;
    final isRewardReceived = achUser?.isRewardReceived;
    final achieved = isAchieved == true && isRewardReceived != true;
    final rewardReceived = isRewardReceived == true;
    final achievedAt = achievement.users?.firstOrNull?.achievedAt;
    return ListTileBuilder(
      isStart: index == 0,
      isEnd: index == (length - 1),
      builder: (shape, contentPadding, isThreeLine) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: shape.borderRadius,
            color: achieved || rewardReceived
                ? customColors?.achievent
                : customColors?.primaryBg,
          ),
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  shape: shape,
                  tileColor: Colors.transparent,
                  contentPadding: contentPadding,
                  minTileHeight: 10,
                  leading: CachedNetworkImage(
                    imageUrl: achievement.icon ?? '',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    localeText(achievement.name!, context.locale.languageCode),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    localeText(
                      achievement.description!,
                      context.locale.languageCode,
                    ),
                    style: TextStyle(
                      color: customColors?.primaryTextColor.withAlpha(150),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 3,
                  children: [
                    if (!achieved && !rewardReceived) ...{
                      Text(
                        '${achievement.users?.firstOrNull?.currentProgress ?? 0}/${achievement.targetCount ?? 0}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: customColors?.primaryTextColor.withAlpha(170),
                        ),
                      ),
                    },
                    if (rewardReceived && achievedAt != null) ...{
                      Icon(
                        Icons.check,
                        size: 16,
                        color: customColors?.achieventActive,
                      ),
                      Text(
                        sl<LocalData>()
                            .getDateString(date: DateTime.parse(achievedAt))
                            .replaceFirst(', ', '\n'),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: customColors?.achieventActive),
                      ),
                    },
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: achieved || rewardReceived
                            ? customColors?.achieventContainer
                            : customColors?.containerColor,
                        border: Border(
                          bottom: BorderSide(
                            color:
                                (achieved || rewardReceived
                                    ? customColors?.achieventActive
                                    : customColors?.borderColors) ??
                                Colors.transparent,
                            width: 3,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 7,
                        horizontal: 10,
                      ),
                      child: Stack(
                        children: [
                          ProCoinIcon(width: 40),
                          Positioned(
                            bottom: -5,
                            right: 2,
                            child: Text(
                              '${achievement.coins ?? 0}',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: customColors?.primaryTextColor,

                                shadows: [
                                  Shadow(
                                    offset: Offset(-1, -1),
                                    color:
                                        (achieved || rewardReceived
                                            ? customColors?.achieventContainer
                                            : customColors?.containerColor) ??
                                        Colors.transparent,
                                  ),
                                  Shadow(
                                    offset: Offset(1, -1),
                                    color:
                                        (achieved || rewardReceived
                                            ? customColors?.achieventContainer
                                            : customColors?.containerColor) ??
                                        Colors.transparent,
                                  ),
                                  Shadow(
                                    offset: Offset(1, 1),
                                    color:
                                        (achieved || rewardReceived
                                            ? customColors?.achieventContainer
                                            : customColors?.containerColor) ??
                                        Colors.transparent,
                                  ),
                                  Shadow(
                                    offset: Offset(-1, 1),
                                    color:
                                        (achieved || rewardReceived
                                            ? customColors?.achieventContainer
                                            : customColors?.containerColor) ??
                                        Colors.transparent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (achieved && !rewardReceived) ...{
                      Padding(
                        padding: EdgeInsetsGeometry.only(top: 5),
                        child: Material(
                          color: customColors?.achieventActive,
                          borderRadius: BorderRadius.circular(6),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(6),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              child: Text(
                                'Получить',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    },
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String localeText(CupName data, String? locale) {
    if (locale == 'ru') {
      return data.ru ?? '';
    } else if (locale == 'uz') {
      return data.uz ?? '';
    } else {
      return data.ru ?? '';
    }
  }
}

class CupItem extends StatelessWidget {
  final Cups cup;
  final int activeId;

  const CupItem({super.key, required this.cup, required this.activeId});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final isActive = activeId == cup.id;
    String local = context.locale.languageCode;
    final rewardAvailableForAchievement = cup.rewardAvailableForAchievement;
    if (local != 'ru' || local != 'uz') {
      local = 'ru';
    }
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(end: isActive ? 1 : 0),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: CachedNetworkImage(imageUrl: cup.icon!, width: 40, height: 40),
      builder: (context, value, icon) {
        final width = lerpDouble(56, 220, value)!;
        final widthSized = lerpDouble(0, 12, value)!;
        final radius = lerpDouble(12, 50, value)!;
        final borderOpacity = lerpDouble(255, 0, value)!;
        final iconScale = lerpDouble(1, 1.55, value)!;
        final textWidth = lerpDouble(0, (220 - 80), value)!;
        final turns = lerpDouble(1, 0.93, value)!;
        final top = lerpDouble(2, 10, value)!;
        final right = lerpDouble(2, 1, value)!;
        final sizeSmall = lerpDouble(15, 22, value)!;
        final iconSize = lerpDouble(12, 16, value)!;

        return Container(
          clipBehavior: Clip.antiAlias,
          height: double.infinity,
          width: width,
          decoration: BoxDecoration(
            color: customColors?.primaryBg,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: (customColors?.borderColors ?? Colors.transparent)
                  .withAlpha(borderOpacity.toInt()),
              width: 2,
            ),
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 0,
                    child: Center(
                      child: AnimatedRotation(
                        turns: turns,
                        duration: const Duration(milliseconds: 100),
                        child: Transform.scale(scale: iconScale, child: icon),
                      ),
                    ),
                  ),
                  SizedBox(width: widthSized),
                  ClipRect(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: textWidth,
                        child: Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8, right: 10),
                            child: Text(
                              (local == 'ru' ? cup.name?.ru : cup.name?.uz) ??
                                  '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (rewardAvailableForAchievement == true)
                Positioned(
                  top: top,
                  right: right,
                  child: Container(
                    alignment: Alignment.center,
                    width: sizeSmall,
                    height: sizeSmall,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: customColors?.warningFill,
                    ),
                    child: Icon(
                      Icons.check,
                      size: iconSize,
                      color: Colors.black,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
