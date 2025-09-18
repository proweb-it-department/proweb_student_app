import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/bloc/test_relation/test_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/comment_body.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/comment_footer.dart';
import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';

@RoutePage()
class TestingCommentScreen extends StatelessWidget {
  final int relationId;
  final int groupId;
  const TestingCommentScreen({
    super.key,
    @PathParam.inherit('relationId') required this.relationId,
    @PathParam.inherit('id') required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestRelationBloc, TestRelationState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(child: CircularProgressIndicator());
          },
          load: () {
            return Center(child: CircularProgressIndicator());
          },
          error: () {
            return Center(
              child: ErrorLoad(
                action: FilledButton(
                  onPressed: () {
                    final bloc = context.read<TestRelationBloc>();
                    bloc.add(TestRelationEvent.started(relationId: relationId));
                  },
                  child: Text('global_data.try_again'.tr()),
                ),
              ),
            );
          },
          complite: (relation, comments, isLoadComment, isLoadAnswers) {
            if (relation.jsonAnswer == null) {
              return Center(
                child: NoData(
                  text: 'group_homework.not_attach_test'.tr(),
                  icon: Icons.work_off,
                  action: FilledButton(
                    onPressed: () {
                      final tabsRouter = AutoTabsRouter.of(context);
                      tabsRouter.setActiveIndex(0);
                    },
                    child: Text('group_homework.go_to_student_work'.tr()),
                  ),
                ),
              );
            }
            return TestingCommentFeature(
              comments: comments,
              isLoadComment: isLoadComment,
              relationId: relationId,
            );
          },
        );
      },
    );
  }
}

class TestingCommentFeature extends StatefulWidget {
  final List<GlobalComment> comments;
  final bool isLoadComment;
  final int relationId;
  const TestingCommentFeature({
    super.key,
    required this.comments,
    required this.isLoadComment,
    required this.relationId,
  });

  @override
  State<TestingCommentFeature> createState() => _TestingCommentFeatureState();
}

class _TestingCommentFeatureState extends State<TestingCommentFeature> {
  String? idSubscribe;

  @override
  void initState() {
    super.initState();
    idSubscribe = sl<Channel>().connect.subscribe(
      channel: WsEvent.testingComment.name,
      connection: ConnectionData(
        callback: (data) {
          final relationId = widget.relationId;
          if (data is Map && context.mounted) {
            final bloc = context.read<TestRelationBloc>();
            bloc.add(TestRelationEvent.reloadWS(relationId: relationId));
          }
        },
        objectId: widget.relationId,
      ),
    );
  }

  @override
  void dispose() {
    if (idSubscribe != null) {
      sl<Channel>().connect.unsubscribe(uuid: idSubscribe!);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: HomeworkCommentsBody(comments: widget.comments)),
        HomeworkCommentFooter(
          isLoadComment: widget.isLoadComment,
          onSend: (comment, files, context) {
            final bloc = context.read<TestRelationBloc>();
            bloc.add(
              TestRelationEvent.createComment(files: files, comment: comment),
            );
          },
        ),
      ],
    );
  }
}
