import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/master_class/master_class_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/go_page.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/md3_refresh_indicator/md3_refresh_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/master_class/master_class.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class ProwebMasterClassScreen extends StatelessWidget {
  const ProwebMasterClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocProvider(
      create: (context) => MasterClassBloc(),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
        child: Container(
          color: customColors?.containerColor,
          child: ProwebMasterClassBody(),
        ),
      ),
    );
  }
}

class ProwebMasterClassBody extends StatefulWidget {
  const ProwebMasterClassBody({super.key});

  @override
  State<ProwebMasterClassBody> createState() => _ProwebMasterClassBodyState();
}

class _ProwebMasterClassBodyState extends State<ProwebMasterClassBody> {
  final ScrollController _scrollController = ScrollController();
  MasterClassStatus status = MasterClassStatus.active;

  void _changeStastus(MasterClassStatus st) {
    setState(() {
      status = st;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MasterClassBloc>();
    return Md3RefreshIndicator(
      onRefresh: () async {
        bloc.add(MasterClassEvent.started(status: status, offset: 0));
      },
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 80),
        children: [
          SegementStatusMC(status: status, onChange: _changeStastus),
          SizedBox(height: 10),
          BlocBuilder<MasterClassBloc, MasterClassState>(
            bloc: bloc
              ..add(MasterClassEvent.started(status: status, offset: 0)),
            builder: (context, state) {
              return switch (state) {
                MasterClassInitial() => Md3CirculeIndicator(),
                MasterClassLazylist(list: final list) => MasterClassListState(
                  list: list,
                  status: status,
                ),
              };
            },
          ),
        ],
      ),
    );
  }
}

class SegementStatusMC extends StatefulWidget {
  final MasterClassStatus status;
  final Function(MasterClassStatus st) onChange;
  const SegementStatusMC({
    super.key,
    required this.status,
    required this.onChange,
  });

  @override
  State<SegementStatusMC> createState() => _SegementStatusMCState();
}

class _SegementStatusMCState extends State<SegementStatusMC> {
  late MasterClassStatus status;

  @override
  void initState() {
    super.initState();
    status = widget.status;
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return SegmentedButton<MasterClassStatus>(
      style: SegmentedButton.styleFrom(
        iconColor: customColors?.primaryTextColor,
        backgroundColor: customColors?.containerColor,
        selectedBackgroundColor: customColors?.primaryBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: customColors?.borderColor ?? Colors.transparent,
          ),
        ),
      ),
      onSelectionChanged: (p0) {
        setState(() {
          status = p0.first;
        });
        widget.onChange(status);
        final bloc = context.read<MasterClassBloc>();
        bloc.add(MasterClassEvent.started(status: status, offset: 0));
      },
      segments: [
        ButtonSegment<MasterClassStatus>(
          value: MasterClassStatus.active,
          label: Text(
            'Предстоящие',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: customColors?.primaryTextColor),
          ),
        ),
        ButtonSegment<MasterClassStatus>(
          value: MasterClassStatus.completed,
          label: Text(
            'Прошедшие',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: customColors?.primaryTextColor),
          ),
        ),
      ],
      selected: {status},
    );
  }
}

class MasterClassListState extends StatelessWidget {
  final List<MasterClass> list;
  final MasterClassStatus status;
  const MasterClassListState({
    super.key,
    required this.list,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return switch (list.isNotEmpty) {
      false => NoData(
        text: status == MasterClassStatus.active
            ? 'Предстоящих мастер классов нет'
            : 'Завершенных мастер классов нет',
        icon: Icons.group_sharp,
        color: customColors?.primaryBg,
      ),
      true => MAsterClassList(list: list),
    };
  }
}

class MAsterClassList extends StatelessWidget {
  final List<MasterClass> list;
  const MAsterClassList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final double borderRadius = 16;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: list.map((e) {
        final index = list.indexWhere((element) {
          return element.id == e.id;
        });
        final length = list.length - 1;
        final cover = e.banner;
        final date = e.datetime ?? '2025-01-01';
        final dateString = sl<LocalData>()
            .getDateString(date: DateTime.parse(date))
            .replaceAll(',', '');
        final hour = DateTime.parse(date).hour.toString().padLeft(2, '0');
        final minute = DateTime.parse(date).minute.toString().padLeft(2, '0');
        return ListTileBuilder(
          isStart: index == 0,
          isEnd: length == index,
          builder: (shape, contentPadding, isThreeLine) {
            return Card.outlined(
              shape: shape,
              clipBehavior: Clip.antiAlias,
              color: customColors?.primaryBg,
              child: ClipRRect(
                borderRadius: shape.borderRadius,
                child: Material(
                  shape: shape,
                  color: Colors.transparent,
                  child: InkWell(
                    enableFeedback: true,
                    onTap: () async {
                      final id = e.id;
                      if (id == null) return;
                      context.router.navigate(MasterClassRoute(id: id));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (cover != null)
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(
                                borderRadius,
                              ),
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: customColors?.additionalOne,
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(cover),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ListTile(
                          contentPadding: contentPadding,
                          title: Text(
                            e.name ?? '- - -',
                            style: TextStyle(
                              fontSize: 18,
                              color: customColors?.primaryTextColor,
                            ),
                          ),
                          trailing: GoPage(
                            color: customColors?.containerColor,
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.chevron_right),
                          ),
                          subtitle: Opacity(
                            opacity: 0.7,
                            child: Padding(
                              padding: EdgeInsetsGeometry.only(top: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                spacing: 10,
                                children: [
                                  Icon(Icons.event),
                                  Text('$dateString, $hour:$minute'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
