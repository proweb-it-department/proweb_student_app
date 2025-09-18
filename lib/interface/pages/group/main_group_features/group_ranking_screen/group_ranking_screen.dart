import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/pages/ranking_screen/pages/all_ranking_screen.dart';

@RoutePage()
class GroupRankingScreen extends StatelessWidget {
  final int groupId;
  const GroupRankingScreen({
    super.key,
    @PathParam.inherit('id') required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return AllRankingInit(groupId: groupId);
  }
}
