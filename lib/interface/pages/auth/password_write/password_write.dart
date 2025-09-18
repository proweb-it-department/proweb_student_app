import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/auth_page/auth_page_bloc.dart';
import 'package:proweb_student_app/interface/pages/auth/logo_view/logo_view.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class PasswordWrite extends StatefulWidget {
  final String login;
  final bool? load;
  final LoginType? type;
  const PasswordWrite({super.key, this.load, this.type, required this.login});

  @override
  State<PasswordWrite> createState() => _PasswordWriteState();
}

class _PasswordWriteState extends State<PasswordWrite> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _savedValue;
  late bool _isValid = false;
  late bool _isView = true;

  @override
  void initState() {
    super.initState();
    _isValid = false;
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    final bloc = context.read<AuthPageBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            LogoAuthView(),
            SizedBox(height: 15),
            Center(
              child: Text('auth.password'.tr(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'auth.password_description'.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: customColor?.filledButtonDisableColor),
              ),
            ),
            SizedBox(height: 50),
            FormField<String>(
              initialValue: '',
              validator: (value) {
                if (value != null && value.length < 7) {
                  return 'auth.password_small'.tr();
                } else if (value == null) {
                  return 'auth.password_empty'.tr();
                }
                return null;
              },
              onSaved: (value) {
                _savedValue = value;
              },
              builder: (FormFieldState<String> state) {
                return TextField(
                  obscureText: _isView,
                  onChanged: (value) {
                    state.didChange(value.replaceAll(' ', '').replaceAll('+', ''));
                    setState(() {
                      _isValid = _formKey.currentState?.validate() ?? false;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'auth.password'.tr(),
                    errorText: state.errorText,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isView = !_isView;
                        });
                      },
                      icon: _isView ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                    ),
                  ),
                  cursorColor: customColor?.primaryTextColor,
                  onSubmitted: (value) {
                    _formKey.currentState?.save();
                    if (_isValid && _savedValue != null) {
                      bloc.add(AuthPageEvent.signin(login: widget.login, password: _savedValue ?? ''));
                    }
                  },
                  textInputAction: TextInputAction.next,
                );
              },
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.topLeft,
              child: TextButton.icon(
                onPressed: () {
                  bloc.add(AuthPageEvent.resetPassword(login: widget.login));
                },
                label: Text('auth.password_forgot'.tr()),
              ),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.topRight,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                child: widget.load == true
                    ? Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5), child: CircularProgressIndicator())
                    : TextButton.icon(
                        onPressed: _isValid
                            ? () {
                                _formKey.currentState?.save();
                                if (_isValid && _savedValue != null) {
                                  bloc.add(AuthPageEvent.signin(login: widget.login, password: _savedValue ?? ''));
                                }
                              }
                            : null,
                        icon: Icon(Icons.login_outlined),
                        label: Text('auth.singin'.tr()),
                        iconAlignment: IconAlignment.end,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
