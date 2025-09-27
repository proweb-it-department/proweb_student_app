import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/course_version/course_version_bloc.dart';
import 'package:proweb_student_app/bloc/group_detail/group_detail_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/group_info_features/components/admin_notification.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/group_info_features/components/branch_group.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/group_info_features/components/course_version_group.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/group_info_features/components/grid_info_group.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/group_info_features/components/group_course_widget.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/group_info_features/components/group_type_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/group_info_features/components/main_group_user.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';

@RoutePage()
class GroupGroupInfoScreen extends StatelessWidget {
  final int groupId;

  const GroupGroupInfoScreen({
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
        return GroupInfoContent(group: group, groupUser: groupUser);
      },
    );
  }
}

class GroupInfoContent extends StatelessWidget {
  final GroupDetail group;
  final MyGroupsItem groupUser;
  const GroupInfoContent({
    super.key,
    required this.group,
    required this.groupUser,
  });

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    Notifications? notofication;
    final notifications = groupUser.notifications;
    if (notifications != null) {
      if (notifications.isNotEmpty) {
        for (final element in notifications) {
          final statusNotification = element.status;
          if (statusNotification != null &&
              statusNotification == StatusNotificationGroupUser.opened) {
            notofication = element;
            break;
          }
        }
      }
    }
    return BlocProvider(
      create: (context) => CourseVersionBloc(),
      child: ListView(
        padding: EdgeInsets.only(
          bottom: bottom + 10,
          top: 10,
          left: 8,
          right: 8,
        ),
        children: [
          if (notofication != null)
            AdminNotification(notification: notofication),
          if (notofication != null) SizedBox(height: 12),
          if (group.course?.color != null && group.course?.icon != null)
            GroupCourseWidget(
              color: group.course!.color!,
              icon: group.course!.icon!,
              name: group.course!.name!,
              groupId: group.id!,
            ),
          if (group.course?.color != null && group.course?.icon != null)
            SizedBox(height: 12),
          if (group.mainAdmin?.user != null || group.mainTeacher?.user != null)
            MainGroupUser(admin: group.mainAdmin, teacher: group.mainTeacher),
          if (group.mainAdmin?.user != null || group.mainTeacher?.user != null)
            SizedBox(height: 12),
          GridInfoGroup(group: group),
          SizedBox(height: 12),
          if (group.cabinet != null) BranchGroup(room: group.cabinet!),
          if (group.cabinet != null) SizedBox(height: 12),
          if (group.type != null || group.format != null)
            GroupTypeData(type: group.type, format: group.format),
          if (group.type != null || group.format != null) SizedBox(height: 12),
          if (group.version?.versionId != null)
            CourseVersionGroup(versionId: group.version!.versionId!),
        ],
      ),
    );
  }
}
