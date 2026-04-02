import 'dart:ui';
import 'dart:async';

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_confetti/flutter_confetti.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
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
                if (activeId != 0) ...{CupResitem(cupId: activeId)},
                Divider(),
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

class CupResitem extends StatelessWidget {
  final int cupId;
  const CupResitem({super.key, required this.cupId});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bloc = context.read<CupsBloc>();
    final cups = bloc.state
        .whenOrNull(complited: (cups, achievements, achievementsLoad) => cups)
        ?.list;
    if (cups == null) return SizedBox();
    final cup = cups.singleWhere(
      (element) => element.id == cupId,
      orElse: () => Cups(),
    );
    if (cup.id == null) return SizedBox();
    final achUser = cup.users?.firstOrNull;
    final isAchieved = achUser?.isAchieved;
    final isRewardReceived = achUser?.isRewardReceived;
    final achieved = isAchieved == true && isRewardReceived != true;
    final rewardReceived = isRewardReceived == true;
    final achievedAt = cup.users?.firstOrNull?.achievedAt;
    return ListTileBuilder(
      isStart: true,
      isEnd: true,
      builder: (shape, contentPadding, isThreeLine) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: shape.borderRadius,
            color: achieved || rewardReceived
                ? customColors?.achievent
                : customColors?.primaryBg,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      shape: shape,
                      tileColor: Colors.transparent,
                      contentPadding: contentPadding,
                      minTileHeight: 10,
                      leading: CachedNetworkImage(
                        imageUrl: cup.icon ?? '',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        localeText(cup.name!, context.locale.languageCode),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        localeText(
                          cup.description!,
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      spacing: 3,
                      children: [
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
                                  '${cup.coins ?? 0}',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: customColors?.primaryTextColor,

                                    shadows: [
                                      Shadow(
                                        offset: Offset(-1, -1),
                                        color:
                                            (achieved || rewardReceived
                                                ? customColors
                                                      ?.achieventContainer
                                                : customColors
                                                      ?.containerColor) ??
                                            Colors.transparent,
                                      ),
                                      Shadow(
                                        offset: Offset(1, -1),
                                        color:
                                            (achieved || rewardReceived
                                                ? customColors
                                                      ?.achieventContainer
                                                : customColors
                                                      ?.containerColor) ??
                                            Colors.transparent,
                                      ),
                                      Shadow(
                                        offset: Offset(1, 1),
                                        color:
                                            (achieved || rewardReceived
                                                ? customColors
                                                      ?.achieventContainer
                                                : customColors
                                                      ?.containerColor) ??
                                            Colors.transparent,
                                      ),
                                      Shadow(
                                        offset: Offset(-1, 1),
                                        color:
                                            (achieved || rewardReceived
                                                ? customColors
                                                      ?.achieventContainer
                                                : customColors
                                                      ?.containerColor) ??
                                            Colors.transparent,
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
                  ),
                ],
              ),
              if (!achieved && !rewardReceived) ...{
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    'Выполните все задания что бы получить кубок',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: customColors?.primaryTextColor.withAlpha(170),
                    ),
                  ),
                ),
              },
              if (rewardReceived && achievedAt != null) ...{
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check,
                        size: 16,
                        color: customColors?.achieventActive,
                      ),
                      Text(
                        sl<LocalData>().getDateString(
                          date: DateTime.parse(achievedAt),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: customColors?.achieventActive),
                      ),
                    ],
                  ),
                ),
              },
              if (achieved && !rewardReceived) ...{
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Material(
                    color: customColors?.achieventActive,
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        final id = cup.id;
                        if (id == null) return;
                        final bloc = context.read<CupsBloc>();
                        bloc.add(CupsEvent.cupReceiveReward(cupId: id));
                        openSendCoin(context, cup);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        child: Center(
                          child: Text(
                            'Получить',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              },
            ],
          ),
        );
      },
    );
  }

  Future<void> openSendCoin(BuildContext context, Cups cup) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,

      builder: (_) {
        final bloc = context.read<BalanceBloc>();
        final procoin =
            bloc.state.mapOrNull(balance: (value) => value.balance.procoin) ??
            '0';
        final coins = double.parse(procoin).round();
        final coinsAchi = (cup.coins ?? 0);
        bloc.add(BalanceEvent.updateCoint('${coins + coinsAchi}'));
        return ReceivedCup(cup: cup, procoin: procoin);
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
                            onTap: () {
                              final id = achievement.id;
                              if (id == null) return;
                              final bloc = context.read<CupsBloc>();
                              bloc.add(
                                CupsEvent.achievementReceiveReward(
                                  achievementId: id,
                                ),
                              );
                              openSendCoin(context);
                            },
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

  Future<void> openSendCoin(BuildContext context) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        final bloc = context.read<BalanceBloc>();
        final procoin =
            bloc.state.mapOrNull(balance: (value) => value.balance.procoin) ??
            '0';
        final coins = double.parse(procoin).round();
        final coinsAchi = (achievement.coins ?? 0);
        bloc.add(BalanceEvent.updateCoint('${coins + coinsAchi}'));
        return ReceivedAchievement(achievement: achievement, procoin: procoin);
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

class ReceivedAchievement extends StatefulWidget {
  final AchievementsCup achievement;
  final String procoin;
  const ReceivedAchievement({
    super.key,
    required this.achievement,
    required this.procoin,
  });

  @override
  State<ReceivedAchievement> createState() => _ReceivedAchievementState();
}

class _ReceivedAchievementState extends State<ReceivedAchievement> {
  late int coins;
  late int coinsAchi;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    coins = double.parse(widget.procoin).round();
    coinsAchi = (widget.achievement.coins ?? 0);
    if (coinsAchi > 0) {
      _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        setState(() {
          coins = coins + coinsAchi;
        });
        _timer.cancel();
      });
    }
  }

  @override
  void dispose() {
    if ((widget.achievement.coins ?? 0) > 0) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final locale = context.locale.languageCode;

    return Dialog(
      insetPadding: EdgeInsets.all(0),
      clipBehavior: Clip.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(22),
        side: BorderSide(
          color: customColors?.achieventContainer ?? Colors.transparent,
        ),
      ),
      shadowColor: customColors?.achieventActive,
      backgroundColor: customColors?.containerColor,

      constraints: BoxConstraints(maxWidth: 200, minWidth: 200),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: Column(
              spacing: 15,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: customColors?.primaryBg,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ProCoinIcon(width: 120),
                  ),
                ),
                Column(
                  spacing: 5,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      localeText(widget.achievement.name!, locale),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AnimatedFlipCounter(
                      value: coins,
                      fractionDigits: 0,
                      duration: Duration(milliseconds: 800),
                      textStyle: TextStyle(
                        fontSize: 40,
                        color: customColors?.achieventActive,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close),
            ),
          ),
        ],
      ),
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

class ReceivedCup extends StatefulWidget {
  final Cups cup;
  final String procoin;
  const ReceivedCup({super.key, required this.cup, required this.procoin});

  @override
  State<ReceivedCup> createState() => _ReceivedCupState();
}

class _ReceivedCupState extends State<ReceivedCup> {
  late int coins;
  late int coinsAchi;
  late Timer _timer;
  late Timer _timerSwitch;
  int page = 1;

  @override
  void initState() {
    super.initState();
    coins = double.parse(widget.procoin).round();
    coinsAchi = (widget.cup.coins ?? 0);
    if (coinsAchi > 0) {
      _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        setState(() {
          coins = coins + coinsAchi;
        });
        timer.cancel();
      });
    }
    _timerSwitch = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        page = 2;
      });
      timer.cancel();
    });
  }

  @override
  void dispose() {
    if ((widget.cup.coins ?? 0) > 0) {
      _timer.cancel();
    }
    _timerSwitch.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final locale = context.locale.languageCode;

    return AnimatedSwitcher(
      duration: Duration(milliseconds: 400),
      child: page == 2
          ? CupResSend(key: ValueKey(2), cup: widget.cup)
          : Dialog(
              key: ValueKey(1),
              insetPadding: EdgeInsets.all(0),
              clipBehavior: Clip.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(22),
                side: BorderSide(
                  color: customColors?.achieventContainer ?? Colors.transparent,
                ),
              ),
              shadowColor: customColors?.achieventActive,
              backgroundColor: customColors?.containerColor,

              constraints: BoxConstraints(maxWidth: 200, minWidth: 200),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: Column(
                  spacing: 15,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: customColors?.primaryBg,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: ProCoinIcon(width: 120),
                      ),
                    ),
                    Column(
                      spacing: 5,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          localeText(widget.cup.name!, locale),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        AnimatedFlipCounter(
                          value: coins,
                          fractionDigits: 0,
                          duration: Duration(milliseconds: 800),
                          textStyle: TextStyle(
                            fontSize: 40,
                            color: customColors?.achieventActive,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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

class CupResSend extends StatefulWidget {
  final Cups cup;
  const CupResSend({super.key, required this.cup});

  @override
  State<CupResSend> createState() => _CupResSendState();
}

class _CupResSendState extends State<CupResSend> with TickerProviderStateMixin {
  static const colors = [
    Color(0xffbb0000),
    Color(0xfffdd835),
    Color(0xff1e88e5),
    Color(0xff43a047),
    Color(0xffffffff),
  ];

  static const Duration introDuration = Duration(milliseconds: 450);
  static const Duration confettiDuration = Duration(milliseconds: 2400);
  static const Duration flyDuration = Duration(milliseconds: 1000);
  static const Duration confettiFrame = Duration(milliseconds: 100);

  Timer? _confettiTimer;
  ConfettiController? _controllerLeft;
  ConfettiController? _controllerRight;

  late final AnimationController _introController;
  late final AnimationController _flyController;

  late final Animation<double> _introScaleAnimation;
  late final Animation<double> _introOpacityAnimation;

  late final Animation<Alignment> _flyAlignmentAnimation;
  late final Animation<double> _flyScaleAnimation;
  late final Animation<double> _flyOpacityAnimation;

  bool _isConfettiDone = false;

  @override
  void initState() {
    super.initState();

    _introController = AnimationController(
      vsync: this,
      duration: introDuration,
    );

    _flyController = AnimationController(vsync: this, duration: flyDuration);

    final introCurve = CurvedAnimation(
      parent: _introController,
      curve: Curves.easeOutBack,
    );

    _introScaleAnimation = Tween<double>(begin: 2, end: 1).animate(introCurve);

    _introOpacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _introController, curve: Curves.easeOut));

    final flyCurve = CurvedAnimation(
      parent: _flyController,
      curve: Curves.easeInCubic,
    );

    _flyAlignmentAnimation = AlignmentTween(
      begin: Alignment.center,
      end: Alignment.topRight,
    ).animate(flyCurve);

    _flyScaleAnimation = Tween<double>(begin: 1, end: 0.4).animate(flyCurve);

    _flyOpacityAnimation = Tween<double>(begin: 1, end: 0).animate(flyCurve);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _runWholeSequence();
    });
  }

  Future<void> _runWholeSequence() async {
    if (!mounted) return;

    await _introController.forward();

    if (!mounted) return;

    await _startSequence();

    if (!mounted) return;

    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
  }

  Future<void> _startSequence() async {
    final completer = Completer<void>();

    final totalTicks =
        confettiDuration.inMilliseconds ~/ confettiFrame.inMilliseconds;

    int tick = 0;

    _launchConfetti();

    _confettiTimer = Timer.periodic(confettiFrame, (timer) async {
      tick++;

      if (tick >= totalTicks) {
        timer.cancel();
        await _finishConfetti();
        if (!completer.isCompleted) {
          completer.complete();
        }
        return;
      }

      _launchConfetti();
    });

    return completer.future;
  }

  void _launchConfetti() {
    if (!mounted) return;

    if (_controllerLeft == null) {
      _controllerLeft = Confetti.launch(
        context,
        options: const ConfettiOptions(
          particleCount: 14,
          angle: 60,
          spread: 70,
          x: 0,
          colors: colors,
        ),
        onFinished: (overlayEntry) {
          if (_isConfettiDone) {
            overlayEntry.remove();
          }
        },
      );
    } else {
      _controllerLeft!.launch();
    }

    if (_controllerRight == null) {
      _controllerRight = Confetti.launch(
        context,
        options: const ConfettiOptions(
          particleCount: 14,
          angle: 120,
          spread: 70,
          x: 1,
          colors: colors,
        ),
        onFinished: (overlayEntry) {
          if (_isConfettiDone) {
            overlayEntry.remove();
          }
        },
      );
    } else {
      _controllerRight!.launch();
    }
  }

  Future<void> _finishConfetti() async {
    _isConfettiDone = true;
    await _flyController.forward();
  }

  @override
  void dispose() {
    _confettiTimer?.cancel();
    _introController.dispose();
    _flyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: AnimatedBuilder(
          animation: Listenable.merge([_introController, _flyController]),
          builder: (context, child) {
            final isFlying = _flyController.value > 0;

            final alignment = isFlying
                ? _flyAlignmentAnimation.value
                : Alignment.center;

            final scale = isFlying
                ? _flyScaleAnimation.value
                : _introScaleAnimation.value;

            final opacity = isFlying
                ? _flyOpacityAnimation.value
                : _introOpacityAnimation.value;

            return Align(
              alignment: alignment,
              child: Opacity(
                opacity: opacity,
                child: Transform.scale(scale: scale, child: child),
              ),
            );
          },
          child: CachedNetworkImage(
            imageUrl: widget.cup.icon ?? '',
            width: 200,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
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
