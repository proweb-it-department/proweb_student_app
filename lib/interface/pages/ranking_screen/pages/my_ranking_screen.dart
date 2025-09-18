import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/ranking_user/ranking_user_bloc.dart';
import 'package:proweb_student_app/bloc/ranking_user/ranking_user_state_data.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_groups_item_widgets.dart';
import 'package:proweb_student_app/models/user_skill/user_skill.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class MyRankingScreen extends StatelessWidget {
  const MyRankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = sl<LocalData>().profile?.id;
    if (userId == null) {
      return Center(child: ErrorLoad());
    }

    return RankingViewUser(userId: userId);
  }
}

class RankingViewUser extends StatefulWidget {
  final int userId;
  const RankingViewUser({super.key, required this.userId});

  @override
  State<RankingViewUser> createState() => _RankingViewUserState();
}

class _RankingViewUserState extends State<RankingViewUser> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: ValueKey(widget.userId),
      create: (context) {
        final bloc = RankingUserBloc();
        bloc.add(RankingUserEvent.started(userId: widget.userId));
        return bloc;
      },
      child: MyRankingBody(),
    );
  }
}

class MyRankingBody extends StatelessWidget {
  const MyRankingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RankingUserBloc, RankingUserState>(
      builder: (context, state) {
        final bottom = MediaQuery.of(context).viewPadding.bottom;
        return state.when(
          initial: () => Center(child: CircularProgressIndicator()),
          complited: (ranking, skills, userId) {
            return ListView(
              padding: EdgeInsets.only(bottom: bottom + 120),
              children: [
                RankingColumn(ranking: ranking),
                SizedBox(height: 15),
                SkillColumn(skills: skills),
              ],
            );
          },
        );
      },
    );
  }
}

class RankingColumn extends StatelessWidget {
  final RankingUser ranking;
  const RankingColumn({super.key, required this.ranking});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: customColors?.containerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 2,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 5),
            child: Text(
              'ranking.Rating'.tr(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          if (ranking.loadState == LoadState.loading)
            Center(child: CircularProgressIndicator())
          else if (ranking.loadState == LoadState.errorLoading)
            Center(child: ErrorLoad())
          else ...{
            if (ranking.global != null)
              RankingBlock(
                isStart: true,
                isEnd: false,
                leading: CircleAvatar(
                  backgroundColor: customColors?.warningFillOp,
                  child: Icon(
                    Icons.emoji_events,
                    color: customColors?.warningFill,
                  ),
                ),
                totalScore: ranking.global?.totalScore ?? 0,
                title: 'ranking.Overall_rating'.tr(),
                position: ranking.global?.position ?? 0,
              ),
            if (ranking.rankingList.isNotEmpty) ...[
              for (int i = 0; i < ranking.rankingList.length; i++)
                RankingBlock(
                  isStart: false,
                  isEnd: i == (ranking.rankingList.length - 1),
                  leading: CourseAvatar(
                    icon: ranking.rankingList[i].course!.icon!,
                    color: HexColor(ranking.rankingList[i].course!.color!),
                  ),
                  totalScore:
                      ranking.rankingList[i].totalScore?.totalScore ?? 0,
                  title: ranking.rankingList[i].course?.name ?? '- - -',
                  position: ranking.rankingList[i].totalScore?.position ?? 0,
                ),
            ] else
              Center(
                child: NoData(text: 'ranking.No_rating'.tr(), icon: Icons.star),
              ),
          },
        ],
      ),
    );
  }
}

class RankingBlock extends StatelessWidget {
  final int position;
  final int totalScore;
  final bool isStart;
  final bool isEnd;
  final String title;
  final Widget leading;
  const RankingBlock({
    super.key,
    required this.position,
    required this.totalScore,
    required this.title,
    required this.leading,
    required this.isStart,
    required this.isEnd,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ListTileBuilder(
      isStart: isStart,
      isEnd: isEnd,
      builder: (shape, contentPadding, isThreeLine) {
        return Material(
          color: Colors.transparent,
          child: ListTile(
            tileColor: customColors?.primaryBg,
            shape: shape,
            contentPadding: contentPadding,
            leading: leading,
            title: Text(title),
            subtitle: Opacity(
              opacity: 0.7,
              child: Text('$position ${'ranking.place'.tr()}'),
            ),
            trailing: Row(
              spacing: 5,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('$totalScore', style: TextStyle(fontSize: 16)),
                Icon(Icons.star, color: customColors?.warningFill),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SkillColumn extends StatelessWidget {
  final RankingSkills skills;
  const SkillColumn({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'ranking.Skills'.tr(),
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        if (skills.loadState == LoadState.loading)
          Center(child: CircularProgressIndicator())
        else if (skills.loadState == LoadState.errorLoading)
          Center(child: ErrorLoad())
        else if (skills.skills.isNotEmpty) ...{
          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: PieSkills(skills: skills.skills),
          ),
          SkillList(skills: skills.skills),
        } else if (skills.skills.isEmpty)
          Center(
            child: NoData(
              text: 'ranking.No_skills'.tr(),
              icon: Icons.science_rounded,
            ),
          ),
      ],
    );
  }
}

class SkillList extends StatelessWidget {
  final List<UserSkill> skills;
  const SkillList({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    final List<Color> fixedColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.pink,
      Colors.cyan,
      Colors.lime,
      Colors.amber,
      Colors.teal,
      Colors.indigo,
      Colors.brown,
      Colors.grey,
      Colors.yellow,
      Colors.lightGreen,
      Colors.deepOrange,
      Colors.deepPurple,
      Colors.lightBlue,
      Colors.blueGrey,
      Colors.redAccent,
      Colors.greenAccent,
      Colors.blueAccent,
      Colors.orangeAccent,
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.cyanAccent,
      Colors.limeAccent,
      Colors.amberAccent,
      Colors.tealAccent,
      Colors.indigoAccent,
      Colors.black,
      Colors.white,
      Colors.red.shade100,
      Colors.green.shade100,
      Colors.blue.shade100,
      Colors.orange.shade100,
      Colors.purple.shade100,
      Colors.pink.shade100,
      Colors.cyan.shade100,
      Colors.lime.shade100,
      Colors.amber.shade100,
      Colors.teal.shade100,
      Colors.indigo.shade100,
      Colors.brown.shade100,
      Colors.grey.shade300,
      Colors.yellow.shade100,
      Colors.deepOrange.shade100,
      Colors.deepPurple.shade100,
    ];
    final maxInt = skills.map((a) => a.score ?? 0).reduce(max);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(skills.length, (index) {
        final skill = skills.elementAt(index);
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: fixedColors.elementAt(index).withAlpha(50),
            child: Icon(
              Icons.science_rounded,
              color: fixedColors.elementAt(index),
            ),
          ),
          title: Text(skill.skill?.name ?? '- - -'),
          subtitle: LinearProgressIndicator(
            year2023: false,
            value: ((skill.score ?? 0) / (maxInt)).toDouble(),
            backgroundColor: fixedColors.elementAt(index).withAlpha(100),
            color: fixedColors.elementAt(index),
            stopIndicatorColor: Colors.transparent,
          ),
          trailing: Text('${skill.score ?? 0}'),
        );
      }).toList(),
    );
  }
}

class PieSkills extends StatefulWidget {
  final List<UserSkill> skills;
  const PieSkills({super.key, required this.skills});

  @override
  State<PieSkills> createState() => _PieSkillsState();
}

class _PieSkillsState extends State<PieSkills> {
  int touchedIndex = -1;
  UserSkill? skillSelect;
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final List<Color> fixedColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.pink,
      Colors.cyan,
      Colors.lime,
      Colors.amber,
      Colors.teal,
      Colors.indigo,
      Colors.brown,
      Colors.grey,
      Colors.yellow,
      Colors.lightGreen,
      Colors.deepOrange,
      Colors.deepPurple,
      Colors.lightBlue,
      Colors.blueGrey,
      Colors.redAccent,
      Colors.greenAccent,
      Colors.blueAccent,
      Colors.orangeAccent,
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.cyanAccent,
      Colors.limeAccent,
      Colors.amberAccent,
      Colors.tealAccent,
      Colors.indigoAccent,
      Colors.black,
      Colors.white,
      Colors.red.shade100,
      Colors.green.shade100,
      Colors.blue.shade100,
      Colors.orange.shade100,
      Colors.purple.shade100,
      Colors.pink.shade100,
      Colors.cyan.shade100,
      Colors.lime.shade100,
      Colors.amber.shade100,
      Colors.teal.shade100,
      Colors.indigo.shade100,
      Colors.brown.shade100,
      Colors.grey.shade300,
      Colors.yellow.shade100,
      Colors.deepOrange.shade100,
      Colors.deepPurple.shade100,
    ];

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                borderData: FlBorderData(show: false),
                pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    if (!event.isInterestedForInteractions ||
                        pieTouchResponse == null ||
                        pieTouchResponse.touchedSection == null) {
                      touchedIndex = -1;
                      skillSelect = null;
                      return;
                    }
                    touchedIndex =
                        pieTouchResponse.touchedSection!.touchedSectionIndex;
                    if ((widget.skills.length - 1) >= touchedIndex &&
                        touchedIndex > -1) {
                      final skill = widget.skills.elementAtOrNull(touchedIndex);

                      skillSelect = skill;
                    }
                    setState(() {});
                  },
                ),
                sectionsSpace: 0,
                sections: List.generate(widget.skills.length, (index) {
                  final item = widget.skills.elementAt(index);
                  return PieChartSectionData(
                    value: (item.score ?? 0).toDouble(),
                    title: '',
                    showTitle: touchedIndex == index,
                    radius: 45,
                    borderSide: BorderSide(),
                    color: fixedColors.elementAt(index),
                  );
                }),
              ),
            ),
          ),
        ),
        if (skillSelect?.skill?.name != null)
          Text(
            skillSelect!.skill!.name!,
            style: TextStyle(color: customColors?.primaryTextColor),
          ),
      ],
    );
  }
}
