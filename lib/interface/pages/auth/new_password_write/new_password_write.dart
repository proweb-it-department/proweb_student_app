import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/auth_page/auth_page_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/pages/auth/logo_view/logo_view.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class NewPasswordWrite extends StatefulWidget {
  final String login;
  final bool? load;
  final LoginType? type;
  const NewPasswordWrite({
    super.key,
    this.load,
    this.type,
    required this.login,
  });

  @override
  State<NewPasswordWrite> createState() => _NewPasswordWriteState();
}

class _NewPasswordWriteState extends State<NewPasswordWrite> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _savedPassword;
  String? _savedPasswordConfirm;
  late bool _isValid = false;
  late bool _isView = true;
  late bool _isViewConfirm = true;
  late bool _isCheck = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    _formKey.currentState?.save();
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
              child: Text(
                'auth.newpassword'.tr(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'auth.newpassword_description'.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: customColor?.filledButtonDisableColor,
                ),
              ),
            ),
            SizedBox(height: 50),
            FormField<String>(
              initialValue: '',
              validator: (value) {
                if (value != null && value.length < 7) {
                  return 'auth.newpassword_small'.tr();
                } else if (value == null) {
                  return 'auth.newpassword_empty'.tr();
                }
                return null;
              },
              onSaved: (value) {
                _savedPassword = value;
              },
              builder: (FormFieldState<String> state) {
                return TextField(
                  obscureText: _isView,
                  onChanged: (value) {
                    state.didChange(
                      value.replaceAll(' ', '').replaceAll('+', ''),
                    );
                    setState(() {
                      _isValid = _formKey.currentState?.validate() ?? false;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'auth.newpassword'.tr(),
                    errorText: state.errorText,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isView = !_isView;
                        });
                      },
                      icon: _isView
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  ),
                  cursorColor: customColor?.primaryTextColor,
                  onSubmitted: (value) {
                    // if (_formKey.currentState?.validate() ?? false) {
                    //   _formKey.currentState?.save();
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(content: Text('Saved value: $_savedValue')),
                    //   );
                    // }
                  },
                  textInputAction: TextInputAction.next,
                );
              },
            ),
            SizedBox(height: 20),
            FormField<String>(
              initialValue: '',
              validator: (value) {
                if (value != null && value.length < 7) {
                  return 'auth.newpassword_small'.tr();
                } else if (value == null) {
                  return 'auth.newpassword_empty'.tr();
                } else if (_savedPassword != value) {
                  return 'auth.newpassword_notmatch'.tr();
                }
                return null;
              },
              onSaved: (value) {
                _savedPasswordConfirm = value;
              },
              builder: (FormFieldState<String> state) {
                return TextField(
                  obscureText: _isViewConfirm,
                  onChanged: (value) {
                    state.didChange(
                      value.replaceAll(' ', '').replaceAll('+', ''),
                    );
                    setState(() {
                      _isValid = _formKey.currentState?.validate() ?? false;
                    });
                    _formKey.currentState?.save();
                  },
                  decoration: InputDecoration(
                    labelText: 'auth.newpassword_confirming'.tr(),
                    errorText: state.errorText,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isViewConfirm = !_isViewConfirm;
                        });
                      },
                      icon: _isViewConfirm
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  ),
                  cursorColor: customColor?.primaryTextColor,
                  onSubmitted: (value) {
                    // if (_formKey.currentState?.validate() ?? false) {
                    //   _formKey.currentState?.save();
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(content: Text('Saved value: $_savedValue')),
                    //   );
                    // }
                  },
                  textInputAction: TextInputAction.next,
                );
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  value: _isCheck,
                  onChanged: (value) {
                    setState(() {
                      if (value is bool) {
                        _isCheck = value;
                      }
                    });
                  },
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isCheck = !_isCheck;
                    });
                  },
                  child: Text('auth.newpassword_publickoffer'.tr()),
                ),
              ],
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
                      ? Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          child: Md3CirculeIndicator(),
                        )
                      : TextButton.icon(
                          onPressed: _isValid && _isCheck
                              ? () {
                                  _formKey.currentState?.save();
                                  if (_isValid &&
                                      _savedPassword != null &&
                                      _savedPasswordConfirm != null &&
                                      _savedPassword == _savedPasswordConfirm) {
                                    bloc.add(
                                      AuthPageEvent.newPassword(
                                        login: widget.login,
                                        password: _savedPassword ?? '',
                                      ),
                                    );
                                  }
                                }
                              : null,
                          icon: Icon(Icons.login),
                          label: Text('auth.singin'.tr()),
                          iconAlignment: IconAlignment.end,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
