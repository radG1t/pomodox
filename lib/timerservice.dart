import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  // @override

  //TimerService({required this.timer});
  // @override       //* havaset be in tike bashe
  Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {});
  double currentDuration = 10; //1500
  double selectTime = 10; //1500
  bool timerPlaying = false;
  int rounds = 0;
  int goal = 0;
  String currenState = 'Focus';
  void start() {
    timerPlaying = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (currentDuration == 0) {
        handleNextRound();
      } else
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

  void handleNextRound() {
    if (currenState == 'Focus') {
      currenState = "Break";
      currentDuration = 4; // 300 300
      selectTime = 4;
      rounds++;
      goal++;
    } else if (currenState == "Break") {
      currenState = "Focus";
      currentDuration = 5; // 1500 1500
      selectTime = 5;
    } else if (currenState == "Focus" && rounds == 3) {
      currenState = "LongBreak";
      currentDuration = 3; //1500 1500
      selectTime = 3;
      rounds++;
      goal++;
    } else if (currenState == "LongBreak") {
      currenState = "Focus";
      currentDuration = 10; //1500 1500
      selectTime = 10;
      rounds = 0;
    }
    notifyListeners();
  }
}
// - 17:37