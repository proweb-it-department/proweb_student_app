import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/global_context/global_context.dart';

class PollDialog {
  static final PollDialog _instance = PollDialog._internal();
  factory PollDialog() => _instance;

  PollDialog._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<T?> showGlobalDialog<T>({
    List<BlocProvider>? providers,
    bool barrierDismissible = false,
  }) async {
    final context = sl<NavigationService>().context;
    if (context == null) return null;

    return await showDialog<T?>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) {
        // if (providers != null && providers.isNotEmpty) {
        //   return MultiBlocProvider(
        //     providers: providers,
        //     child: Dialog(
        //       child: SingleChildScrollView(
        //         child: Column(
        //           mainAxisSize: MainAxisSize.min,
        //           children: [Text('123123123123')],
        //         ),
        //       ),
        //     ),
        //   );
        // }
        // return SizedBox();
        return Dialog(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [Text('123123123123')],
            ),
          ),
        );
      },
    );
  }
}
