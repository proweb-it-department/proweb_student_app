import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/branch/branch_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/go_page.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_sign_up_screen.dart';
import 'package:proweb_student_app/models/branche/branche.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class ProwebBranchScreen extends StatelessWidget {
  const ProwebBranchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        decoration: BoxDecoration(color: customColors?.containerColor),
        child: BlocProvider(
          create: (context) => BranchBloc()..add(BranchEvent.started()),
          child: ProwebBranchData(),
        ),
      ),
    );
  }
}

class ProwebBranchData extends StatelessWidget {
  const ProwebBranchData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BranchBloc, BranchState>(
      builder: (context, state) {
        return switch (state) {
          BranchInitial() => Md3CirculeIndicator(),
          BranchError() => ErrorLoad(),
          BranchComplited(branch: final branches) => ProwebBranches(
            branches: branches,
          ),
        };
      },
    );
  }
}

class ProwebBranches extends StatelessWidget {
  final List<Branche> branches;
  const ProwebBranches({super.key, required this.branches});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        final length = branches.length - 1;
        final branch = branches.elementAt(index);
        return ListTileBuilder(
          isStart: index == 0,
          isEnd: length == index,
          builder: (shape, contentPadding, isThreeLine) {
            return ListTile(
              tileColor: customColors?.primaryBg,
              shape: shape,
              contentPadding: contentPadding,
              onTap: () {
                showBottomSheetMapApps(
                  context,
                  title: branch.name ?? '- - -',
                  latitude: double.parse(branch.latitude!),
                  longitude: double.parse(branch.longitude!),
                );
              },
              title: Text(
                branch.name ?? '- - -',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Opacity(
                opacity: 0.7,
                child: Text(
                  '${branch.country}, ${branch.city}, ${branch.street}',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              trailing: GoPage(
                color: customColors?.containerColor,
                padding: EdgeInsets.all(8),
                child: Icon(Icons.open_in_new, size: 18),
              ),
            );
          },
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 2);
      },
      itemCount: branches.length,
    );
  }
}
