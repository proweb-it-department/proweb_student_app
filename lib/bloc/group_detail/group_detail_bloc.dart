import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/user_list/user_list.dart';

part 'group_detail_event.dart';
part 'group_detail_state.dart';
part 'group_detail_bloc.freezed.dart';

class GroupDetailBloc extends Bloc<GroupDetailEvent, GroupDetailState> {
  GroupDetailBloc() : super(_Initial()) {
    on<GroupDetailEvent>((event, emit) async {
      groupDetail(int groupId) async {
        emit(GroupDetailState.loadGroupDetail());
        List<MyGroupsItem>? myGroups = await sl<GetResponsesMain>().myGroups();
        if (myGroups == null) {
          return emit(GroupDetailState.errorGroupDetail());
        }
        final myGroup = myGroups.firstWhere((element) => element.group?.id == groupId, orElse: () => MyGroupsItem(groupUserId: 0));
        if (myGroup.groupUserId == 0) {
          return emit(GroupDetailState.errorGroupDetail());
        }
        GroupDetail? data = await sl<GetResponsesMain>().groupDetail(groupId: groupId);
        if (data == null) {
          return emit(GroupDetailState.errorGroupDetail());
        } else {
          List<int> userIds = [];
          final int? admin = data.mainAdmin?.userId, teacher = data.mainTeacher?.userId;
          if (admin != null) {
            userIds.add(admin);
          }
          if (teacher != null) {
            userIds.add(teacher);
          }
          if (userIds.isNotEmpty) {
            await sl<UserList>().findAllUser(userIds: userIds);

            final adminModel = data.mainAdmin;
            final teacherModel = data.mainTeacher;
            if (admin != null && adminModel != null) {
              final user = sl<UserList>().find(id: admin);
              data = data.copyWith(mainAdmin: adminModel.copyWith(user: user));
            }
            if (teacher != null && teacherModel != null) {
              final user = sl<UserList>().find(id: teacher);
              data = data.copyWith(mainTeacher: teacherModel.copyWith(user: user));
            }
          }
          return emit(GroupDetailState.complited(group: data, groupUser: myGroup));
        }
      }

      await event.when(
        started: groupDetail,
        init: () {
          emit(GroupDetailState.initial());
        },
      );
    });
  }
}
