import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/homework_relation/homework_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/homework_about_content.dart';

@RoutePage()
class HomeworkAboutScreen extends StatelessWidget {
  final int groupId;
  final int relationId;
  const HomeworkAboutScreen({
    super.key,
    @PathParam.inherit('id') required this.groupId,
    @PathParam.inherit('relationId') required this.relationId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeworkRelationBloc, HomeworkRelationState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          load: () => Center(child: Md3CirculeIndicator()),
          error: () {
            return Center(
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
            );
          },
          complite: (relation, work, comments, isLoadComment) {
            return HomeworkAboutContent(relation: relation, work: work);
          },
        );
      },
    );
  }
}
