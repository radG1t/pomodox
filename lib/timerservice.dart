import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  // @override

  //TimerService({required this.timer});
  // @override       //* havaset be in tike bashe

  late Timer timer;
  double currentDuration = 1500;
  double selectTime = 1500;

  void selectedTime(double seconds) {
    selectTime = seconds;
    currentDuration = seconds;
    notifyListeners();
  }
}
