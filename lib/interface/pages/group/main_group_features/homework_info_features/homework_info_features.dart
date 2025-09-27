import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/group_detail/group_detail_bloc.dart';
import 'package:proweb_student_app/bloc/homework_group/homework_group_bloc.dart';
import 'package:proweb_student_app/bloc/material_group/material_group_bloc.dart';
import 'package:proweb_student_app/bloc/test_group/test_group_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/homework_info_body/homework_info_body.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/material_info_body/material_info_body.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/test_info_body/test_info_body.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class HomeworkGroupInfoScreen extends StatelessWidget {
  final int groupId;

  const HomeworkGroupInfoScreen({
    super.key,
    @PathParam.inherit('id') required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    final groupDetail = context.read<GroupDetailBloc>();

    return groupDetail.state.when(
      initial: () => Center(child: Md3CirculeIndicator()),
      loadGroupDetail: () => Center(child: Md3CirculeIndicator()),
      errorGroupDetail: () => Center(child: ErrorLoad()),
      complited: (group, groupUser) {
        return HomeworkInfoFeatures(
          groupId: groupId,
          group: group,
          groupUser: groupUser,
        );
      },
    );
  }
}

class HomeworkInfoFeatures extends StatefulWidget {
  final int groupId;
  final GroupDetail group;
  final MyGroupsItem groupUser;
  const HomeworkInfoFeatures({
    super.key,
    required this.groupId,
    required this.group,
    required this.groupUser,
  });

  @override
  State<HomeworkInfoFeatures> createState() => _HomeworkInfoFeaturesState();
}

class _HomeworkInfoFeaturesState extends State<HomeworkInfoFeatures> {
  int page = 0;
  HomeworkSegements segmentView = HomeworkSegements.homework;

  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages.add(
      SelectedHomework(
        group: widget.group,
        groupId: widget.groupId,
        groupUser: widget.groupUser,
        key: ValueKey<int>(1),
      ),
    );
    pages.add(
      SelectedMaterial(
        group: widget.group,
        groupId: widget.groupId,
        groupUser: widget.groupUser,
        key: ValueKey<int>(2),
      ),
    );
    pages.add(
      SelectedTest(
        group: widget.group,
        groupId: widget.groupId,
        groupUser: widget.groupUser,
        key: ValueKey<int>(3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return HomeworkGroupBloc()..add(
              HomeworkGroupEvent.started(
                groupId: widget.groupId,
                limit: LimitRequest.homework,
                offset: 0,
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return MaterialGroupBloc()..add(
              MaterialGroupEvent.started(
                groupId: widget.groupId,
                limit: LimitRequest.homework,
                offset: 0,
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return TestGroupBloc()..add(
              TestGroupEvent.started(
                groupId: widget.groupId,
                limit: LimitRequest.homework,
                offset: 0,
              ),
            );
          },
        ),
      ],
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: SegmentedButton<HomeworkSegements>(
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
              segments: <ButtonSegment<HomeworkSegements>>[
                ButtonSegment<HomeworkSegements>(
                  value: HomeworkSegements.homework,
                  label: Text(
                    'group_homework.segement_btn_homework'.tr(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: customColors?.primaryTextColor),
                  ),
                  icon: Icon(Icons.assignment),
                ),
                ButtonSegment<HomeworkSegements>(
                  value: HomeworkSegements.material,
                  label: Text(
                    'group_homework.segement_btn_material'.tr(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: customColors?.primaryTextColor),
                  ),
                  icon: Icon(Icons.description),
                ),
                ButtonSegment<HomeworkSegements>(
                  value: HomeworkSegements.test,
                  label: Text(
                    'group_homework.segement_btn_test'.tr(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: customColors?.primaryTextColor),
                  ),
                  icon: Icon(Icons.checklist),
                ),
              ],
              selected: {segmentView},
              onSelectionChanged: (p0) {
                setState(() {
                  segmentView = p0.first;
                });
                setState(() {
                  final position = HomeworkSegements.values.indexWhere((
                    element,
                  ) {
                    return element == p0.first;
                  });
                  page = position;
                });
              },
            ),
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: pages[page],
            ),
          ),
        ],
      ),
    );
  }
}

class SelectedHomework extends StatelessWidget {
  final int groupId;
  final GroupDetail group;
  final MyGroupsItem groupUser;
  const SelectedHomework({
    super.key,
    required this.groupId,
    required this.group,
    required this.groupUser,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeworkGroupBloc, HomeworkGroupState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          load: () => Center(child: Md3CirculeIndicator()),
          error: () => Center(
            child: ErrorLoad(
              action: FilledButton(
                onPressed: () {
                  final bloc = context.read<HomeworkGroupBloc>();
                  bloc.add(
                    HomeworkGroupEvent.started(
                      groupId: groupId,
                      limit: 50,
                      offset: 0,
                    ),
                  );
                },
                child: Text('global_data.try_again'.tr()),
              ),
            ),
          ),
          complited: (data) {
            return HomeworkInfoBody(data: data, group: group);
          },
        );
      },
    );
  }
}

class SelectedMaterial extends StatelessWidget {
  final int groupId;
  final GroupDetail group;
  final MyGroupsItem groupUser;
  const SelectedMaterial({
    super.key,
    required this.groupId,
    required this.group,
    required this.groupUser,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaterialGroupBloc, MaterialGroupState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          load: () => Center(child: Md3CirculeIndicator()),
          error: () => Center(
            child: ErrorLoad(
              action: FilledButton(
                onPressed: () {
                  final bloc = context.read<MaterialGroupBloc>();
                  bloc.add(
                    MaterialGroupEvent.started(
                      groupId: groupId,
                      limit: 50,
                      offset: 0,
                    ),
                  );
                },
                child: Text('global_data.try_again'.tr()),
              ),
            ),
          ),
          complited: (data) {
            return MaterialInfoBody(data: data, group: group);
          },
        );
      },
    );
  }
}

class SelectedTest extends StatelessWidget {
  final int groupId;
  final GroupDetail group;
  final MyGroupsItem groupUser;
  const SelectedTest({
    super.key,
    required this.groupId,
    required this.group,
    required this.groupUser,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestGroupBloc, TestGroupState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          load: () => Center(child: Md3CirculeIndicator()),
          error: () => Center(
            child: ErrorLoad(
              action: FilledButton(
                onPressed: () {
                  final bloc = context.read<TestGroupBloc>();
                  bloc.add(
                    TestGroupEvent.started(
                      groupId: groupId,
                      limit: 50,
                      offset: 0,
                    ),
                  );
                },
                child: Text('global_data.try_again'.tr()),
              ),
            ),
          ),
          complited: (data) {
            return TestInfoBody(data: data, group: group);
          },
        );
      },
    );
  }
}
