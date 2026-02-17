import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/bloc/group_detail/group_detail_bloc.dart';
import 'package:proweb_student_app/bloc/homework_relation/homework_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/homework_info_item/homework_info_item.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/file_work.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/link_work.dart';
import 'package:proweb_student_app/models/homework_group/homework_group.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/color_helper/color_helper.dart';
import 'package:proweb_student_app/utils/color_helper/shade_colors.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';

class HomeworkAboutContent extends StatefulWidget {
  final HomeworkStudentRelationGroup relation;
  final HomeworkGroup work;
  final GroupDetailBloc? bloc;
  const HomeworkAboutContent({
    super.key,
    required this.relation,
    required this.work,
    this.bloc,
  });

  @override
  State<HomeworkAboutContent> createState() => _HomeworkAboutContentState();
}

class _HomeworkAboutContentState extends State<HomeworkAboutContent> {
  String? idSubscribe;

  @override
  void initState() {
    idSubscribe = sl<Channel>().connect.subscribe(
      channel: WsEvent.homeworkCheck.name,
      connection: ConnectionData(
        callback: (data) {
          final relationId = widget.relation.id;
          if (data is Map && context.mounted && relationId != null) {
            final bloc = context.read<HomeworkRelationBloc>();
            bloc.add(HomeworkRelationEvent.reloadWS(relationId: relationId));
          }
        },
        objectId: widget.relation.homework?.id,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    if (idSubscribe != null) {
      sl<Channel>().connect.unsubscribe(uuid: idSubscribe!);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final deadlineExpired = widget.relation.deadlineExpired;
    final groupBloc = context.read<GroupDetailBloc>();
    final color = groupBloc.state.whenOrNull(
      complited: (group, groupUser) => group.course?.color,
    );
    ShadeColors? shadeColor;
    ColorCreater? theme;
    if (color != null) {
      shadeColor = ShadeColors(color)..generate();
      theme = shadeColor.theme(
        context,
        light: ShadeNumber.shade100,
        dark: ShadeNumber.shade1100,
      );
    }
    final homeworkMaterial = widget.relation.homeworkMaterials?.isNotEmpty;
    return BlocBuilder<GroupDetailBloc, GroupDetailState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          loadGroupDetail: () => Center(child: Md3CirculeIndicator()),
          errorGroupDetail: () {
            return Center(child: ErrorLoad());
          },
          complited: (group, groupUser) {
            return ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
              child: Container(
                decoration: BoxDecoration(color: customColors?.containerColor),
                child: ListView(
                  padding: EdgeInsets.only(bottom: bottomPadding + 10, top: 10),
                  children: [
                    InfoDedlineWork(
                      groupUser: groupUser,
                      relation: widget.relation,
                      padding: EdgeInsetsGeometry.only(
                        bottom: 10,
                        left: 10,
                        right: 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: customColors?.primaryBg,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              widget.work.name ?? '',
                              style: TextStyle(fontSize: 22),
                            ),
                            SizedBox(height: 10),
                            if (widget.relation.createdAt != null ||
                                widget.work.level != null)
                              Opacity(
                                opacity: 0.7,
                                child: Wrap(
                                  spacing: 10,
                                  children: [
                                    if (widget.relation.createdAt != null)
                                      Row(
                                        spacing: 5,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.event),
                                          Text(
                                            sl<LocalData>().getDateString(
                                              date: DateTime.parse(
                                                widget.relation.createdAt!,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if (widget.work.level != null)
                                      Row(
                                        spacing: 5,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.signal_cellular_alt),
                                          Text(
                                            'group_homework.difficulty_level_${widget.work.level}'
                                                .tr(),
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            if (widget.relation.createdAt != null ||
                                widget.work.level != null)
                              SizedBox(height: 10),
                            if (widget.work.description != null)
                              Text(
                                sl<LocalData>().removeHtmlTags(
                                  widget.work.description!,
                                ),
                                style: TextStyle(
                                  color: customColors?.primaryTextColor
                                      .withAlpha(150),
                                ),
                              ),
                            if (widget.relation.materialDeleted == false &&
                                deadlineExpired == false) ...{
                              SizedBox(height: 15),
                              Row(
                                spacing: 0,
                                children: [
                                  Expanded(
                                    child: FilledButton.icon(
                                      style: FilledButton.styleFrom(
                                        backgroundColor:
                                            customColors?.additionalTwo,
                                        textStyle: TextStyle(
                                          color: customColors?.primaryTextColor,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              homeworkMaterial == false
                                              ? BorderRadiusGeometry.circular(
                                                  22,
                                                )
                                              : BorderRadiusGeometry.only(
                                                  topLeft: Radius.circular(22),
                                                  topRight: Radius.circular(6),
                                                  bottomLeft: Radius.circular(
                                                    22,
                                                  ),
                                                  bottomRight: Radius.circular(
                                                    6,
                                                  ),
                                                ),
                                        ),
                                      ),

                                      iconAlignment: IconAlignment.end,
                                      icon: Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        color: customColors?.primaryTextColor,
                                      ),
                                      onPressed: () {
                                        final tabsRouter = AutoTabsRouter.of(
                                          context,
                                        );
                                        tabsRouter.setActiveIndex(1);
                                      },
                                      label: Text(
                                        'group_homework.go_to_student_work'
                                            .tr(),
                                        style: TextStyle(
                                          color: customColors?.primaryTextColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (widget
                                          .relation
                                          .homeworkMaterials
                                          ?.isNotEmpty ==
                                      true)
                                    IconButton(
                                      onPressed: () {
                                        final tabsRouter = AutoTabsRouter.of(
                                          context,
                                        );
                                        tabsRouter.setActiveIndex(2);
                                      },
                                      style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusGeometry.only(
                                                topLeft: Radius.circular(6),
                                                topRight: Radius.circular(22),
                                                bottomLeft: Radius.circular(6),
                                                bottomRight: Radius.circular(
                                                  22,
                                                ),
                                              ),
                                        ),
                                        backgroundColor:
                                            customColors?.additionalTwo,
                                        padding: EdgeInsets.only(
                                          right: 10,
                                          left: 7,
                                        ),
                                      ),
                                      icon: Icon(Icons.comment),
                                    ),
                                ],
                              ),
                            },

                            if (widget.relation.score != null &&
                                widget.relation.score! > 0) ...{
                              SizedBox(height: 15),
                              Center(
                                child: IntrinsicWidth(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color:
                                            customColors?.borderColors ??
                                            Colors.transparent,
                                      ),
                                      color: HexColor(
                                        theme?.hexString() ?? '#ffffff',
                                      ),
                                    ),
                                    child: Row(
                                      spacing: 5,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(5, (index) {
                                        return Opacity(
                                          opacity:
                                              widget.relation.score != null &&
                                                  widget.relation.score! <=
                                                      index
                                              ? 0.2
                                              : 1,
                                          child: ScoreIcon(
                                            key: ValueKey(
                                              'key_int_score_${index + 1}',
                                            ),
                                            score: index + 1,
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              color: HexColor(
                                                color ?? '#ffffff',
                                              ),
                                              child: Center(
                                                child: Text('${index + 1}'),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  ),
                                ),
                              ),
                            } else if (homeworkMaterial == true)
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 15),
                                  Center(
                                    child: ScoreFadeShow(
                                      backgroundColor: HexColor(
                                        theme?.hexString() ?? '#ffffff',
                                      ),
                                      color: HexColor(color ?? '#ffffff'),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    AttachedLinks(work: widget.work),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class ScoreFadeShow extends StatefulWidget {
  final Color backgroundColor;
  final Color color;
  const ScoreFadeShow({
    super.key,
    required this.backgroundColor,
    required this.color,
  });

  @override
  State<ScoreFadeShow> createState() => _ScoreFadeShowState();
}

class _ScoreFadeShowState extends State<ScoreFadeShow>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnim;
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _fadeAnim = Tween<double>(
      begin: 0.2,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward();

    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % 5;
      });
      _controller
        ..reset()
        ..forward();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: customColors?.borderColors ?? Colors.transparent,
          ),
          color: widget.backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: List.generate(5, (index) {
            final isActive = index == _currentIndex;
            return ScoreIcon(
              score: index + 1,
              child: AnimatedBuilder(
                animation: _fadeAnim,
                builder: (context, child) {
                  return Opacity(
                    opacity: isActive ? _fadeAnim.value : 0.2,
                    child: child,
                  );
                },
                child: Container(
                  width: 30,
                  height: 30,
                  color: widget.color,
                  child: Center(child: Text('${index + 1}')),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class AttachedLinks extends StatefulWidget {
  final HomeworkGroup work;
  const AttachedLinks({super.key, required this.work});

  @override
  State<AttachedLinks> createState() => _AttachedLinksState();
}

class _AttachedLinksState extends State<AttachedLinks> {
  int _currentIndex = 0;
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 0,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 4,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _currentIndex == 0
                          ? null
                          : () {
                              _controller.animateToPage(
                                0,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                              setState(() {
                                _currentIndex = 0;
                              });
                            },
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        topLeft: Radius.circular(22),
                        bottomRight: Radius.circular(4),
                        topRight: Radius.circular(4),
                      ),
                      child: IntrinsicWidth(
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(22),
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(4),
                              topRight: Radius.circular(4),
                            ),
                            color: _currentIndex == 0
                                ? customColors?.primaryTextColor
                                : customColors?.primaryBg,
                          ),
                          child: Text(
                            'Ссылки',
                            style: TextStyle(
                              color: _currentIndex == 0
                                  ? customColors?.primaryBg
                                  : customColors?.primaryTextColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _currentIndex == 1
                          ? null
                          : () {
                              _controller.animateToPage(
                                1,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                              setState(() {
                                _currentIndex = 1;
                              });
                            },
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        topLeft: Radius.circular(4),
                        bottomRight: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                      child: IntrinsicWidth(
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(4),
                              topLeft: Radius.circular(4),
                              bottomRight: Radius.circular(22),
                              topRight: Radius.circular(22),
                            ),
                            color: _currentIndex == 1
                                ? customColors?.primaryTextColor
                                : customColors?.primaryBg,
                          ),
                          child: Text(
                            'Файлы',
                            style: TextStyle(
                              color: _currentIndex == 1
                                  ? customColors?.primaryBg
                                  : customColors?.primaryTextColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 4,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: _currentIndex == 0
                        ? null
                        : () {
                            _controller.animateToPage(
                              0,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                            setState(() {
                              _currentIndex = 0;
                            });
                          },
                    icon: Icon(Icons.chevron_left),
                  ),
                  IconButton(
                    onPressed: _currentIndex == 1
                        ? null
                        : () {
                            _controller.animateToPage(
                              1,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                            setState(() {
                              _currentIndex = 1;
                            });
                          },
                    icon: Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: PageView(
            pageSnapping: true,
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            children: [
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                child: LinksWork(attachFile: widget.work.attachedData ?? []),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                child: FileWork(attachFile: widget.work.attachedData ?? []),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class InfoDedlineWork extends StatelessWidget {
  final HomeworkStudentRelationGroup relation;
  final EdgeInsetsGeometry padding;
  final MyGroupsItem groupUser;
  const InfoDedlineWork({
    super.key,
    required this.relation,
    this.padding = EdgeInsetsGeometry.zero,
    required this.groupUser,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final deadlineLessonNumber = relation.deadlineLessonNumber;
    final lastLessonNumber = relation.lastLessonNumber;
    final deadlineExpired = relation.deadlineExpired;
    final checkedRetakenAt = relation.checkedRetakenAt;
    final score = relation.score;

    if (deadlineLessonNumber != null && deadlineLessonNumber != 0) {
      if (deadlineExpired == false &&
          !(checkedRetakenAt != null && score != null && score > 0) &&
          groupUser.status == StudentStatus.active) {
        return Padding(
          padding: padding,
          child: Material(
            color: Colors.transparent,
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              tileColor: customColors?.warningFillOp,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(22),
              ),
              leading: CircleAvatar(
                backgroundColor: customColors?.warningFillOp,
                child: Icon(Icons.alarm, color: customColors?.warningFill),
              ),
              title: Text(
                'Срок выполнения домашнего задания - до окончания $deadlineLessonNumber-го урока. С начала обучения пройдено $lastLessonNumber уроков.',
                style: TextStyle(
                  color: customColors?.warningFill.withAlpha(150),
                ),
              ),
            ),
          ),
        );
      } else if (checkedRetakenAt != null &&
          score != null &&
          score > 0 &&
          groupUser.status == StudentStatus.active) {
        return Padding(
          padding: padding,
          child: Material(
            color: Colors.transparent,
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              tileColor: customColors?.errorFillOp,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(22),
              ),
              leading: CircleAvatar(
                backgroundColor: customColors?.errorFillOp,
                child: Icon(
                  Icons.cancel_outlined,
                  color: customColors?.errorFill,
                ),
              ),
              title: Text(
                'Вы истратили все свои попытки для сдачи работы. Пересдать работу больше нельзя!',
                style: TextStyle(color: customColors?.errorFill.withAlpha(150)),
              ),
            ),
          ),
        );
      } else if (groupUser.status != StudentStatus.active) {
        return Padding(
          padding: padding,
          child: Material(
            color: Colors.transparent,
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              tileColor: customColors?.errorFillOp,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(22),
              ),
              leading: CircleAvatar(
                backgroundColor: customColors?.errorFillOp,
                child: Icon(
                  Icons.cancel_outlined,
                  color: customColors?.errorFill,
                ),
              ),
              title: Text(
                (groupUser.status == StudentStatus.leave ||
                        groupUser.status == StudentStatus.transfer)
                    ? 'Вы не являетесь учеником данной группы и сдать работу не можете.'
                    : 'Вы уже выпустелись и сдать работу не возможно.',
                style: TextStyle(color: customColors?.errorFill.withAlpha(150)),
              ),
            ),
          ),
        );
      } else {
        return Padding(
          padding: padding,
          child: Material(
            color: Colors.transparent,
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              tileColor: customColors?.errorFillOp,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(22),
              ),
              leading: CircleAvatar(
                backgroundColor: customColors?.errorFillOp,
                child: Icon(
                  Icons.cancel_outlined,
                  color: customColors?.errorFill,
                ),
              ),
              title: Text(
                'Срок сдачи работы истёк. Повторная сдача теперь невозможна.',
                style: TextStyle(color: customColors?.errorFill.withAlpha(150)),
              ),
            ),
          ),
        );
      }
    } else if (deadlineLessonNumber == 0 &&
        groupUser.status != StudentStatus.active) {
      return Padding(
        padding: padding,
        child: Material(
          color: Colors.transparent,
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            tileColor: customColors?.errorFillOp,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(22),
            ),
            leading: CircleAvatar(
              backgroundColor: customColors?.errorFillOp,
              child: Icon(
                Icons.cancel_outlined,
                color: customColors?.errorFill,
              ),
            ),
            title: Text(
              (groupUser.status == StudentStatus.leave ||
                      groupUser.status == StudentStatus.transfer)
                  ? 'Вы не являетесь учеником данной группы и сдать работу не можете.'
                  : 'Вы уже выпустелись и сдать работу не возможно.',
              style: TextStyle(color: customColors?.errorFill.withAlpha(150)),
            ),
          ),
        ),
      );
    }

    return SizedBox();
  }
}
