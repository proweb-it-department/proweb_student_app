import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/language/language.dart';
import 'package:proweb_student_app/bloc/auth_page/auth_page_bloc.dart';
import 'package:proweb_student_app/interface/pages/auth/code_write/code_write.dart';
import 'package:proweb_student_app/interface/pages/auth/login_write/login_write.dart';
import 'package:proweb_student_app/interface/pages/auth/new_password_write/new_password_write.dart';
import 'package:proweb_student_app/interface/pages/auth/password_write/password_write.dart';
import 'package:proweb_student_app/interface/pages/auth/reset_password_write/reset_password_write.dart';
import 'package:proweb_student_app/interface/pages/auth/sessions_limits/sessions_limits.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LocalizationService serviceLocal = sl<LocalizationService>();
    serviceLocal.loadloadCachedLangList();
    Theme.of(context).extension<CustomColors>();
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(context, systemNavBarStyle: FlexSystemNavBarStyle.transparent),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<AuthPageBloc, AuthPageState>(
          builder: (context, state) {
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: state.when(
                initial: (load, type) {
                  return LoginWrite(load: load, type: type);
                },
                password: (login, load) {
                  return PasswordWrite(load: load, login: login);
                },
                code: (login, load, type) {
                  return CodeWrite(login: login, type: type, load: load);
                },
                passwordRecovery: (login, type, load) {
                  return ResetPasswordWrite(load: load, login: login, type: type);
                },
                newPassword: (login, load) {
                  return NewPasswordWrite(login: login, load: load);
                },
                sessions: (login, password, type, isLoad) {
                  return SessionsLimitedList(login: login, password: password, type: type, load: isLoad);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
