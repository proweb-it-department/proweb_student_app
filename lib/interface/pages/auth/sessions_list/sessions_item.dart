import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/bloc/sessions/sessions_bloc.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class SessionItemView extends StatelessWidget {
  final SessionsListItemModel session;
  final String login;
  final String password;
  const SessionItemView({super.key, required this.session, required this.login, required this.password});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<SessionsBloc>();
    final customColors = Theme.of(context).extension<CustomColors>();
    return ExpansionTile(
      leading: icon,
      title: Text(session.deviceName, overflow: TextOverflow.ellipsis),
      subtitle: Text(session.deviceType),
      children: [
        Divider(endIndent: 0, height: 1, indent: 0, thickness: 0),
        if (flag != null) ListTile(leading: flag, title: Text('auth.sessionslimited_location'.tr()), subtitle: Text(session.location!)),
        if (session.ipAddr != null) ListTile(leading: Icon(Icons.dns), title: Text('auth.sessionslimited_ip'.tr()), subtitle: Text(session.ipAddr!)),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: bloc.state.when(
            initial: () {
              return null;
            },
            sessionsLoad: () {
              return null;
            },
            sessionsError: () {
              return null;
            },
            sessionsNoAuth: (list, load, error) {
              if (load != null) {
                if (load) {
                  return CircularProgressIndicator();
                }
              }
              return FilledButton.icon(
                onPressed: () async {
                  bloc.add(SessionsEvent.sessionCloseCredential(login: login, password: password, sessionId: session.sessionId, context: context, list: list));
                },
                icon: Icon(Icons.pause),
                label: Text('auth.sessionslimited_close'.tr(), style: TextStyle(color: customColors?.primaryTextColor)),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget? get flag {
    if (session.location != null) {
      final String flugCountry = session.location!.toLowerCase();
      if (flugCountry.contains('uzbekistan')) {
        return Flag(Flags.uzbekistan, size: 20);
      } else if (flugCountry.contains('russia')) {
        return Flag(Flags.russia, size: 20);
      }
      return Icon(Icons.flag);
    }
    return null;
  }

  Brand get icon {
    final String deviceType = session.deviceName.toLowerCase();
    if (deviceType.contains('safari')) {
      return Brand(Brands.safari);
    } else if (deviceType.contains('chrome')) {
      return Brand(Brands.chrome);
    } else if (deviceType.contains('edge')) {
      return Brand(Brands.microsoft_edge);
    } else if (deviceType.contains('samsung')) {
      return Brand(Brands.samsung);
    } else if (deviceType.contains('opera')) {
      return Brand(Brands.opera);
    } else if (deviceType.contains('yandex')) {
      return Brand(Brands.yandex_drive);
    } else if (deviceType.contains('xiaomi')) {
      return Brand(Brands.xiaomi);
    } else if (deviceType.contains('ios')) {
      return Brand(Brands.apple_logo);
    } else if (deviceType.contains('android')) {
      return Brand(Brands.android_os);
    } else {
      return Brand(Brands.chrome);
    }
  }
}
