import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/auth_page/auth_page_bloc.dart';
import 'package:proweb_student_app/interface/pages/auth/logo_view/logo_view.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:sms_autofill/sms_autofill.dart';

class CodeWrite extends StatefulWidget {
  final String login;
  final bool? load;
  final LoginType? type;
  const CodeWrite({super.key, this.load, this.type, required this.login});

  @override
  State<CodeWrite> createState() => _CodeWriteState();
}

class _CodeWriteState extends State<CodeWrite> {
  String _code = '';

  @override
  void initState() {
    super.initState();
    _listenForSmsCode();
    _getAppSignature();
  }

  void _listenForSmsCode() {
    SmsAutoFill().listenForCode();
  }

  void _getAppSignature() async {
    setState(() {});
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    final bloc = context.read<AuthPageBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          LogoAuthView(),
          SizedBox(height: 15),
          Center(
            child: Text('auth.code'.tr(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'auth.code_description'.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: customColor?.filledButtonDisableColor),
            ),
          ),
          SizedBox(height: 50),
          PinFieldAutoFill(
            enableInteractiveSelection: true,
            autoFocus: true,
            enabled: widget.load != true,
            decoration: BoxLooseDecoration(
              strokeColorBuilder: FixedColorBuilder(customColor?.primaryTextColor ?? Colors.black),
              textStyle: TextStyle(fontSize: 20, color: customColor?.primaryTextColor),
              gapSpace: 10,
              errorText: widget.type == LoginType.error ? 'auth.code_error'.tr() : null,
              errorTextStyle: TextStyle(color: customColor?.errorFill),
            ),
            currentCode: _code,
            codeLength: 5,
            onCodeChanged: (code) {
              if (code?.length == 5) {
                setState(() {
                  _code = code!;
                });
                bloc.add(AuthPageEvent.verificationCode(login: widget.login, verificationCode: int.parse(code ?? _code)));
              }
            },
            onCodeSubmitted: (code) {},
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                child: widget.load == true
                    ? Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5), child: CircularProgressIndicator())
                    : TextButton.icon(
                        onPressed: _code.length == 5
                            ? () {
                                bloc.add(AuthPageEvent.verificationCode(login: widget.login, verificationCode: int.parse(_code)));
                              }
                            : null,
                        icon: Icon(Icons.arrow_forward),
                        label: Text('auth.next'.tr()),
                        iconAlignment: IconAlignment.end,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
