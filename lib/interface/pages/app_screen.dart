import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/auth/auth_bloc.dart';
import 'package:proweb_student_app/interface/components/anamated_logo_features/anamated_logo.dart';
import 'package:proweb_student_app/interface/pages/app_screen_widget.dart';
import 'package:proweb_student_app/interface/pages/auth/auth_screen/auth_screen.dart';

@RoutePage()
class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          transitionBuilder: (child, animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: state.when(
            initial: () {
              return AnimatedLogo();
            },
            login: () {
              return AuthScreen();
            },
            app: () {
              return AppScreenWidget();
            },
          ),
        );
      },
    );
  }
}
