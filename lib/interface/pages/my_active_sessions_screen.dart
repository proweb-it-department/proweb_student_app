import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/sessions/sessions_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class MyActiveSessionsScreen extends StatelessWidget {
  const MyActiveSessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('Активные сессии')),
        body: MyActiveSessionsBody(),
      ),
    );
  }
}

class MyActiveSessionsBody extends StatelessWidget {
  const MyActiveSessionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SessionsBloc>();
    return BlocBuilder<SessionsBloc, SessionsState>(
      bloc: bloc..add(SessionsEvent.getMySessions()),
      builder: (context, state) {
        return switch (state) {
          SessionsInitial() => Text('init'),
          SessionsLoad() => Md3CirculeIndicator(),
          SessionsError() => ErrorLoad(),
          SessionsNoAuth() => ErrorLoad(),
          SessionsList(list: final list, isLoad: final load) =>
            MyActiveSessionsList(list: list, load: load ?? false),
        };
      },
    );
  }
}

class MyActiveSessionsList extends StatelessWidget {
  final List<SessionsListItemModel> list;
  final bool load;
  const MyActiveSessionsList({
    super.key,
    required this.list,
    required this.load,
  });

  @override
  Widget build(BuildContext context) {
    final localdata = sl<LocalData>();

    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            'Здесь отображаются все активные сессии, подключенные к вашему аккаунту. Вы можете закрыть доступ к любому устройству.',
          ),
          SizedBox(height: 15),
          if (load)
            Md3CirculeIndicator(center: false)
          else
            FutureBuilder(
              future: localdata.uuid(),
              builder: (context, snapshot) {
                final data = snapshot.data;
                if (snapshot.connectionState != ConnectionState.done) {
                  return Md3CirculeIndicator(center: false);
                } else if (data == null) {
                  return Md3CirculeIndicator(center: false);
                }

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 2,
                  children: (list.map((session) {
                    final index = list.indexWhere(
                      (element) => element.sessionId == session.sessionId,
                    );
                    final currentSession = data == session.uuid;
                    return MyActiveSessionsItem(
                      session: session,
                      load: load,
                      isStart: index == 0,
                      isEnd: index == (list.length - 1),
                      currentSession: currentSession,
                    );
                  }).toList()),
                );
              },
            ),
        ],
      ),
    );
  }
}

class MyActiveSessionsItem extends StatefulWidget {
  final SessionsListItemModel session;
  final bool isStart;
  final bool isEnd;
  final bool currentSession;
  final bool load;
  const MyActiveSessionsItem({
    super.key,
    required this.session,
    required this.load,
    required this.isStart,
    required this.isEnd,
    required this.currentSession,
  });

  @override
  State<MyActiveSessionsItem> createState() => _MyActiveSessionsItemState();
}

class _MyActiveSessionsItemState extends State<MyActiveSessionsItem> {
  late ExpansibleController controller;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    controller = ExpansibleController();
    controller.addListener(() {
      setState(() {
        isExpanded = controller.isExpanded;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    final start = widget.isStart;
    final end = widget.isEnd;
    final startEnd = start && end;
    final double bottom = startEnd
        ? 22
        : start
        ? 0
        : end
        ? 22
        : 0;
    final double top = startEnd
        ? 22
        : start
        ? 22
        : 0;

    return ListTileBuilder(
      isStart: widget.isStart,
      isEnd: widget.isEnd,
      builder: (shape, contentPadding, isThreeLine) {
        return ExpansionTile(
          leading: icon,
          title: Text(widget.session.deviceName),
          subtitle: widget.currentSession ? Text('Текущая сессия') : null,
          backgroundColor: customColor?.containerColor,
          collapsedBackgroundColor: customColor?.containerColor,
          controller: controller,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.directional(
              bottomEnd: Radius.circular(bottom),
              bottomStart: Radius.circular(bottom),
              topEnd: Radius.circular(top),
              topStart: Radius.circular(top),
            ),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.directional(
              bottomEnd: Radius.circular(bottom),
              bottomStart: Radius.circular(bottom),
              topEnd: Radius.circular(top),
              topStart: Radius.circular(top),
            ),
          ),
          trailing: AnimatedRotation(
            turns: isExpanded ? -0.5 : 0,
            duration: Duration(milliseconds: 200),
            curve: Curves.linear,
            child: Ink(
              decoration: BoxDecoration(
                color: customColor?.primaryBg,
                borderRadius: BorderRadius.circular(80),
              ),
              child: Icon(Icons.keyboard_arrow_down_outlined),
            ),
          ),
          children: [
            Material(
              color: Colors.transparent,
              child: Ink(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    ListTileBuilder(
                      isStart: true,
                      isEnd: false,
                      builder: (shape, contentPadding, isThreeLine) {
                        return ListTile(
                          shape: shape,
                          tileColor: customColor?.primaryBg,
                          leading: IconAvatar(icon: Icons.dns),
                          title: Text('IP адрес'),
                          subtitle: Text(widget.session.ipAddr ?? '- - -'),
                        );
                      },
                    ),
                    ListTileBuilder(
                      isStart: false,
                      isEnd: false,
                      builder: (shape, contentPadding, isThreeLine) {
                        return ListTile(
                          shape: shape,
                          tileColor: customColor?.primaryBg,
                          leading: IconAvatar(icon: Icons.flag),
                          title: Text('Гео позиция'),
                          subtitle: Text(widget.session.location ?? '- - -'),
                        );
                      },
                    ),
                    ListTileBuilder(
                      isStart: false,
                      isEnd: false,
                      builder: (shape, contentPadding, isThreeLine) {
                        return ListTile(
                          shape: shape,
                          tileColor: customColor?.primaryBg,
                          leading: IconAvatar(icon: Icons.devices_rounded),
                          title: Text('Тип устройства'),
                          subtitle: Text(widget.session.deviceType),
                        );
                      },
                    ),
                    ListTileBuilder(
                      isStart: false,
                      isEnd: false,
                      builder: (shape, contentPadding, isThreeLine) {
                        return ListTile(
                          shape: shape,
                          tileColor: customColor?.primaryBg,
                          leading: IconAvatar(icon: Icons.login),
                          title: Text('Дата входа'),
                          subtitle: Text(
                            '${sl<LocalData>().getDateString(date: DateTime.parse(widget.session.createdAt)).replaceAll(',', '')} ${DateTime.parse(widget.session.createdAt).toLocal().hour.toString().padLeft(2, '0')}:${DateTime.parse(widget.session.createdAt).toLocal().minute.toString().padLeft(2, '0')}',
                          ),
                        );
                      },
                    ),
                    if (widget.session.updatedAt != null)
                      ListTileBuilder(
                        isStart: false,
                        isEnd: true,
                        builder: (shape, contentPadding, isThreeLine) {
                          return ListTile(
                            shape: shape,
                            tileColor: customColor?.primaryBg,
                            leading: IconAvatar(icon: Icons.today_outlined),
                            title: Text('Последние действия'),
                            subtitle: Text(
                              '${sl<LocalData>().getDateString(date: DateTime.parse(widget.session.updatedAt!)).replaceAll(',', '')} ${DateTime.parse(widget.session.updatedAt!).toLocal().hour.toString().padLeft(2, '0')}:${DateTime.parse(widget.session.updatedAt!).toLocal().minute.toString().padLeft(2, '0')}',
                            ),
                          );
                        },
                      ),
                    if (widget.currentSession == false) ...{
                      SizedBox(height: 3),
                      FilledButton.icon(
                        onPressed: () {
                          final bloc = context.read<SessionsBloc>();
                          bloc.add(
                            SessionsEvent.closeSession(
                              sessionId: widget.session.sessionId,
                            ),
                          );
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: customColor?.primaryBg,
                          textStyle: TextStyle(
                            color: customColor?.primaryTextColor,
                          ),
                        ),
                        icon: Icon(
                          Icons.close,
                          color: customColor?.primaryTextColor,
                        ),
                        label: Text(
                          'Закрыть доступ',
                          style: TextStyle(
                            color: customColor?.primaryTextColor,
                          ),
                        ),
                      ),
                    },
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget get icon {
    final String deviceType = widget.session.deviceName.toLowerCase();
    if (deviceType.contains('safari')) {
      return Brand(Brands.safari);
    } else if (deviceType.contains('chrome')) {
      return Brand(Brands.chrome);
    } else if (deviceType.contains('edge')) {
      return Brand(Brands.microsoft_edge);
    } else if (deviceType.contains('samsung')) {
      return Brand(Brands.samsung);
    } else if (deviceType.contains('opera')) {
      return Brand(Brands.opera);
    } else if (deviceType.contains('yandex')) {
      return Brand(Brands.yandex_drive);
    } else if (deviceType.contains('xiaomi')) {
      return Brand(Brands.xiaomi);
    } else if (deviceType.contains('ios')) {
      return Brand(Brands.apple_logo);
    } else if (deviceType.contains('android')) {
      return Brand(Brands.android_os);
    } else {
      return Brand(Brands.chrome);
    }
  }
}
