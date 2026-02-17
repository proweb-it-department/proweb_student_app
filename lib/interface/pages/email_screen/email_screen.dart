import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/profile/profile_data_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/my_profile/my_profile.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:sms_autofill/sms_autofill.dart';

@RoutePage()
class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('profile.Linking_mail'.tr())),
        body: EmailContent(),
      ),
    );
  }
}

class EmailContent extends StatelessWidget {
  const EmailContent({super.key});

  @override
  Widget build(BuildContext context) {
    final profileBloc = context.read<ProfileDataBloc>();
    return profileBloc.state.when(
      view: (profile, load) {
        return SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: EmailBody(profile: profile, load: load),
        );
      },
      initial: () => Md3CirculeIndicator(),
    );
  }
}

class EmailBody extends StatefulWidget {
  final MyProfile profile;
  final bool load;
  const EmailBody({super.key, required this.profile, required this.load});

  @override
  State<EmailBody> createState() => _EmailBodyState();
}

class _EmailBodyState extends State<EmailBody> {
  late final TextEditingController _controller;
  String email = '';
  bool valid = false;
  bool codeVrite = false;

  @override
  void initState() {
    String? mail = widget.profile.email;
    _controller = TextEditingController(text: mail);
    if (mail != null) {
      setState(() {
        email = mail;
      });
      setState(() {
        valid = emailValid(mail);
      });
    }
    super.initState();
  }

  bool emailValid(String e) {
    return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
        ).hasMatch(e) &&
        e != widget.profile.email;
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    if (codeVrite) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('profile.code_write'.tr()),
          SizedBox(height: 15),
          PinFieldAutoFill(
            enableInteractiveSelection: true,
            autoFocus: true,
            enabled: true,
            decoration: BoxLooseDecoration(
              strokeColorBuilder: FixedColorBuilder(
                customColors?.primaryTextColor ?? Colors.black,
              ),
              textStyle: TextStyle(
                fontSize: 20,
                color: customColors?.primaryTextColor,
              ),
              gapSpace: 10,

              errorTextStyle: TextStyle(color: customColors?.errorFill),
            ),
            codeLength: 5,
            onCodeChanged: (code) {
              if (code == null) return;
              if (code.length == 5) {
                final profileBloc = context.read<ProfileDataBloc>();
                profileBloc.add(
                  ProfileDataEvent.setEmail(
                    email: email,
                    verificationCode: code,
                  ),
                );
                context.router.pop();
              }
            },
            onCodeSubmitted: (code) {},
          ),
        ],
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('profile.email_description'.tr()),
        SizedBox(height: 15),
        TextField(
          controller: _controller,
          decoration: InputDecoration(labelText: 'profile.email'.tr()),
          autofocus: true,
          onChanged: (value) {
            setState(() {
              email = value;
            });
            setState(() {
              valid = emailValid(value);
            });
          },
        ),
        SizedBox(height: 15),
        FilledButton.icon(
          onPressed: valid
              ? () async {
                  final profileBloc = context.read<ProfileDataBloc>();
                  profileBloc.add(ProfileDataEvent.sendCode(email: email));
                  setState(() {
                    codeVrite = true;
                  });
                }
              : null,
          style: FilledButton.styleFrom(
            backgroundColor: customColors?.containerColor,
            textStyle: TextStyle(color: customColors?.primaryTextColor),
            disabledBackgroundColor: customColors?.containerColor.withAlpha(
              100,
            ),
          ),
          label: Text(
            'profile.Install_Mail'.tr(),
            style: TextStyle(
              color: customColors?.primaryTextColor.withAlpha(
                valid ? 255 : 100,
              ),
            ),
          ),
          icon: Icon(
            Icons.change_circle,
            color: customColors?.primaryTextColor.withAlpha(valid ? 255 : 100),
          ),
        ),
      ],
    );
  }
}
