import 'package:flutter/material.dart';

class PredictiveBackController extends ChangeNotifier {
  double progress = 0.0;
  bool committed = false;

  void update(double value) {
    progress = value.clamp(0, 1);
    notifyListeners();
  }

  void reset() {
    progress = 0;
    committed = false;
    notifyListeners();
  }
}
