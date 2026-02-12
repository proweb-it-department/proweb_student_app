import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/current_master_class/current_master_class_bloc.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/go_page.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/premium_container/premium_container.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_sign_up_screen.dart';
import 'package:proweb_student_app/models/master_class/master_class.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/my_reserv_master_class/my_reserv_master_class.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class MasterClassScreen extends StatelessWidget {
  final int id;
  const MasterClassScreen({super.key, @PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CurrentMasterClassBloc(),
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: MasterClassMyGroups(id: id),
      ),
    );
  }
}

class MasterClassMyGroups extends StatelessWidget {
  final int id;
  const MasterClassMyGroups({super.key, required this.id});

  Widget load() => Scaffold(appBar: AppBar(), body: Md3CirculeIndicator());

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MyGroupsBloc>();
    final loadState = switch (bloc.state) {
      MyGroupsInitial() => true,
      MyGroupsLoading() => false,
      MyGroupsErrorLoad() => true,
      MyGroupsNotFound() => true,
      MyGroupsComplited() => false,
    };
    return BlocBuilder<MyGroupsBloc, MyGroupsState>(
      bloc: loadState ? (bloc..add(MyGroupsEvent.started())) : null,
      builder: (context, state) {
        return switch (state) {
          MyGroupsInitial() => load(),
          MyGroupsLoading() => load(),
          MyGroupsErrorLoad() => MasterClassBody(groups: [], id: id),
          MyGroupsNotFound() => MasterClassBody(groups: [], id: id),
          MyGroupsComplited(groups: final groups) => MasterClassBody(
            groups: groups,
            id: id,
          ),
        };
      },
    );
  }
}

class MasterClassBody extends StatelessWidget {
  final int id;
  final List<MyGroupsItem> groups;
  const MasterClassBody({super.key, required this.groups, required this.id});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CurrentMasterClassBloc>();
    final load = switch (bloc.state) {
      CurrentMasterClassInitial() => true,
      CurrentMasterClassLoad() => false,
      CurrentMasterClassError() => false,
      CurrentMasterClassComplited() => false,
    };
    return BlocBuilder<CurrentMasterClassBloc, CurrentMasterClassState>(
      bloc: load ? (bloc..add(CurrentMasterClassEvent.started(id: id))) : null,
      builder: (context, state) {
        return switch (state) {
          CurrentMasterClassInitial() => Scaffold(
            appBar: AppBar(),
            body: Md3CirculeIndicator(),
          ),
          CurrentMasterClassLoad() => Scaffold(
            appBar: AppBar(),
            body: Md3CirculeIndicator(),
          ),
          CurrentMasterClassError() => Scaffold(
            appBar: AppBar(),
            body: ErrorLoad(),
          ),
          CurrentMasterClassComplited(
            masterClass: final masterClass,
            reserv: final reserv,
            video: final video,
          ) =>
            MasterClassView(
              masterClass: masterClass,
              groups: groups,
              reserv: reserv,
              video: video,
            ),
        };
      },
    );
  }
}

class MasterClassView extends StatelessWidget {
  final MasterClass masterClass;
  final MyReservMasterClass? reserv;
  final VideoModel? video;
  final List<MyGroupsItem> groups;
  const MasterClassView({
    super.key,
    required this.masterClass,
    this.reserv,
    this.video,
    required this.groups,
  });

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: HeaderMasterClass(masterClass: masterClass),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _TabBarHeaderDelegate(
                  topPadding: top,
                  tabBar: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    indicatorWeight: 4,
                    dragStartBehavior: DragStartBehavior.down,
                    dividerHeight: 0,
                    tabs: [
                      Tab(text: "Описание"),
                      Tab(text: "Информация"),
                    ],
                  ),
                ),
              ),
            ];
          },

          body: TabBarView(
            children: [
              MasterClassDescription(masterClass: masterClass),
              MasterClassInforamtion(masterClass: masterClass, video: video),
            ],
          ),
        ),
      ),
    );
  }
}

class MasterClassDescription extends StatelessWidget {
  final MasterClass masterClass;
  const MasterClassDescription({super.key, required this.masterClass});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    String desc = sl<LocalData>().removeHtmlTags(
      (masterClass.description ?? ''),
    );

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        color: customColors?.containerColor,
        padding: EdgeInsets.all(14),
        child: Text(desc, style: TextStyle(fontSize: 16)),
      ),
    );
  }

  String normalizeBr(String html) {
    final brRegex = RegExp(r'<\s*br\s*/?\s*>', caseSensitive: false);
    return html.replaceAll(brRegex, '<br/><br/>');
  }
}

class MasterClassInforamtion extends StatelessWidget {
  final MasterClass masterClass;
  final VideoModel? video;
  const MasterClassInforamtion({
    super.key,
    required this.masterClass,
    this.video,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final date = masterClass.datetime ?? '2025-01-01';
    final dateString = sl<LocalData>()
        .getDateString(date: DateTime.parse(date))
        .replaceAll(',', '');
    final hour = DateTime.parse(date).hour.toString().padLeft(2, '0');
    final minute = DateTime.parse(date).minute.toString().padLeft(2, '0');
    final room = masterClass.cabinet;
    final venueName = masterClass.venueName;
    final venueCapacity = masterClass.venueCapacity;
    final isPremiumOnlyWatch = masterClass.isPremiumOnlyWatch;
    final isPremiumOnly = masterClass.isPremiumOnly;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        color: customColors?.containerColor,
        padding: EdgeInsets.all(10),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTileBuilder(
              isStart: true,
              isEnd: false,
              builder: (shape, contentPadding, isThreeLine) {
                return ListTile(
                  shape: shape,
                  contentPadding: contentPadding,
                  leading: IconAvatar(icon: Icons.event),
                  tileColor: customColors?.primaryBg,
                  title: Opacity(
                    opacity: 0.7,
                    child: Text('Дата и время проведения'),
                  ),
                  subtitle: Text('$dateString, $hour:$minute'),
                );
              },
            ),
            SizedBox(height: 2),
            if (room != null) ...{
              ListTileBuilder(
                isStart: false,
                isEnd: false,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    onTap: () {
                      final lat = room.branch?.latitude;
                      final lng = room.branch?.longitude;
                      final name = room.branch?.name;
                      if (lat == null || lng == null) return;
                      showBottomSheetMapApps(
                        context,
                        title: name ?? '',
                        latitude: double.parse(lat),
                        longitude: double.parse(lng),
                      );
                    },
                    leading: IconAvatar(icon: Icons.home_work_rounded),
                    tileColor: customColors?.primaryBg,
                    title: Opacity(opacity: 0.7, child: Text('Филиал')),
                    subtitle: Text(room.branch?.name ?? '- - -'),
                    trailing: GoPage(
                      color: customColors?.containerColor,
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.open_in_new, size: 16),
                    ),
                  );
                },
              ),
              SizedBox(height: 2),
              ListTileBuilder(
                isStart: false,
                isEnd: false,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,

                    leading: IconAvatar(icon: Icons.door_back_door_outlined),
                    tileColor: customColors?.primaryBg,
                    title: Opacity(opacity: 0.7, child: Text('Кабинет')),
                    subtitle: Text(room.name ?? '- - -'),
                  );
                },
              ),
              SizedBox(height: 2),
              ListTileBuilder(
                isStart: false,
                isEnd: false,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,

                    leading: IconAvatar(icon: Icons.groups),
                    tileColor: customColors?.primaryBg,
                    title: Opacity(
                      opacity: 0.7,
                      child: Text('Вместительность'),
                    ),
                    subtitle: Text('${room.capacity ?? 0}'),
                  );
                },
              ),
            } else if (venueName != null) ...{
              ListTileBuilder(
                isStart: false,
                isEnd: false,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    leading: IconAvatar(icon: Icons.room),
                    tileColor: customColors?.primaryBg,
                    title: Opacity(
                      opacity: 0.7,
                      child: Text('Место проведения'),
                    ),
                    subtitle: Text(venueName),
                  );
                },
              ),
              SizedBox(height: 2),
              ListTileBuilder(
                isStart: false,
                isEnd: false,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,

                    leading: IconAvatar(icon: Icons.groups),
                    tileColor: customColors?.primaryBg,
                    title: Opacity(
                      opacity: 0.7,
                      child: Text('Вместительность'),
                    ),
                    subtitle: Text('${venueCapacity ?? 0}'),
                  );
                },
              ),
            },
            if (isPremiumOnlyWatch == true && video != null) ...{
              SizedBox(height: 2),
              ListTileBuilder(
                isStart: false,
                isEnd: false,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    leading: IconAvatar(icon: Icons.remove_red_eye),
                    tileColor: customColors?.primaryBg,
                    title: Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Просмотр данного мастер достпно только с тарифом PREMIUM',
                      ),
                    ),
                  );
                },
              ),
            },
            if (isPremiumOnly == true) ...{
              SizedBox(height: 2),
              ListTileBuilder(
                isStart: false,
                isEnd: true,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    leading: PremiumContainer(text: 'ТАРИФ'),
                    tileColor: customColors?.primaryBg,
                    title: Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Запись на данный мастер класс можно только если вы обучаетесь  с PREMIUM тарифом',
                      ),
                    ),
                  );
                },
              ),
            } else ...{
              SizedBox(height: 2),
              ListTileBuilder(
                isStart: false,
                isEnd: true,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    leading: IconAvatar(icon: Icons.group_add),
                    tileColor: customColors?.primaryBg,
                    title: Opacity(
                      opacity: 0.7,
                      child: Text('Запись доступна на данный мастер класс'),
                    ),
                  );
                },
              ),
            },
          ],
        ),
      ),
    );
  }
}

class HeaderMasterClass extends StatelessWidget {
  final MasterClass masterClass;
  const HeaderMasterClass({super.key, required this.masterClass});

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    final customColors = Theme.of(context).extension<CustomColors>();
    final banner = masterClass.banner;
    final date = masterClass.datetime ?? '2025-01-01';
    final dateString = sl<LocalData>()
        .getDateString(date: DateTime.parse(date))
        .replaceAll(',', '');
    final hour = DateTime.parse(date).hour.toString().padLeft(2, '0');
    final minute = DateTime.parse(date).minute.toString().padLeft(2, '0');
    return Container(
      color: customColors?.primaryBg,
      child: Column(
        children: [
          if (banner != null)
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: CachedNetworkImage(
                    imageUrl: banner,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: top + 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: AlignmentGeometry.topCenter,
                        end: AlignmentGeometry.bottomCenter,
                        colors: [
                          customColors?.primaryBg ?? Colors.transparent,
                          customColors?.primaryBg.withAlpha(0) ??
                              Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          Container(
            width: double.infinity,
            padding: EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 5,
              children: [
                Text(
                  masterClass.name ?? '- - -',
                  style: TextStyle(fontSize: 18),
                ),
                ListTile(
                  leading: IconAvatar(icon: Icons.event),
                  contentPadding: EdgeInsets.zero,
                  minTileHeight: 30,
                  title: Opacity(
                    opacity: 0.7,
                    child: Text('Дата и время проведения'),
                  ),
                  subtitle: Text('$dateString, $hour:$minute'),

                  trailing: TralinkMasterClassStatus(masterClass: masterClass),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TralinkMasterClassStatus extends StatelessWidget {
  final MasterClass masterClass;
  const TralinkMasterClassStatus({super.key, required this.masterClass});

  @override
  Widget build(BuildContext context) {
    final status = masterClass.status;
    if (status == null) return SizedBox();
    Color color = Colors.yellow.shade700;
    String text = 'Предстоящий';
    if (status == MasterClassStatus.archive) {
      color = Colors.red;
      text = 'Архивирован';
    } else if (status == MasterClassStatus.completed) {
      color = Colors.green;
      text = 'Завершенный';
    } else if (status == MasterClassStatus.draft) {
      color = Colors.grey;
      text = 'Подготовка';
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha(100),
        borderRadius: BorderRadius.circular(22),
      ),
      constraints: BoxConstraints(maxWidth: 100, maxHeight: 20),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(color: color),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _TabBarHeaderDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final double topPadding;
  final Widget? actions;

  _TabBarHeaderDelegate({
    required this.tabBar,
    required this.topPadding,
    // ignore: unused_element_parameter
    this.actions,
  });

  @override
  double get minExtent => topPadding + tabBar.preferredSize.height;

  @override
  double get maxExtent => topPadding + tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: topPadding),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      tabBar,
                    ],
                  ),
                ),
                actions ?? SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _TabBarHeaderDelegate oldDelegate) =>
      oldDelegate.topPadding != topPadding ||
      oldDelegate.tabBar != tabBar ||
      oldDelegate.actions != actions;
}
