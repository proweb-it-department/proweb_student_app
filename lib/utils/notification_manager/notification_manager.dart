import 'dart:convert';
import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationManager {
  FlutterLocalNotificationsPlugin? _notificationsPlugin;
  bool _isActiveApp = true;
  bool _isHiddenApp = false;
  final String version = 'v1';

  void isActiveApplication(bool isActiveApp) {
    _isActiveApp = isActiveApp;
  }

  void isHiddentApplication() {
    _isHiddenApp = true;
  }

  Future<void> init(FlutterLocalNotificationsPlugin? notifi) async {
    _notificationsPlugin = notifi;
  }

  String _getNestedValue(
    Map<String, dynamic> map,
    String keyPath, [
    Map<String, String>? replacements,
  ]) {
    List<String> keys = keyPath.split('.');
    dynamic value = map;
    for (String key in keys) {
      if (value is Map<String, dynamic> && value.containsKey(key)) {
        value = value[key];
      } else {
        return keyPath;
      }
    }
    if (value is String && replacements != null) {
      value = value.replaceAllMapped(RegExp(r'\{(\w+)\}'), (match) {
        String key = match.group(1)!;
        return replacements.containsKey(key)
            ? replacements[key]!
            : match.group(0)!;
      });
    }
    return value.toString();
  }

  Future<Map<String, dynamic>?> _getLocalization() async {
    final prefs = await SharedPreferences.getInstance();
    final activeLang = prefs.getString('activeLang');
    if (activeLang != null) {
      final cachedData = prefs.getString('translation_$activeLang');
      if (cachedData != null) {
        final json = jsonDecode(cachedData);
        if (json['categories'] is Map) {
          return json['categories'];
        }
      }
    }
    return null;
  }

  AndroidNotificationDetails _globalAndroidNotification(
    String channelId,
    String channelName,
  ) {
    return AndroidNotificationDetails(
      '${channelId}_$version',
      channelName,
      importance: Importance.high,
      priority: Priority.high,
      playSound: true,
      enableVibration: true,
      onlyAlertOnce: true,
      ongoing: false,
      category: AndroidNotificationCategory.event,
    );
  }

  Future<void> statusObjectNotification(
    String status,
    int? id,
    dynamic content,
  ) async {
    if (status == WsEvent.coworkingVisitUpdate.name) {
      await _updateCoworking(id, content);
    } else if (status == WsEvent.homeworkComment.name) {
      await _homeworkComment(id, content);
    } else if (status == WsEvent.testingComment.name) {
      await _testComment(id, content);
    } else if (status == WsEvent.homeworkAssign.name) {
      await _homeworkAssign(id, content);
    } else if (status == WsEvent.transaction.name) {
      await _transaction(id, content);
    }
  }

  Future<void> _updateCoworking(int? id, dynamic content) async {
    final languages = await _getLocalization();
    if (languages == null) return;
    final idNotifi = id ?? Random().nextInt(10000);
    final AndroidNotificationDetails androidDetails =
        _globalAndroidNotification(
          'coworking_reserved',
          'COWORKING RESERVAT UPDATE',
        );
    final DarwinNotificationDetails iosDetails = DarwinNotificationDetails();

    final notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    if (_notificationsPlugin != null &&
        await Permission.notification.isGranted &&
        (_isActiveApp || _isHiddenApp)) {
      await _notificationsPlugin?.show(
        idNotifi,
        _getNestedValue(
          languages,
          'notification_system.coworking_update_reserve_title',
        ),
        _getNestedValue(
          languages,
          'notification_system.coworking_update_reserve_content',
        ),
        notificationDetails,
        payload: 'coworking',
      );
    }
  }

  Future<void> _homeworkComment(int? id, dynamic content) async {
    final languages = await _getLocalization();
    if (languages == null) return;
    final name = content['name'];
    final groupId = content['group_id'];
    final assignId = content['assign_id'];
    if (name != null && assignId != null && groupId != null) {
      final idNotifi = id ?? Random().nextInt(10000);
      final AndroidNotificationDetails androidDetails =
          _globalAndroidNotification('homework_comment_view', 'NEW COMMENT');
      final DarwinNotificationDetails iosDetails = DarwinNotificationDetails();

      final notificationDetails = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      if (_notificationsPlugin != null &&
          await Permission.notification.isGranted &&
          (_isActiveApp || _isHiddenApp)) {
        await _notificationsPlugin?.show(
          idNotifi,
          _getNestedValue(
            languages,
            'notification_system.new_comment_homework_title',
          ),
          _getNestedValue(
            languages,
            'notification_system.new_comment_homework_content',
            {'name': name},
          ),
          notificationDetails,
          payload: '/group/$groupId/homeworks/$assignId/comment',
        );
      }
    }
  }

  Future<void> _homeworkAssign(int? id, dynamic content) async {
    final languages = await _getLocalization();
    if (languages == null) return;
    final name = content['name'];
    final groupId = content['group_id'];
    final assignId = content['assign_id'];
    if (name != null && assignId != null && groupId != null) {
      final idNotifi = id ?? Random().nextInt(10000);
      final AndroidNotificationDetails androidDetails =
          _globalAndroidNotification('homework_assign', 'HOMEWORK ASSIGN');
      final DarwinNotificationDetails iosDetails = DarwinNotificationDetails();

      final notificationDetails = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      if (_notificationsPlugin != null &&
          await Permission.notification.isGranted &&
          (_isActiveApp || _isHiddenApp)) {
        await _notificationsPlugin?.show(
          idNotifi,
          _getNestedValue(
            languages,
            'notification_system.new_assign_homework_title',
          ),
          _getNestedValue(
            languages,
            'notification_system.new_assign_homework_content',
            {'name': name},
          ),
          notificationDetails,
          payload: '/group/$groupId/homeworks/$assignId',
        );
      }
    }
  }

  Future<void> _testComment(int? id, dynamic content) async {
    final languages = await _getLocalization();
    if (languages == null) return;
    final name = content['name'];
    final groupId = content['group_id'];
    final assignId = content['assign_id'];
    if (name != null && assignId != null && groupId != null) {
      final idNotifi = id ?? Random().nextInt(10000);
      final AndroidNotificationDetails androidDetails =
          _globalAndroidNotification('test_comment_view', 'TEST COMMENT');
      final DarwinNotificationDetails iosDetails = DarwinNotificationDetails();

      final notificationDetails = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      if (_notificationsPlugin != null &&
          await Permission.notification.isGranted &&
          (_isActiveApp || _isHiddenApp)) {
        await _notificationsPlugin?.show(
          idNotifi,
          _getNestedValue(
            languages,
            'notification_system.new_comment_test_title',
          ),
          _getNestedValue(
            languages,
            'notification_system.new_comment_test_content',
            {'name': name},
          ),
          notificationDetails,
          payload: '/group/$groupId/test/$assignId/comment',
        );
      }
    }
  }

  Future<void> _transaction(int? id, dynamic content) async {
    final languages = await _getLocalization();
    if (languages == null) return;
    final type = content['type'];
    final amount = content['amount'];
    final mainBalance = content['main_balance'];
    final voucherBalance = content['voucher_balance'];
    if (amount != null &&
        type != null &&
        mainBalance != null &&
        voucherBalance != null) {
      final idNotifi = id ?? Random().nextInt(10000);
      final AndroidNotificationDetails androidDetails =
          _globalAndroidNotification('new_transaction', 'NEW TRANSACTION');
      final DarwinNotificationDetails iosDetails = DarwinNotificationDetails();

      final notificationDetails = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      final newAmount = NumberFormat(
        '#,##0',
        'ru_RU',
      ).format(double.parse('$amount'));
      final newMainBalance = NumberFormat(
        '#,##0',
        'ru_RU',
      ).format(double.parse('$mainBalance'));
      final newVoucherBalance = NumberFormat(
        '#,##0',
        'ru_RU',
      ).format(double.parse('$voucherBalance'));

      if (_notificationsPlugin != null &&
          await Permission.notification.isGranted &&
          (_isActiveApp || _isHiddenApp)) {
        await _notificationsPlugin?.show(
          idNotifi,
          _getNestedValue(
            languages,
            'notification_system.new_transaction_title',
          ),
          _getNestedValue(
            languages,
            'notification_system.new_transaction_content',
            {
              'amount':
                  '${(type == 'increase' ? '+' : '-')}${_getNestedValue(languages, 'global_data.sum', {'money': newAmount})}',
              'mainBalance': _getNestedValue(languages, 'global_data.sum', {
                'money': newMainBalance,
              }),
              'voucherBalance': _getNestedValue(languages, 'global_data.sum', {
                'money': newVoucherBalance,
              }),
            },
          ),
          notificationDetails,
          payload: '/balance',
        );
      }
    }
  }
}
