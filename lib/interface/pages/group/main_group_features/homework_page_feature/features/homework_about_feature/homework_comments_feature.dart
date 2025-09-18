import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/homework_relation/homework_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/homework_comments_content.dart';

@RoutePage()
class HomeworkStudentCommentsScreen extends StatelessWidget {
  final int groupId;
  final int relationId;
  const HomeworkStudentCommentsScreen({
    super.key,
    @PathParam.inherit('id') required this.groupId,
    @PathParam.inherit('relationId') required this.relationId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeworkRelationBloc, HomeworkRelationState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: CircularProgressIndicator()),
          load: () => Center(child: CircularProgressIndicator()),
          error: () => Center(
            child: ErrorLoad(
              action: FilledButton(
                onPressed: () {
                  final bloc = context.read<HomeworkRelationBloc>();
                  bloc.add(
                    HomeworkRelationEvent.started(relationId: relationId),
                  );
                },
                child: Text('global_data.try_again'.tr()),
              ),
            ),
          ),
          complite: (relation, work, comments, isLoadComment) {
            if (relation.homeworkMaterials?.isNotEmpty == true) {
              return HomeworkCommentsFeature(
                comments: comments,
                relation: relation,
                isLoadComment: isLoadComment,
              );
            } else {
              return Center(
                child: NoData(
                  text: 'group_homework.not_attach_homework'.tr(),
                  icon: Icons.work_off,
                  action: FilledButton(
                    onPressed: () {
                      final tabsRouter = AutoTabsRouter.of(context);
                      tabsRouter.setActiveIndex(1);
                    },
                    child: Text('group_homework.go_to_student_work'.tr()),
                  ),
                ),
              );
            }
          },
        );
      },
    );
  }
}
