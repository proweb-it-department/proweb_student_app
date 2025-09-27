import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pager/pager.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/ranking_list/ranking_list_bloc.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/user_total_position/user_total_position.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class AllRankingScreen extends StatelessWidget {
  const AllRankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AllRankingInit();
  }
}

class AllRankingInit extends StatelessWidget {
  final int? courseId;
  final int? groupId;
  const AllRankingInit({super.key, this.courseId, this.groupId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RankingListBloc()
        ..add(
          RankingListEvent.started(
            offset: 0,
            limit: LimitRequest.ranking,
            courseId: courseId,
            groupId: groupId,
          ),
        ),
      child: AllRanking(courseId: courseId, groupId: groupId),
    );
  }
}

class AllRanking extends StatelessWidget {
  final int? courseId;
  final int? groupId;
  const AllRanking({super.key, this.courseId, this.groupId});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocBuilder<RankingListBloc, RankingListState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(child: Md3CirculeIndicator());
          },
          complited: (winners, userList, myRanking, load, offset) {
            int? winnerPoint;
            if (winners.isNotEmpty) {
              for (var element in winners) {
                if (element.position == 1) {
                  winnerPoint = element.totalScore ?? 0;
                }
              }
            }
            return ListView(
              padding: EdgeInsets.only(top: 10, bottom: 110),
              children: [
                if (winners.isNotEmpty) RankingTopWinners(winners: winners),
                if (myRanking != null) ...[
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RankingTileUser(
                      item: myRanking,
                      winnerPoint: winnerPoint,
                      isHeader: true,
                      isEnd: true,
                      isStart: true,
                      color: customColors?.containerColor,
                    ),
                  ),
                ],
                if (userList != null &&
                    userList.list.isNotEmpty &&
                    userList.count > LimitRequest.ranking) ...[
                  SizedBox(height: 20),
                  Pager(
                    currentPage: (offset / LimitRequest.ranking).toInt() + 1,
                    totalPages: (userList.count / LimitRequest.ranking).ceil(),
                    numberButtonSelectedColor:
                        customColors?.additionalTwo ?? Colors.transparent,
                    numberTextSelectedColor:
                        customColors?.primaryTextColor ?? Colors.transparent,
                    onPageChanged: (page) {
                      final pageOffset = page - 1;
                      if (pageOffset >= 0) {
                        final bloc = context.read<RankingListBloc>();
                        bloc.add(
                          RankingListEvent.started(
                            offset: pageOffset * LimitRequest.ranking,
                            limit: LimitRequest.ranking,
                            courseId: courseId,
                            groupId: groupId,
                          ),
                        );
                      }
                    },
                  ),
                ],
                if (load == LoadState.loading)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Md3CirculeIndicator(),
                    ),
                  )
                else if (load == LoadState.errorLoading)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ErrorLoad(),
                    ),
                  )
                else if (userList != null && userList.list.isNotEmpty)
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: customColors?.containerColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 2,
                      children: [
                        ...List.generate(userList.list.length, (index) {
                          final item = userList.list.elementAt(index);
                          return RankingTileUser(
                            item: item,
                            winnerPoint: winnerPoint,
                            isHeader: false,
                            isStart: index == 0,
                            isEnd: (userList.list.length - 1) == index,
                            color: customColors?.primaryBg,
                          );
                        }),
                      ],
                    ),
                  )
                else
                  NoData(
                    text: 'ranking.There_are_no_users_in_the_rating'.tr(),
                    icon: Icons.people,
                  ),
                if (userList != null &&
                    userList.list.isNotEmpty &&
                    userList.count > LimitRequest.ranking) ...[
                  SizedBox(height: 20),
                ],
              ],
            );
          },
        );
      },
    );
  }
}

class RankingTopWinners extends StatelessWidget {
  final List<UserTotalPosition> winners;
  const RankingTopWinners({super.key, required this.winners});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    var persent = [0.55, 0.35, 0.25];
    var gradients = [
      const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(248, 142, 71, 1),
          Color.fromRGBO(248, 142, 71, 1),
          Color.fromRGBO(243, 169, 48, 1),
          Color.fromRGBO(255, 224, 116, 1),
        ],
        stops: [0.0, 0.35, 0.65, 1.0],
      ),
      const LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          Color.fromRGBO(94, 94, 94, 1),
          Color.fromRGBO(133, 133, 133, 1),
          Color.fromRGBO(172, 172, 172, 1),
          Color.fromRGBO(230, 230, 230, 1),
        ],
        stops: [0.0, 0.35, 0.65, 1.0],
      ),
      const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color.fromARGB(255, 146, 82, 54),
          Color(0xFFB87333),
          Color.fromARGB(255, 199, 135, 70),
          Color.fromARGB(255, 212, 150, 87),
        ],
        stops: [0.0, 0.35, 0.65, 1.0],
      ),
    ];
    var gradientsTop = [
      const LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          Color.fromRGBO(243, 169, 48, 1),
          Color.fromRGBO(255, 224, 116, 1),
        ],
      ),
      const LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          Color.fromRGBO(172, 172, 172, 1),
          Color.fromRGBO(230, 230, 230, 1),
        ],
      ),
      const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color(0xFFE5AA70), Color(0xFFFFE2B3)],
      ),
    ];
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: List.generate(3, (index) {
          final winner = winners.elementAt(index);
          final id = winner.user?.id;
          final width = MediaQuery.of(context).size.width * 0.19;
          return Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (winner.user != null) ...[
                  InkWell(
                    onTap: id == null
                        ? null
                        : () {
                            context.router.push(UserRoute(id: id));
                          },
                    child: ClipPath(
                      clipper: SvgClipper(
                        winner.position == 3
                            ? PathSvgShape.leaf9Cookie
                            : winner.position == 2
                            ? PathSvgShape.leaf6Cookie
                            : PathSvgShape.leaf12Cookie,
                      ),
                      child: Avatar(
                        user: winner.user,
                        size: width,
                        circular: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      sl<LocalData>().nameUser(winner.user),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    decoration: BoxDecoration(
                      color: customColors?.primaryTextColor,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 5,
                      children: [
                        Text(
                          NumberFormat.decimalPattern(
                            'ru',
                          ).format(winner.totalScore ?? 0),
                          style: TextStyle(
                            color: customColors?.primaryBg,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/winner${winner.position ?? index}.svg',
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipPath(
                      clipper: index == 0
                          ? TrapezoidLeftClipper()
                          : index == 1
                          ? TrapezoidClipper()
                          : TrapezoidRightClipper(),
                      child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                          color: customColors?.containerColor,
                          gradient: gradientsTop.elementAt(
                            (winner.position ?? 1) - 1,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: index != 1 ? 5 : 0),
                      alignment: Alignment.centerRight,
                      width: double.infinity,
                      height:
                          MediaQuery.of(context).size.height *
                          0.35 *
                          (persent.elementAt((winner.position ?? 1) - 1)),
                      decoration: BoxDecoration(
                        color: customColors?.containerColor,
                        gradient: gradients.elementAt(
                          (winner.position ?? 1) - 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ClipRRect(
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return ShaderMask(
                                  shaderCallback: (bounds) {
                                    return const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(255, 255, 255, 0.5),
                                        Color.fromRGBO(255, 255, 255, 0),
                                      ],
                                    ).createShader(
                                      Rect.fromLTWH(
                                        0,
                                        0,
                                        bounds.width,
                                        bounds.height * .7,
                                      ),
                                    );
                                  },
                                  blendMode: BlendMode.srcIn,
                                  child: FittedBox(
                                    alignment: Alignment.bottomCenter,
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'PROWEB',
                                      style: const TextStyle(
                                        fontSize: 100,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class RankingTileUser extends StatelessWidget {
  final int? winnerPoint;
  final UserTotalPosition item;
  final bool isHeader;
  final bool isStart;
  final bool isEnd;
  final Color? color;
  const RankingTileUser({
    super.key,
    this.winnerPoint,
    required this.item,
    required this.isHeader,
    required this.isStart,
    required this.isEnd,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final id = item.user?.id;
    final myId = sl<LocalData>().profile?.id;

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: ListTileBuilder(
          isEnd: isEnd,
          isStart: isStart,
          builder: (shape, contentPadding, isThreeLine) {
            return ListTile(
              selectedColor: customColors?.primaryTextColor,
              selectedTileColor: color,
              selected: true,
              shape: shape,
              contentPadding: contentPadding,
              minTileHeight: 60,
              onTap: id == null
                  ? null
                  : () {
                      context.router.push(UserRoute(id: id));
                    },
              leading: Row(
                spacing: 10,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if ((item.position ?? 0) > 0 && (item.position ?? 0) < 4)
                    SvgPicture.asset(
                      'assets/images/winner${item.position}.svg',
                      width: 22,
                    )
                  else
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 5,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: Text(
                            '${item.position ?? 0}'.padLeft(2, '0'),
                            style: GoogleFonts.inter(fontSize: 20),
                          ),
                        ),
                        if (id == myId && isHeader)
                          Text(
                            '${((item.position ?? 0) / LimitRequest.ranking).ceil()} ${'ranking.str_page'.tr()}',
                          ),
                      ],
                    ),
                  if (item.user != null)
                    ClipPath(
                      clipper:
                          (item.position ?? 0) > 0 && (item.position ?? 0) < 4
                          ? SvgClipper(
                              item.position == 3
                                  ? PathSvgShape.leaf9Cookie
                                  : item.position == 2
                                  ? PathSvgShape.leaf6Cookie
                                  : PathSvgShape.leaf12Cookie,
                            )
                          : null,
                      child: Avatar(
                        user: item.user!,
                        circular:
                            (item.position ?? 0) > 0 && (item.position ?? 0) < 4
                            ? 0
                            : 40,
                      ),
                    ),
                ],
              ),
              title: Text(
                item.user != null
                    ? id == myId && isHeader
                          ? 'ranking.your_ranking'.tr()
                          : sl<LocalData>().nameUser(item.user)
                    : '- - -',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: ((item.totalScore ?? 0) > 0 && (winnerPoint ?? 0) > 0)
                  ? LinearProgressIndicator(
                      year2023: false,
                      value: ((item.totalScore ?? 0) / (winnerPoint ?? 0))
                          .toDouble(),
                      backgroundColor: customColors?.warningFillOp,
                      color: customColors?.warningFill,
                      stopIndicatorColor: Colors.transparent,
                    )
                  : null,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  Text('${item.totalScore ?? 0}'),
                  Icon(Icons.star_rounded, color: customColors?.warningFill),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double topWidth = size.width * 0.8;
    double bottomWidth = size.width;

    double dx = (bottomWidth - topWidth) / 2;

    Path path = Path();
    path.moveTo(dx, 0);
    path.lineTo(dx + topWidth, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TrapezoidLeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double topWidth = size.width * 0.8;
    double bottomWidth = size.width;

    double dx = (bottomWidth - topWidth) / 2;

    Path path = Path();
    path.moveTo(dx, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TrapezoidRightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double topWidth = size.width * 0.8;
    double bottomWidth = size.width;

    double dx = (bottomWidth - topWidth) / 2;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(dx + topWidth, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
