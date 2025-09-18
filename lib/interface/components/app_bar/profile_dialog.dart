import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proweb_student_app/api/language/language.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/bloc/profile/profile_data_bloc.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class ProfileDialog extends StatelessWidget {
  const ProfileDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final LocalizationService serviceLocal = sl<LocalizationService>();
    final list = serviceLocal.loadloadCachedLangList();
    CustomColors? customColor = Theme.of(context).extension<CustomColors>();
    final profileBloc = context.watch<ProfileDataBloc>();
    final balanceBloc = context.watch<BalanceBloc>();
    return Dialog(
      insetPadding: EdgeInsets.all(12),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 1,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: customColor?.primaryTextColor,
                    ),
                  ),
                  Center(
                    child: Text(
                      'PROWEB',
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  color: customColor?.containerColor,
                  child: Material(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        profileBloc.state.when(
                          view: (profile) {
                            return ListTile(
                              leading: Avatar(profile: profile),
                              title: Text(
                                sl<LocalData>().nameMyProfile(profile),
                              ),
                              subtitle: Text(
                                sl<LocalData>().getContryCode(
                                  phone: profile.phone,
                                ),
                              ),
                            );
                          },
                          initial: () => CircularProgressIndicator(),
                        ),
                        Divider(),
                        ...balanceBloc.state.when(
                          initial: () => [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ],
                          balance: (balance) {
                            return [
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pop('balance');
                                },
                                splashColor:
                                    double.parse(balance.mainBalance) < 0
                                    ? customColor?.errorFillOp
                                    : customColor?.primaryTextColorOp,
                                leading: Icon(
                                  Icons.wallet,
                                  color: double.parse(balance.mainBalance) < 0
                                      ? customColor?.errorFill
                                      : customColor?.primaryTextColor,
                                ),
                                tileColor: double.parse(balance.mainBalance) < 0
                                    ? customColor?.errorFillOp
                                    : Colors.transparent,
                                title: Text(
                                  'profile_dialog.balance'.tr(),
                                  style: TextStyle(
                                    color: double.parse(balance.mainBalance) < 0
                                        ? customColor?.errorFill
                                        : customColor?.primaryTextColor,
                                  ),
                                ),
                                subtitle: Text(
                                  'global_data.sum'.tr(
                                    namedArgs: {
                                      'money': NumberFormat('#,##0', 'ru_RU')
                                          .format(
                                            double.parse(balance.mainBalance),
                                          ),
                                    },
                                  ),
                                  style: TextStyle(
                                    color: double.parse(balance.mainBalance) < 0
                                        ? customColor?.errorFill
                                        : customColor?.primaryTextColor,
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: double.parse(balance.mainBalance) < 0
                                      ? customColor?.errorFill
                                      : customColor?.primaryTextColor,
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pop('balance');
                                },
                                splashColor: customColor?.primaryBgOp,
                                leading: Icon(
                                  Icons.confirmation_number,
                                  color: customColor?.primaryTextColor,
                                ),
                                title: Text(
                                  'profile_dialog.voucher_balance'.tr(),
                                ),
                                subtitle: Text(
                                  'global_data.sum'.tr(
                                    namedArgs: {
                                      'money': NumberFormat('#,##0', 'ru_RU')
                                          .format(
                                            double.parse(
                                              balance.voucherBalance,
                                            ),
                                          ),
                                    },
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: customColor?.primaryTextColor,
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pop('balance');
                                },
                                splashColor: customColor?.primaryBgOp,
                                leading: SvgPicture.asset(
                                  'assets/images/procoin.svg',
                                  width: 25,
                                ),
                                title: Text('PROCOIN'),
                                subtitle: Text(
                                  NumberFormat('#,##0', 'ru_RU').format(
                                    double.parse(balance.procoin ?? '0'),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: customColor?.primaryTextColor,
                                ),
                              ),
                            ];
                          },
                          error: () => [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ErrorLoad(
                                color: customColor?.primaryBg,
                                action: FilledButton(
                                  onPressed: () {
                                    balanceBloc.add(BalanceEvent.started());
                                  },
                                  child: Text('global_data.try_again'.tr()),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(height: 1),
                        ListTile(
                          onTap: () {
                            Navigator.of(context).pop('download');
                          },
                          leading: Icon(
                            color: customColor?.primaryTextColor,
                            Icons.slow_motion_video,
                          ),
                          title: Text('profile_dialog.download_video'.tr()),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: customColor?.primaryTextColor,
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.of(context).pop('files');
                          },
                          leading: Icon(
                            color: customColor?.primaryTextColor,
                            Icons.file_open_outlined,
                          ),
                          title: Text('profile_dialog.download_files'.tr()),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: customColor?.primaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text('profile_dialog.colors'.tr()),
                    leading: Icon(Icons.color_lens),
                    children: [
                      Divider(height: 1, indent: 0, endIndent: 0, thickness: 0),
                      ListTile(
                        onTap: () {
                          AdaptiveTheme.of(context).setLight();
                        },
                        leading:
                            AdaptiveTheme.of(context).mode ==
                                AdaptiveThemeMode.light
                            ? Icon(Icons.check)
                            : null,
                        title: Text('profile_dialog.colors_light'.tr()),
                      ),
                      ListTile(
                        onTap: () {
                          AdaptiveTheme.of(context).setDark();
                        },
                        leading:
                            AdaptiveTheme.of(context).mode ==
                                AdaptiveThemeMode.dark
                            ? Icon(Icons.check)
                            : null,
                        title: Text('profile_dialog.colors_dark'.tr()),
                      ),
                      ListTile(
                        onTap: () {
                          AdaptiveTheme.of(context).setSystem();
                        },
                        leading:
                            AdaptiveTheme.of(context).mode ==
                                AdaptiveThemeMode.system
                            ? Icon(Icons.check)
                            : null,
                        title: Text('profile_dialog.colors_system'.tr()),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ExpansionTile(
                    title: Text('profile_dialog.language'.tr()),
                    leading: Icon(Icons.translate),
                    children: [
                      Divider(height: 1, indent: 0, endIndent: 0, thickness: 0),
                      for (final indexLocal in list)
                        ListTile(
                          onTap: () {
                            context.setLocale(Locale(indexLocal.shortName!));
                          },
                          leading:
                              context.locale.toString() == indexLocal.shortName
                              ? Icon(Icons.check)
                              : null,
                          title: Text(indexLocal.name!),
                        ),
                    ],
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop('logOut');
                    },
                    leading: Icon(
                      color: customColor?.primaryTextColor,
                      Icons.logout,
                    ),
                    title: Text('profile_dialog.logout'.tr()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
