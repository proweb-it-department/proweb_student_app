import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:proweb_student_app/router/auto_router.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/notification_manager/notification_manager.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';

final AppRouter appRouter = AppRouter();

Future<FlutterLocalNotificationsPlugin> flutterLocalNotification() async {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  const android = AndroidInitializationSettings('@mipmap/ic_launcher');
  const DarwinInitializationSettings initializationSettingsDarwin =
      DarwinInitializationSettings();
  const settings = InitializationSettings(
    android: android,
    iOS: initializationSettingsDarwin,
  );
  await notificationsPlugin.initialize(
    settings,
    onDidReceiveNotificationResponse: tapNotificationResponse,
    onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
  );
  return notificationsPlugin;
}

@pragma('vm:entry-point')
void notificationTapBackground(
  NotificationResponse notificationResponse,
) async {
  Future.microtask(() {
    final payload = notificationResponse.payload;
    if (payload != null) {
      if (payload == 'coworking') {
        appRouter.navigateNamed('/coworking');
        return;
      }
      final RegExp regex = RegExp(r'^/group/\d+/homeworks/\d+/comment$');
      final RegExp regextest = RegExp(r'^/group/\d+/test/\d+/comment$');
      final RegExp regexhomeworkassign = RegExp(r'^/group/\d+/homeworks/\d+$');
      if (regex.hasMatch(payload) ||
          regextest.hasMatch(payload) ||
          regexhomeworkassign.hasMatch(payload)) {
        appRouter.navigateNamed(payload);
      }
    }
  });
}

void tapNotificationResponse(NotificationResponse notificationResponse) async {
  final payload = notificationResponse.payload;
  if (payload != null) {
    if (payload == 'coworking') {
      appRouter.navigateNamed('/coworking');
      return;
    }
    // if (payload == '/balance') {
    //   appRouter.navigateNamed(payload);
    //   return;
    // }
    final RegExp regex = RegExp(r'^/group/\d+/homeworks/\d+/comment$');
    final RegExp regextest = RegExp(r'^/group/\d+/test/\d+/comment$');
    final RegExp regexhomeworkassign = RegExp(r'^/group/\d+/homeworks/\d+$');
    if (regex.hasMatch(payload) ||
        regextest.hasMatch(payload) ||
        regexhomeworkassign.hasMatch(payload)) {
      appRouter.navigateNamed(payload);
    }
  }
}

@pragma('vm:entry-point')
Future<void> backgroundMessageHandler(RemoteMessage message) async {
  // await configureDependencies();
  final notificationsPlugin = await flutterLocalNotification();
  final noti = NotificationManager();
  noti.isHiddentApplication();
  await noti.init(notificationsPlugin);

  noti.statusObjectNotification(WsEvent.coworkingVisitUpdate.name, null, null);
}

Future<void> backgroundMessageHandlerInApp(RemoteMessage message) async {
  final notificationsPlugin = await flutterLocalNotification();
  await sl<NotificationManager>().init(notificationsPlugin);

  sl<NotificationManager>().statusObjectNotification(
    WsEvent.coworkingVisitUpdate.name,
    null,
    null,
  );
}

Future<void> backgroundMessageHandlerInApp2(RemoteMessage message) async {
  final notificationsPlugin = await flutterLocalNotification();
  await sl<NotificationManager>().init(notificationsPlugin);

  sl<NotificationManager>().statusObjectNotification(
    WsEvent.coworkingVisitUpdate.name,
    null,
    null,
  );
}
