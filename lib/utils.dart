import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(double size, Color color, FontWeight fw) {
  return GoogleFonts.lato(fontSize: size, fontWeight: fw, color: color);
}

List selectableTimes = [
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

Color OBJrednderColor(String currentState) {
  if (currentState == "Focus") {
    return Colors.lightBlue.shade900;
  } else {
    return Color.fromARGB(255, 57, 179, 98);
  }
}

LinearGradient BCrenderColor(String currentState) {
  if (currentState == "Focus") {
    Color bluenova = const Color(0xFF001F3F);
    Color somebluenova = const Color.fromARGB(255, 7, 79, 151);
    return LinearGradient(
        colors: [somebluenova, bluenova],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        tileMode: TileMode.clamp);
  } else {
    return const LinearGradient(
        colors: [
          // Color.fromARGB(255, 4, 99, 30),
          // Color.fromARGB(255, 92, 126, 101)
          Color.fromARGB(255, 92, 126, 101),
          Colors.black26
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        tileMode: TileMode.decal);
  }
}
