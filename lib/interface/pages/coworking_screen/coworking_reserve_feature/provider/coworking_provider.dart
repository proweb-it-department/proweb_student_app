import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/room/room.dart';
import 'package:proweb_student_app/models/seat_item/seat_item.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class CoworkingProvider with ChangeNotifier {
  bool _isAcquainted = false;
  Room? _room;
  String _date = _currentDate(
    DateTime.fromMillisecondsSinceEpoch(sl<LocalData>().getTime().toInt()),
  );
  String? _time;
  MyGroupsItem? _myGroup;
  SeatItem? _seat;

  bool get isAcquainted => _isAcquainted;
  Room? get room => _room;
  String get date => _date;
  String? get time => _time;
  MyGroupsItem? get myGroup => _myGroup;
  SeatItem? get seat => _seat;

  void toggleAcquainted() {
    _isAcquainted = !_isAcquainted;
    notifyListeners();
  }

  void setRoom(Room? cabinet) {
    if (_room?.id != cabinet?.id) {
      setSeat(null);
    }
    _room = cabinet;
    notifyListeners();
  }

  void setDate(String reserveDate) {
    _date = reserveDate;
    notifyListeners();
  }

  void setTime(String reserveTime) {
    _time = reserveTime;
    notifyListeners();
  }

  void setMyGroup(MyGroupsItem selectMyGroup) {
    _myGroup = selectMyGroup;
    notifyListeners();
  }

  void setSeat(SeatItem? selectSeat) {
    _seat = selectSeat;
    notifyListeners();
  }

  static String _currentDate(DateTime baseDate) {
    return '${baseDate.day.toString().padLeft(2, '0')}.${baseDate.month.toString().padLeft(2, '0')}.${baseDate.year}';
  }
}
