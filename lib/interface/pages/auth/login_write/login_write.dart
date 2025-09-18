import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/auth_page/auth_page_bloc.dart';
import 'package:proweb_student_app/interface/pages/auth/logo_view/logo_view.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class LoginWrite extends StatefulWidget {
  final bool? load;
  final LoginType? type;
  const LoginWrite({super.key, this.load, this.type});

  @override
  State<LoginWrite> createState() => _LoginWriteState();
}

class _LoginWriteState extends State<LoginWrite> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _savedValue;
  late bool _isValid = false;

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
              child: Text('auth.entry'.tr(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'auth.entry_descruotuin'.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: customColor?.filledButtonDisableColor),
              ),
            ),
            SizedBox(height: 50),
            FormField<String>(
              initialValue: '',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'auth.entry_data_empty'.tr();
                }
                final phoneRegex = RegExp(r'[0-9]{10,15}$');
                if (phoneRegex.hasMatch(value)) {
                  return null;
                }

                final emailRegex = RegExp(r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
                if (emailRegex.hasMatch(value)) {
                  return null;
                }
                return 'auth.entry_login_error'.tr();
              },
              onSaved: (value) {
                _savedValue = value;
              },
              builder: (FormFieldState<String> state) {
                return TextField(
                  onChanged: (value) {
                    state.didChange(value.replaceAll(' ', '').replaceAll('+', ''));
                    setState(() {
                      _isValid = _formKey.currentState?.validate() ?? false;
                    });
                  },
                  decoration: InputDecoration(labelText: 'auth.entry_label'.tr(), errorText: widget.type == LoginType.error ? 'auth.entry_error_data'.tr() : state.errorText, helperText: 'auth.entry_example'.tr()),
                  cursorColor: customColor?.primaryTextColor,
                  onSubmitted: (value) {
                    _formKey.currentState?.save();
                    if (_isValid && _savedValue != null) {
                      bloc.add(AuthPageEvent.login(login: _savedValue ?? ''));
                    }
                  },
                  textInputAction: TextInputAction.next,
                );
              },
            ),

            SizedBox(height: 50),
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
                                  bloc.add(AuthPageEvent.login(login: _savedValue ?? ''));
                                }
                              }
                            : null,
                        icon: Icon(Icons.arrow_forward),
                        label: Text('auth.next'.tr()),
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
