import 'dart:ui';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/language/language.dart';
import 'package:proweb_student_app/bloc/all_poll_nps/all_poll_nps_bloc.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/bloc/payments_provider/payments_provider_bloc.dart';
import 'package:proweb_student_app/bloc/branch_room_holiday/branch_room_holiday_bloc.dart';
import 'package:proweb_student_app/bloc/download_video/download_video_bloc.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/bloc/profile/profile_data_bloc.dart';
import 'package:proweb_student_app/bloc/sessions/sessions_bloc.dart';
import 'package:proweb_student_app/bloc/story_groups/story_groups_bloc.dart';
import 'package:proweb_student_app/bloc/transactions_student/transactions_student_bloc.dart';
import 'package:proweb_student_app/models/download_file/downloader_files_bloc.dart';
import 'package:proweb_student_app/router/auto_router.dart';
import 'package:proweb_student_app/utils/download_manager/file_download_manager.dart';
import 'package:proweb_student_app/utils/download_manager/video_download_manager.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/global_context/global_context.dart';
import 'package:proweb_student_app/utils/theme/default_theme/AppThemeData.dart';
import 'package:proweb_student_app/utils/theme/default_theme/dark_ui.dart';
import 'package:proweb_student_app/utils/theme/default_theme/light_ui.dart';

final AppRouter appRouter = AppRouter();

class MainProviderApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const MainProviderApp({super.key, this.savedThemeMode});

  @override
  Widget build(BuildContext context) {
    final localeData = sl<LocalizationService>().loadloadCachedLangList();
    List<Locale> locales =
        (localeData?.languages?.map((e) {
          return Locale(e.code!);
        }).toList()) ??
        [];
    if (localeData != null) {}
    if (locales.isEmpty) {
      locales.add(Locale('ru'));
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return DownloadVideoBloc()..add(DownloadVideoEvent.started());
          },
        ),
        BlocProvider(
          create: (context) {
            return DownloaderFilesBloc()..add(DownloaderFilesEvent.started());
          },
        ),
        BlocProvider(
          create: (context) {
            return TransactionsStudentBloc()
              ..add(TransactionsStudentEvent.started(offset: 0));
          },
        ),
        BlocProvider(create: (context) => SessionsBloc()),
        BlocProvider(create: (context) => ProfileDataBloc()),
        BlocProvider(create: (context) => BalanceBloc()),
        BlocProvider(create: (context) => PaymentsProviderBloc()),
        BlocProvider(create: (context) => BranchRoomHolidayBloc()),
        BlocProvider(create: (context) => StoryGroupsBloc()),
        BlocProvider(create: (context) => MyGroupsBloc()),
        BlocProvider(
          create: (context) {
            final bloc = AllPollNpsBloc();
            bloc.add(AllPollNpsEvent.started());
            return bloc;
          },
        ),
      ],
      child: BlocBuilder<DownloadVideoBloc, DownloadVideoState>(
        builder: (context, state) {
          final DownloadVideoBloc bloc = context.read<DownloadVideoBloc>();
          sl<DownloadManager>().init(bloc);
          final DownloaderFilesBloc blocFile = context
              .read<DownloaderFilesBloc>();
          sl<DownloadManagerFile>().init(blocFile);
          return EasyLocalization(
            ignorePluralRules: false,
            useOnlyLangCode: true,
            supportedLocales: locales,
            path: 'assets/translations',
            assetLoader: CustomAssetLoader(sl<LocalizationService>()),
            fallbackLocale: locales.first,
            child: AdaptiveTheme(
              initial: savedThemeMode ?? AdaptiveThemeMode.system,
              light: AppThemeData.start(context, lightColors),
              dark: AppThemeData.start(context, darkColors),
              builder: (light, dark) {
                return MyWidget(dark: dark, light: light);
              },
            ),
          );
        },
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final ThemeData light;
  final ThemeData dark;
  const MyWidget({super.key, required this.light, required this.dark});

  @override
  Widget build(BuildContext context) {
    final observers = sl<AutoRouteObserver>();
    sl<NavigationService>().setContext(context);
    return MaterialApp.router(
      theme: light,
      darkTheme: dark,
      color: darkColors.primaryBg,
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(navigatorObservers: () => [observers]),
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      onGenerateTitle: (context) {
        sl<NavigationService>().setContext(context);
        return 'MY PROWEB';
      },
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
