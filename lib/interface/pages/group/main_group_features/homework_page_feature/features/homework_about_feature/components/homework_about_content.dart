import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/bloc/group_detail/group_detail_bloc.dart';
import 'package:proweb_student_app/bloc/homework_relation/homework_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/homework_info_item/homework_info_item.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/file_work.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/link_work.dart';
import 'package:proweb_student_app/models/homework_group/homework_group.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/utils/color_helper/color_helper.dart';
import 'package:proweb_student_app/utils/color_helper/shade_colors.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';
import 'package:talker_logger/talker_logger.dart';

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
    // TODO: implement dispose
    if (idSubscribe != null) {
      sl<Channel>().connect.unsubscribe(uuid: idSubscribe!);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
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
    return ListView(
      padding: EdgeInsets.only(
        bottom: bottomPadding + 10,
        left: 10,
        right: 10,
        top: 10,
      ),
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: customColors?.containerColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: customColors?.borderColor ?? Colors.black,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'group_homework.homework_about_max'.tr(),
                style: TextStyle(
                  color: customColors?.primaryTextColor.withAlpha(150),
                ),
              ),
              SizedBox(height: 20),
              Text(widget.work.name ?? '', style: TextStyle(fontSize: 22)),
              SizedBox(height: 10),
              if (widget.work.description != null)
                Text(
                  sl<LocalData>().removeHtmlTags(widget.work.description!),
                  style: TextStyle(
                    color: customColors?.primaryTextColor.withAlpha(150),
                  ),
                ),
              if (widget.relation.materialDeleted == false)
                SizedBox(height: 15),
              if (widget.relation.materialDeleted == false)
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: customColors?.additionalTwo,
                          textStyle: TextStyle(
                            color: customColors?.primaryTextColor,
                          ),
                        ),
                        iconAlignment: IconAlignment.end,
                        icon: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: customColors?.primaryTextColor,
                        ),
                        onPressed: () {
                          final tabsRouter = AutoTabsRouter.of(context);
                          tabsRouter.setActiveIndex(1);
                        },
                        label: Text(
                          'group_homework.go_to_student_work'.tr(),
                          style: TextStyle(
                            color: customColors?.primaryTextColor,
                          ),
                        ),
                      ),
                    ),
                    if (widget.relation.homeworkMaterials?.isNotEmpty == true)
                      IconButton(
                        onPressed: () {
                          final tabsRouter = AutoTabsRouter.of(context);
                          tabsRouter.setActiveIndex(2);
                        },
                        icon: Icon(Icons.comment),
                      ),
                  ],
                ),
              if (widget.relation.score != null && widget.relation.score! > 0)
                SizedBox(height: 15),
              if (widget.relation.score != null && widget.relation.score! > 0)
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
                              customColors?.borderColors ?? Colors.transparent,
                        ),
                        color: HexColor(theme?.hexString() ?? '#ffffff'),
                      ),
                      child: Row(
                        spacing: 5,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) {
                          return Opacity(
                            opacity:
                                widget.relation.score != null &&
                                    widget.relation.score! <= index
                                ? 0.2
                                : 1,
                            child: ScoreIcon(
                              key: ValueKey('key_int_score_${index + 1}'),
                              score: index + 1,
                              child: Container(
                                width: 30,
                                height: 30,
                                color: HexColor(color ?? '#ffffff'),
                                child: Center(child: Text('${index + 1}')),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 15),
        LinksWork(attachFile: widget.work.attachedData ?? []),
        SizedBox(height: 15),
        FileWork(attachFile: widget.work.attachedData ?? []),
        if (widget.relation.createdBy?.user != null ||
            widget.relation.createdAt != null ||
            widget.work.level != null)
          SizedBox(height: 15),
        if (widget.relation.createdBy?.user != null ||
            widget.relation.createdAt != null ||
            widget.work.level != null)
          Column(
            spacing: 2,
            children: [
              if (widget.relation.createdBy?.user != null)
                Material(
                  color: Colors.transparent,
                  child: ListTileBuilder(
                    isStart: true,
                    isEnd: false,
                    builder: (shape, contentPadding, isThreeLine) {
                      return ListTile(
                        shape: shape,
                        contentPadding: contentPadding,
                        tileColor: customColors?.containerColor,
                        leading: Avatar(user: widget.relation.createdBy?.user),
                        title: Text('education.course_teacher'.tr()),
                        subtitle: Text(
                          sl<LocalData>().nameUser(
                            widget.relation.createdBy!.user!,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (widget.relation.createdAt != null)
                Material(
                  color: Colors.transparent,
                  child: ListTileBuilder(
                    isStart: false,
                    isEnd: false,
                    builder: (shape, contentPadding, isThreeLine) {
                      return ListTile(
                        shape: shape,
                        contentPadding: contentPadding,
                        tileColor: customColors?.containerColor,
                        leading: IconAvatar(icon: Icons.event),
                        title: Text('group_homework.destination_data'.tr()),
                        subtitle: Text(
                          sl<LocalData>().getDateString(
                            date: DateTime.parse(widget.relation.createdAt!),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (widget.work.level != null)
                Material(
                  color: Colors.transparent,
                  child: ListTileBuilder(
                    isStart: false,
                    isEnd: true,
                    builder: (shape, contentPadding, isThreeLine) {
                      return ListTile(
                        shape: shape,
                        contentPadding: contentPadding,
                        tileColor: customColors?.containerColor,
                        leading: IconAvatar(icon: Icons.signal_cellular_alt),
                        title: Text('group_homework.difficulty_level'.tr()),
                        subtitle: Text(
                          'group_homework.difficulty_level_${widget.work.level}'
                              .tr(),
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),
      ],
    );
  }
}
