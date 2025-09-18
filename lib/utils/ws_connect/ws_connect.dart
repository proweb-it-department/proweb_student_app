import 'dart:convert';

import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/notification_manager/notification_manager.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_enums.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:talker_logger/talker_logger.dart';
import 'package:web_socket_channel/status.dart' as status;

class Channel {
  final WsConnectionState _connect = sl<WsConnectionState>();
  WebSocketChannel? _channel;
  bool _isClosed = false;
  bool _isStartConnect = false;

  WsConnectionState get connect => _connect;

  Future<void> wsConnect() async {
    try {
      if (_isStartConnect) return;
      _isStartConnect = true;

      if (_channel != null) return;
      String? token = sl<LocalData>().getAccessToken();

      if (token == null) {
        _isStartConnect = false;
        return;
      }

      final wsUrl = Uri.parse('${GlobalPath.chatWss}?token=$token');
      final channel = WebSocketChannel.connect(wsUrl);

      await channel.ready;

      channel.stream.listen(
        _event,
        cancelOnError: false,
        onDone: () async {
          _channel = null;
          if (_isClosed) return;
          await Future.delayed(Duration(seconds: 2));
          if (_isClosed) return;
          wsConnect();
        },
        onError: (error) {
          TalkerLogger().error(error);
        },
      );
      _channel = channel;
      TalkerLogger().log(
        'CONNECT WS',
        level: LogLevel.info,
        pen: AnsiPen()..green(),
      );
    } catch (e) {
      TalkerLogger().error(e);
      await Future.delayed(Duration(seconds: 2));
      _isStartConnect = false;
      await wsConnect();
    }
  }

  close() async {
    if (_channel == null) return;
    _isClosed = true;
    await _channel?.sink.close(status.goingAway);
  }

  void _event(dynamic eventData) {
    final dynamic event = jsonDecode(eventData);
    TalkerLogger().log(event);
    if (event is Map) {
      Map eventWS = event;
      final String? object = eventWS["object"];
      final dynamic data = eventWS["data"];
      if (object == null) return;
      if (data == null) return;
      if (object == WsObjectData.notification.name ||
          object == WsObjectData.update.name) {
        final Map<String, dynamic> updateData = data;
        final String? objectKey = updateData['object_key'];
        final dynamic content = updateData['content'];
        if (objectKey == null || content == null) return;
        dynamic objectId;
        if ((objectKey == WsEvent.homeworkComment.name ||
                objectKey == WsEvent.homeworkCheck.name) &&
            content is Map) {
          final homeworkId = content['homework_id'];
          if (homeworkId != null) {
            objectId = homeworkId;
          }
        } else if (objectKey == WsEvent.testingComment.name && content is Map) {
          final assignId = content['assign_id'];
          if (assignId != null) {
            objectId = assignId;
          }
        } else if ((objectKey == WsEvent.ticketComment.name ||
                objectKey == WsEvent.ticketClosingOfferProposed.name ||
                objectKey == WsEvent.ticketResponsible.name ||
                objectKey == WsEvent.ticketStatus.name) &&
            content is Map) {
          final assignId = content['ticket_id'];
          if (assignId != null) {
            objectId = assignId;
          }
        }
        final Map<String, ConnectionData>? connections =
            _connect.connections[objectKey];
        if (connections != null && connections.isNotEmpty == true) {
          bool isLocal = false;
          if (objectId != null) {
            connections.forEach((key, value) {
              if (value.objectId == objectId) {
                value.callback(content);
                isLocal = true;
              }
            });
          } else {
            connections.forEach((key, value) {
              value.callback(content);
            });
          }
          if (isLocal) return;
        }
        if (object == WsObjectData.notification.name) {}
        sl<NotificationManager>().statusObjectNotification(
          objectKey,
          updateData['id'],
          content,
        );
      }
    }
  }
}
