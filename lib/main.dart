import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proweb_student_app/api/repositories/file_repositories/file_repositories.dart';
import 'package:proweb_student_app/api/language/language.dart';
import 'package:proweb_student_app/api/video_repository/video_repository.dart';
import 'package:proweb_student_app/interface/main_provider/main_auth_provider.dart';
import 'package:proweb_student_app/server/server.dart';
import 'package:proweb_student_app/utils/app_instanse/app_instanse.dart';
import 'package:proweb_student_app/utils/download_manager/video_download_manager.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/notification_manager/notification_manager.dart';
import 'package:media_kit/media_kit.dart';
import 'package:app_links/app_links.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  MediaKit.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await sl<LocalizationService>().fetchAndCacheTranslations();
  final notificationsPlugin = await flutterLocalNotification();

  await sl<VideoRepository>().init();
  await sl<FileRepository>().init();
  await sl<NotificationManager>().init(notificationsPlugin);
  sl<DownloadManager>().initNotifi(notificationsPlugin);
  server();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(ProwebStudentApp(savedThemeMode: savedThemeMode));
  final appLinks = AppLinks();
  Future.microtask(() {
    if (Platform.isAndroid || Platform.isIOS) {
      appLinks.uriLinkStream.listen((Uri? uri) {
        if (uri != null) {
          appRouter.pushPath(uri.path);
        }
      });
    }
  });
}

class ProwebStudentApp extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const ProwebStudentApp({super.key, this.savedThemeMode});

  @override
  State<ProwebStudentApp> createState() => _ProwebStudentAppState();
}

class _ProwebStudentAppState extends State<ProwebStudentApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      sl<NotificationManager>().isActiveApplication(true);
    } else if (state == AppLifecycleState.paused) {
      sl<NotificationManager>().isActiveApplication(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MainAuthProvider(savedThemeMode: widget.savedThemeMode);
  }
}
