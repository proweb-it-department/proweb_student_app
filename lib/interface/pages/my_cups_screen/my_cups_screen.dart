import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class MyCupsScreen extends StatelessWidget {
  const MyCupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyCupsScaffold();
  }
}

class MyCupsScaffold extends StatelessWidget {
  const MyCupsScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Scaffold(
      appBar: AppBar(title: Text('Кубки')),
      body: ClipRRect(
        borderRadius: BorderRadiusGeometry.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
        child: Container(
          decoration: BoxDecoration(color: customColors?.containerColor),
        ),
      ),
    );
  }
}
