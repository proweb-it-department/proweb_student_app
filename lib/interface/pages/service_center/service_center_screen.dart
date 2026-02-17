import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/service_center/service_center_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/service_center/service_center.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class ServiceCenterScreen extends StatelessWidget {
  const ServiceCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ServiceCenterBloc()..add(ServiceCenterEvent.started(offset: 0)),
      child: ServiceCenterScaffold(),
    );
  }
}

class ServiceCenterScaffold extends StatelessWidget {
  const ServiceCenterScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(isBorder: false),
      body: ServiceCenterBody(),
    );
  }
}

class ServiceCenterBody extends StatelessWidget {
  const ServiceCenterBody({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        color: customColors?.containerColor,

        child: BlocBuilder<ServiceCenterBloc, ServiceCenterState>(
          builder: (context, state) {
            return switch (state) {
              ServiceCenterInitial() => Md3CirculeIndicator(),
              ServiceCenterError() => Center(
                child: ErrorLoad(color: customColors?.primaryBg),
              ),
              ServiceCenterNotFound() => Center(
                child: NoData(
                  text: 'Вы ещё не обращались в наш сервис-центр.',
                  icon: Icons.support_agent_outlined,
                  color: customColors?.primaryBg,
                ),
              ),
              ServiceCenterComplited(list: final list) => ServiceCenterList(
                list: list,
              ),
            };
          },
        ),
      ),
    );
  }
}

class ServiceCenterList extends StatelessWidget {
  final List<ServiceCenter> list;
  const ServiceCenterList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return ListTileBuilder(
          isStart: index == 0,
          isEnd: index == (list.length - 1),
          builder: (shape, contentPadding, isThreeLine) {
            return ListTile();
          },
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 2),
      itemCount: list.length,
    );
  }
}
