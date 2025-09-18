import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/auth_page/auth_page_bloc.dart';
import 'package:proweb_student_app/bloc/sessions/sessions_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/pages/auth/logo_view/logo_view.dart';
import 'package:proweb_student_app/interface/pages/auth/sessions_list/sessions_item.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class SessionsLimitedList extends StatelessWidget {
  final String login;
  final String password;
  final bool? load;
  final LoginType? type;
  const SessionsLimitedList({super.key, this.load, this.type, required this.login, required this.password});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    final bloc = context.read<SessionsBloc>();
    bloc.add(SessionsEvent.sessionsNoLogin(login: login));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        children: [
          LogoAuthView(),
          SizedBox(height: 15),
          Center(
            child: Text('auth.sessionslimited'.tr(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'auth.sessionslimited_description'.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: customColor?.filledButtonDisableColor),
            ),
          ),
          SizedBox(height: 50),
          if (load == true)
            Center(child: CircularProgressIndicator())
          else
            BlocBuilder<SessionsBloc, SessionsState>(
              builder: (context, state) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ...state.when(
                        initial: () => [Center(child: CircularProgressIndicator())],
                        sessionsLoad: () => [
                          Center(
                            child: Padding(padding: EdgeInsets.all(8), child: CircularProgressIndicator()),
                          ),
                        ],
                        sessionsNoAuth: (list, _, __) {
                          return List.generate(list.length, (index) {
                            final item = list[index];
                            return BlocProvider.value(
                              value: context.read<AuthPageBloc>(),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: SessionItemView(session: item, login: login, password: password),
                              ),
                            );
                          });
                        },
                        sessionsError: () => [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: ErrorLoad(icon: Icons.warning),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
