import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/bloc/homework_relation/homework_relation_bloc.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/comment_body.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/comment_footer.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/comment_header.dart';
import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';

class HomeworkCommentsFeature extends StatefulWidget {
  final HomeworkStudentRelationGroup relation;
  final List<GlobalComment> comments;
  final bool isLoadComment;
  const HomeworkCommentsFeature({
    super.key,
    required this.relation,
    required this.comments,
    required this.isLoadComment,
  });

  @override
  State<HomeworkCommentsFeature> createState() =>
      _HomeworkCommentsFeatureState();
}

class _HomeworkCommentsFeatureState extends State<HomeworkCommentsFeature> {
  String? idSubscribe;

  @override
  void initState() {
    super.initState();
    idSubscribe = sl<Channel>().connect.subscribe(
      channel: WsEvent.homeworkComment.name,
      connection: ConnectionData(
        callback: (data) {
          final relationId = widget.relation.id;
          if (data is Map && context.mounted && relationId != null) {
            final bloc = context.read<HomeworkRelationBloc>();
            bloc.add(HomeworkRelationEvent.reloadWS(relationId: relationId));
          }
        },
        objectId: widget.relation.homework?.id,
      ),
    );
    final tabsRouter = AutoTabsRouter.of(context);
    tabsRouter.addListener(() {
      if (tabsRouter.currentChild?.name != HomeworkStudentCommentsRoute.name) {
        if (idSubscribe != null) {
          sl<Channel>().connect.unsubscribe(uuid: idSubscribe!);
          if (mounted) {
            setState(() {
              idSubscribe = null;
            });
          }
        }
      } else {
        if (idSubscribe == null) {
          setState(() {
            idSubscribe = sl<Channel>().connect.subscribe(
              channel: WsEvent.homeworkComment.name,
              connection: ConnectionData(
                callback: (data) {
                  final relationId = widget.relation.id;
                  if (data is Map && context.mounted && relationId != null) {
                    final bloc = context.read<HomeworkRelationBloc>();
                    bloc.add(
                      HomeworkRelationEvent.reloadWS(relationId: relationId),
                    );
                  }
                },
                objectId: widget.relation.homework?.id,
              ),
            );
          });
        }
      }
    });
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
        HomeworkCommentHeader(relation: widget.relation),
        Expanded(child: HomeworkCommentsBody(comments: widget.comments)),
        HomeworkCommentFooter(
          isLoadComment: widget.isLoadComment,
          onSend: (comment, files, context) {
            final bloc = context.read<HomeworkRelationBloc>();
            bloc.add(
              HomeworkRelationEvent.createComment(
                comment: comment.trim(),
                files: files,
              ),
            );
          },
        ),
      ],
    );
  }
}
