import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/pages/shop_screen/pages/store_screen.dart';

@RoutePage()
class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MainAppBar(isBorder: false), body: StoreScreen());
  }
}
