import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/network/chat/get/chat.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/bloc/my_telegram_connected/my_telegram_connected_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/telegram_user/telegram_user.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';

@RoutePage()
class TelegramScreen extends StatelessWidget {
  final MyTelegramConnectedBloc bloc;
  const TelegramScreen({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: TelegramScafold(),
      ),
    );
  }
}

class TelegramScafold extends StatelessWidget {
  const TelegramScafold({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MyTelegramConnectedBloc>();
    return Scaffold(
      appBar: AppBar(title: Text('Привязка Telegram')),
      body: RefreshIndicator(
        onRefresh: () async {
          bloc.add(MyTelegramConnectedEvent.started());
        },
        child: BlocBuilder<MyTelegramConnectedBloc, MyTelegramConnectedState>(
          builder: (context, state) {
            return switch (state) {
              MyTelegramConnectedInitial() => Md3CirculeIndicator(),
              MyTelegramConnectedLoad() => Md3CirculeIndicator(),
              MyTelegramConnectedComplited(tgUserList: final tgUserList) =>
                TgList(tgUserList: tgUserList),
            };
          },
        ),
      ),
    );
  }
}

class TgList extends StatefulWidget {
  final List<TelegramUser> tgUserList;
  const TgList({super.key, required this.tgUserList});

  @override
  State<TgList> createState() => _TgListState();
}

class _TgListState extends State<TgList> {
  String? idSubscribe;

  @override
  void initState() {
    super.initState();
    idSubscribe = sl<Channel>().connect.subscribe(
      channel: WsEvent.telegramLinked.name,
      connection: ConnectionData(
        callback: (data) {
          if (context.mounted) {
            context.read<MyTelegramConnectedBloc>().add(
              MyTelegramConnectedEvent.started(),
            );
          }
        },
      ),
    );
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

    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 2,
        children: [
          Text(
            'Привязка аккаунта Telegram необходима для того, чтобы вы всегда оставались в курсе всего, что касается вашего обучения в PROWEB. После подключения вы будете получать только актуальные и полезные уведомления, касаемо вашего баланса, домашних заданий и многое другое.',
          ),
          SizedBox(height: 10),
          if (widget.tgUserList.isEmpty)
            SizedBox(
              width: double.infinity,
              child: NoData(
                text: 'Telegram аккаун не привязан',
                icon: Icons.send_time_extension_rounded,
              ),
            )
          else
            ViewTgList(tgUserList: widget.tgUserList),

          if (widget.tgUserList.length < 3) SizedBox(height: 8),
          if (widget.tgUserList.length < 3)
            FilledButton.icon(
              onPressed: () async {
                final url = await showDialog<String>(
                  context: context,
                  builder: (context) {
                    final lang = context.locale.countryCode ?? 'ru';
                    return AlertDialog(
                      title: Text(
                        'Привязать аккаунт',
                        style: TextStyle(fontSize: 20),
                      ),
                      content: FutureBuilder(
                        future: sl<GetResponsesChat>().getTgURL(lang),
                        builder: (context, snapshot) {
                          final url = snapshot.data?.url;
                          if (snapshot.connectionState !=
                              ConnectionState.done) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [Md3CirculeIndicator(center: false)],
                            );
                          }
                          if (url == null) {
                            return ErrorLoad();
                          }
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              NoData(
                                text:
                                    'Срок действия данного подключения 5 минут, после придётся производить подключение заново',
                                icon: Icons.info,
                              ),
                              SizedBox(height: 20),
                              FilledButton.icon(
                                onPressed: () {
                                  Navigator.of(context).pop(url);
                                },
                                style: FilledButton.styleFrom(
                                  backgroundColor: customColors?.containerColor,
                                  iconColor: customColors?.primaryTextColor,
                                  textStyle: TextStyle(
                                    color: customColors?.primaryTextColor,
                                  ),
                                ),
                                icon: Icon(Icons.link),
                                label: Text(
                                  'Перейти к подключению',
                                  style: TextStyle(
                                    color: customColors?.primaryTextColor,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Закрыть'),
                        ),
                      ],
                    );
                  },
                );
                if (url != null) {
                  sl<LocalData>().openLink(url: url);
                }
              },
              style: FilledButton.styleFrom(
                backgroundColor: customColors?.containerColor,
                textStyle: TextStyle(color: customColors?.primaryTextColor),
              ),
              label: Text(
                'Привязать аккаунт',
                style: TextStyle(color: customColors?.primaryTextColor),
              ),
              icon: Icon(Icons.add, color: customColors?.primaryTextColor),
            ),
        ],
      ),
    );
  }
}

class ViewTgList extends StatelessWidget {
  final List<TelegramUser> tgUserList;
  const ViewTgList({super.key, required this.tgUserList});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bloc = context.read<MyTelegramConnectedBloc>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: tgUserList.map((e) {
        final i = tgUserList.indexWhere((element) => element.id == e.id);
        return Material(
          color: Colors.transparent,
          child: ListTileBuilder(
            isStart: i == 0,
            isEnd: i == (tgUserList.length - 1),
            builder: (shape, contentPadding, isThreeLine) {
              final tg = tgUserList.elementAt(i);
              return ListTile(
                shape: shape,
                contentPadding: contentPadding,
                tileColor: customColors?.containerColor,
                isThreeLine: isThreeLine,
                minTileHeight: 50,
                onTap: () async {
                  final isDelete = await showDialog<bool>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          'Удалить привязкку',
                          style: TextStyle(fontSize: 20),
                        ),
                        content: Text(
                          'Вы уверены что хотите отвязать Telegram аккаунт от вашего профиля?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Отмена'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text('Удалить'),
                          ),
                        ],
                      );
                    },
                  );
                  final id = tg.id;
                  if (isDelete == true && id != null) {
                    bloc.add(MyTelegramConnectedEvent.delete(id: id));
                  }
                },
                leading: CircleAvatar(
                  backgroundColor: customColors?.primaryBg,
                  child: Text(
                    '${i + 1}',
                    style: TextStyle(color: customColors?.primaryTextColor),
                  ),
                ),
                title: Text('${tg.phone}'),
                subtitle: tg.username == null ? null : Text('@${tg.username}'),
                trailing: CircleAvatar(
                  backgroundColor: Colors.red.withAlpha(50),
                  child: Icon(Icons.delete, color: Colors.red),
                ),
              );
            },
          ),
        );
      }).toList(),
    );
  }
}
