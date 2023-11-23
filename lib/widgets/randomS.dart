import 'package:flutter/material.dart';
import 'package:pomodox/utils.dart';
import 'dart:math';

String workRandomSentence() {
  List<String> sentences = [
    'Stay focused',
    'make it happen!',
    'Dream big, work hard',
    'Every small step counts',
    'Keep moving forward.'
  ];
  Random random = Random();
  int index = random.nextInt(sentences.length);
  return sentences[index];
}

String breakRandomSentence() {
  List<String> sentences = [
    'Rest your mind, refresh your focus',
    'Get rest',
    'Take a deep breath',
    'Relax and recharge!',
    'Give yourself a break,You deserve it:D',
    'Disconnect and recharge',
  ];
  Random random = Random();
  int index = random.nextInt(sentences.length);
  return sentences[index];
}

class getRandomSentence extends StatelessWidget {
  const getRandomSentence({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      workRandomSentence(),
      style: textStyle(22, Colors.white, FontWeight.w700),
    );
  }
}
