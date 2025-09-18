import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/interface/pages/app_screen_widget.dart';

class BodyApp extends StatelessWidget {
  final Widget child;
  const BodyApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        final provider = Provider.of<ScrollStateProvider>(context, listen: false);

        if (notification is UserScrollNotification && notification.metrics.axisDirection.name == 'down') {
          if (notification.direction == ScrollDirection.forward) {
            provider.showNavigationBar();
          } else if (notification.direction == ScrollDirection.reverse) {
            provider.hideNavigationBar();
          }
          if (notification.metrics.pixels == notification.metrics.maxScrollExtent) {
            provider.showNavigationBar();
          }
        }
        return true;
      },
      child: child,
    );
  }
}
