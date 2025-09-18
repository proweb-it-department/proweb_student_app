import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/bloc/profile/profile_data_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/balance_widget.dart';
import 'package:proweb_student_app/interface/components/app_bar/profile_dialog.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? tab;
  final bool isBorder;
  final double height = 56;
  const MainAppBar({super.key, this.tab, this.isBorder = true});

  @override
  Size get preferredSize => Size.fromHeight(tab == null ? height : height * 2);

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomColors>();

    return AppBar(
      backgroundColor: customTheme?.primaryBg,
      title: Row(
        spacing: 5,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: GestureDetector(
              onTap: () {
                context.router.navigate(const HomeRoute());
              },
              child: AutoSizeText(
                'PROWEB',
                maxLines: 1,
                minFontSize: 12,
                maxFontSize: 22,
                style: GoogleFonts.roboto(),
              ),
            ),
          ),
        ],
      ),
      elevation: 0,
      shape: isBorder
          ? Border(
              bottom: BorderSide(
                color: customTheme?.primaryBgBorder ?? Colors.black,
                width: 1,
              ),
            )
          : null,
      actions: [
        BalanceWidget(),
        SizedBox(width: 10),
        BlocBuilder<ProfileDataBloc, ProfileDataState>(
          bloc: context.read<ProfileDataBloc>()
            ..add(ProfileDataEvent.started()),
          builder: (context, state) {
            return state.when(
              initial: () => CircularProgressIndicator(strokeWidth: 2),
              view: (profile) {
                return GestureDetector(
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return MultiBlocProvider(
                          providers: [
                            BlocProvider.value(
                              value: context.read<ProfileDataBloc>(),
                            ),
                            BlocProvider.value(
                              value: context.read<BalanceBloc>(),
                            ),
                          ],
                          child: ProfileDialog(),
                        );
                      },
                    ).then((data) {
                      if (data != null) {
                        if (!context.mounted) return;
                        if (data == 'logOut') {
                          ErrorRequest.logOut();
                        } else if (data == 'balance') {
                          context.router.navigate(HomeBalanceRoute());
                        } else if (data == 'download') {
                          context.router.navigate(DownloadVideosRoute());
                        } else if (data == 'files') {
                          context.router.navigate(DownloadFilesRoute());
                        }
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Avatar(profile: profile),
                  ),
                );
              },
            );
          },
        ),
      ],
      bottom: tab,
    );
  }
}
