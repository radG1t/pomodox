import 'package:flutter/material.dart';
import 'package:pomodox/timerservice.dart';
import 'package:pomodox/utils.dart';
import 'package:provider/provider.dart';
import 'dart:math';

String restTimeSentece() {
  List<String> restTimeSentece = [
    'Rest your mind, refresh your focus',
    'Get rest',
    'Take a deep breath',
    'Relax and recharge!',
    'Give yourself a break,You deserve it:D',
    'Disconnect and recharge',
  ];
  Random random = Random();
  int index = random.nextInt(restTimeSentece.length);
  return restTimeSentece[index];
}

String workTimeSentences() {
  List<String> workTimeSentences = [
    'Stay focused',
    'make it happen!',
    'Dream big, work hard',
    'Every small step counts',
    'Keep moving forward.'
  ];
  Random random = Random();
  int index = random.nextInt(workTimeSentences.length);
  return workTimeSentences[index];
}

class getRandomSentence extends StatelessWidget {
  const getRandomSentence({super.key});

  @override
  Widget build(BuildContext context) {
    if (Provider.of<TimerService>(context).currenState == "Focus") {
      return Text(
        workTimeSentences(),
        style: textStyle(22, Colors.white, FontWeight.w700),
      );
    } else {
      return Text(
        restTimeSentece(),
        style: textStyle(22, Colors.white, FontWeight.w700),
      );
    }
  }
}
