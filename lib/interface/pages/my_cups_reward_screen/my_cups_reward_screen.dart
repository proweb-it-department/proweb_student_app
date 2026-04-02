import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/cups/cups_bloc.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/cups/cups.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class MyRewardCupScreen extends StatelessWidget {
  const MyRewardCupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CupsBloc()..add(CupsEvent.started()),
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: AppBar(title: Text('Мои кубки'.tr())),
          body: MyRewardCupBody(),
        ),
      ),
    );
  }
}

class MyRewardCupBody extends StatelessWidget {
  const MyRewardCupBody({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: customColors?.containerColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      child: BlocBuilder<CupsBloc, CupsState>(
        builder: (context, state) {
          return switch (state) {
            CupsStateLoad() => Md3CirculeIndicator(),
            CupsStateComplited(cups: final cups) => ViewComplited(cups: cups),
          };
        },
      ),
    );
  }
}

class ViewComplited extends StatelessWidget {
  final ResponseLazeList<Cups> cups;
  const ViewComplited({super.key, required this.cups});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final myCups = cups.list
        .where(
          (element) =>
              element.users?.firstOrNull?.isRewardReceived == true &&
              element.users?.firstOrNull?.rewardReceivedAt != null,
        )
        .toList();
    myCups.sort((a, b) {
      return DateTime.parse(
            a.users!.firstOrNull!.rewardReceivedAt!,
          ).millisecondsSinceEpoch -
          DateTime.parse(
            b.users!.firstOrNull!.rewardReceivedAt!,
          ).millisecondsSinceEpoch;
    });
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Text(
          'Здесь собраны все ваши кубки, заработанные за выполнение заданий. Каждый кубок отражает ваш путь, усилия и достижения в обучении. Загляните также на страницу рейтинга, чтобы увидеть награды других студентов учебного центра PROWEB и вдохновиться на новые победы.',
          style: TextStyle(
            color: customColors?.primaryTextColor.withAlpha(150),
          ),
        ),
        SizedBox(height: 20),
        if (myCups.isEmpty) ...{
          NoData(
            text: 'Вы не получили не одного кубка',
            icon: Icons.emoji_events_outlined,
          ),
        } else ...{
          Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: myCups.map((e) {
              final index = myCups.indexWhere((element) => element.id == e.id);
              return ListTileBuilder(
                isStart: index == 0,
                isEnd: index == (myCups.length - 1),
                builder: (shape, contentPadding, isThreeLine) {
                  final at = e.users?.firstOrNull?.achievedAt;
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    tileColor: customColors?.primaryBg,
                    leading: CachedNetworkImage(imageUrl: e.icon!, width: 50),
                    title: Text(
                      localeText(e.name!, context.locale.languageCode),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: at == null
                        ? null
                        : Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                sl<LocalData>().getDateString(
                                  date: DateTime.parse(at),
                                ),
                              ),
                              Text(
                                '${'${DateTime.parse(at).hour}'.padLeft(2, '0')}:${'${DateTime.parse(at).minute}'.padLeft(2, '0')}',
                              ),
                            ],
                          ),
                  );
                },
              );
            }).toList(),
          ),
        },
      ],
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
