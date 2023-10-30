import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  // @override

  //TimerService({required this.timer});
  // @override       //* havaset be in tike bashe
  Timer timer = Timer.periodic(const Duration(seconds: 1), (timer) {});
  double currentDuration = 1500;
  double selectTime = 1500;
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

  void reset() {
    timer.cancel();
    currenState = "Focus";
    currentDuration = selectTime = 1500;
    rounds = goal = 0;
    timerPlaying = false;
    notifyListeners();
  }

  void handleNextRound() {
    if (currenState == 'Focus' && rounds != 3) {
      currenState = "Break";
      currentDuration = 300;
      selectTime = 300;
      rounds++;
      goal++;
    } else if (currenState == "Break") {
      currenState = "Focus";
      currentDuration = 1500;
      selectTime = 1500;
    } else if (currenState == "Focus" && rounds == 3) {
      currenState = "LongBreak";
      currentDuration = 1500;
      selectTime = 1500;
      rounds++;
      goal++;
    } else if (currenState == "LongBreak") {
      currenState = "Focus";
      currentDuration = 1500;
      selectTime = 1500;
      rounds = 0;
    }
    notifyListeners();
  }
}
