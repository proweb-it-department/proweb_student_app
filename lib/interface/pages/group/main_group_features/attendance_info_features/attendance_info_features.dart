import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/group_detail/group_detail_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/attendance_info_features/components/attendance_info_body/attendance_info_body.dart';
import 'package:proweb_student_app/models/attendance_lesson/attendance_lesson_bloc.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';

@RoutePage()
class AttendanceGroupInfoScreen extends StatelessWidget {
  final int groupId;
  const AttendanceGroupInfoScreen({
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
        return AttendanceInfoFeatures(
          group: group,
          groupId: groupId,
          groupUser: groupUser,
        );
      },
    );
  }
}

class AttendanceInfoFeatures extends StatelessWidget {
  final int groupId;
  final GroupDetail group;
  final MyGroupsItem groupUser;
  const AttendanceInfoFeatures({
    super.key,
    required this.group,
    required this.groupUser,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AttendanceLessonBloc()
        ..add(
          AttendanceLessonEvent.started(
            groupId: groupId,
            version: group.version,
          ),
        ),
      child: BlocBuilder<AttendanceLessonBloc, AttendanceLessonState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(child: Md3CirculeIndicator()),
            load: () => Center(child: Md3CirculeIndicator()),
            error: () => Center(
              child: ErrorLoad(
                action: FilledButton(
                  onPressed: () {
                    final bloc = context.read<AttendanceLessonBloc>();
                    bloc.add(AttendanceLessonEvent.started(groupId: groupId));
                  },
                  child: Text('global_data.try_again'.tr()),
                ),
              ),
            ),
            complited:
                (
                  lessons,
                  complitedLesson,
                  attendedLesson,
                  version,
                  score,
                  offline,
                  online,
                ) {
                  return AttendanceInfoBody(
                    attendedLesson: attendedLesson,
                    complitedLesson: complitedLesson,
                    lessons: lessons,
                    version: version,
                    offline: offline,
                    online: online,
                    score: score,
                    group: group,
                    groupId: groupId,
                  );
                },
          );
        },
      ),
    );
  }
}
