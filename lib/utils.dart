import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Colors.redAccent;
  } else {
    return Colors.lightBlueAccent;
  }
}
