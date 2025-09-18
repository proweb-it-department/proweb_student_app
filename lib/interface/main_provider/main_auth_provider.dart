import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/auth/auth_bloc.dart';
import 'package:proweb_student_app/bloc/auth_page/auth_page_bloc.dart';
import 'package:proweb_student_app/interface/main_provider/main_provider_app.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class MainAuthProvider extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const MainAuthProvider({super.key, this.savedThemeMode});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<AuthBloc>()..add(const AuthEvent.started())),
        BlocProvider(create: (context) => AuthPageBloc()..add(const AuthPageEvent.started())),
      ],
      child: MainProviderApp(savedThemeMode: savedThemeMode),
    );
  }
}
