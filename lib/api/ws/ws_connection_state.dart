import 'package:uuid/uuid.dart';

typedef CallBack = void Function(dynamic data);

class ConnectionData {
  final int? objectId;
  final CallBack callback;

  ConnectionData({this.objectId, required this.callback});
}

class WsConnectionState {
  final Map<String, Map<String, ConnectionData>> _data = {};
  final Map<String, String> _annotations = {};

  Map<String, Map<String, ConnectionData>> get connections => _data;

  String subscribe({required String channel, required ConnectionData connection}) {
    final String uuid = Uuid().v4();
    _data.putIfAbsent(channel, () => {})[uuid] = connection;
    _annotations[uuid] = channel;
    return uuid;
  }

  void unsubscribe({required String uuid}) {
    _data.forEach(
      (key, value) {
        if (value[uuid] != null) {
          value.remove(uuid);
        }
      },
    );
    _annotations.remove(uuid);
  }
}
