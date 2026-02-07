import 'package:auto_route/annotations.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NpsScreen extends StatelessWidget {
  final int relationId;
  final int npsId;
  const NpsScreen({
    super.key,
    @PathParam('relation_id') required this.relationId,
    @PathParam('nps_id') required this.npsId,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(appBar: AppBar(title: Text('Прохождения опроса'))),
    );
  }
}
