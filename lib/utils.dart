import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

TextStyle textStyle(double size, Color color, FontWeight fw) {
  return GoogleFonts.lato(fontSize: size, fontWeight: fw, color: color);
}

List selectableTimes = [
  //minutes in secounds

  '300',
  '600',
  '900',
  '1200',
  '1500',
  '1800',
  '2100',
  '2400',
  '2700',
  '3000',
  '3300',
  '3600',
];

Color rednderColor(String currentState) {
  if (currentState == "Focus") {
    return Colors.black12;
  } else {
    return Colors.lightBlueAccent;
  }
}

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
    'Give yourself a break,You deserve it;)',
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
    return Text(workRandomSentence());
  }
}
// if focus page this randoms else those randoms