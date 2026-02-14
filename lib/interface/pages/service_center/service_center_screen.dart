import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';

@RoutePage()
class ServiceCenterScreen extends StatelessWidget {
  const ServiceCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MainAppBar(isBorder: false));
  }
}
