import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BonuceGroupInfoScreen extends StatelessWidget {
  final int groupId;
  const BonuceGroupInfoScreen({
    super.key,
    @PathParam.inherit('id') required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
