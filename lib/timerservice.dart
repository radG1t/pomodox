import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  // @override

  //TimerService({required this.timer});
  // @override       //* havaset be in tike bashe
  Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {});
  double currentDuration = 1500;
  double selectTime = 1500;
  bool timerPlaying = false;

  void start() {
    timerPlaying = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      currentDuration--;
      notifyListeners();
    });
  }

  void pause() {
    timer.cancel();
    timerPlaying = false;
    notifyListeners();
  }

  void selectedTime(double seconds) {
    selectTime = seconds;
    currentDuration = seconds;
    notifyListeners();
  }
}
