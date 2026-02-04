import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_groups_widgets.dart';

class HomeGroupsWidget extends StatelessWidget {
  const HomeGroupsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BalanceBloc, BalanceState>(
      builder: (context, state) {
        return state.when(
          initial: () => MyGroupsHeader(child: ShimmerGroup()),
          balance: (_) => BlocBuilderGroup(),
          error: () => BlocBuilderGroup(),
        );
      },
    );
  }
}

class BlocBuilderGroup extends StatelessWidget {
  const BlocBuilderGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyGroupsBloc, MyGroupsState>(
      bloc: context.read<MyGroupsBloc>()..add(MyGroupsEvent.started()),
      builder: (context, state) {
        return switch (state) {
          MyGroupsInitial() => MyGroupsHeader(child: ShimmerGroup()),
          MyGroupsLoading() => MyGroupsHeader(child: ShimmerGroup()),
          MyGroupsNotFound() => MyGroupsHeader(
            child: Center(
              child: NoData(
                text: 'education.no_group'.tr(),
                icon: Icons.group_off,
              ),
            ),
          ),
          MyGroupsErrorLoad() => MyGroupsHeader(
            child: Center(
              child: ErrorLoad(
                action: FilledButton(
                  onPressed: () {
                    final bloc = context.read<MyGroupsBloc>();
                    bloc.add(MyGroupsEvent.started());
                  },
                  child: Text('global_data.try_again'.tr()),
                ),
              ),
            ),
          ),
          MyGroupsComplited(groups: final groups) => MyGroupsWidgets(
            groups: groups,
          ),
        };
      },
    );
  }
}

class MyGroupsHeader extends StatelessWidget {
  final Widget? child;
  const MyGroupsHeader({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          color: customColors?.primaryBg,
          child: Ink(
            width: double.infinity,
            decoration: BoxDecoration(
              color: customColors?.containerColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
            padding: const EdgeInsets.only(
              left: 20,
              right: 10,
              top: 19,
              bottom: 19,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                ClipPath(
                  clipper: SvgClipper(PathSvgShape.bun),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    width: 20,
                    height: 20,
                    color: customColors?.primaryTextColor,
                  ),
                ),
                Text(
                  'education.my_groups'.tr(),
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(0),
          child: child ?? Md3CirculeIndicator(),
        ),
      ],
    );
  }
}

class ShimmerGroup extends StatelessWidget {
  const ShimmerGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Shimmer(
          colorOpacity: 0.2,
          duration: const Duration(seconds: 2),
          interval: Duration(milliseconds: 200),
          color: customColors?.additionalTwo ?? Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 210,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: customColors?.primaryBg.withAlpha(150),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: customColors?.borderColors ?? Colors.transparent,
                width: 2,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                IntrinsicHeight(
                  child: Container(
                    width: width - 20,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: customColors?.primaryBg,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: Ink(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              color: customColors?.containerColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Container(
                  width: width * 0.5,
                  height: 20,
                  decoration: BoxDecoration(
                    color: customColors?.containerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(height: 7),
                Container(
                  width: width * 0.3,
                  height: 14,
                  decoration: BoxDecoration(
                    color: customColors?.containerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: width * 0.9,
                  height: 20,
                  decoration: BoxDecoration(
                    color: customColors?.containerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
