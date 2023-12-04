import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomodox/timerService.dart';
import 'package:provider/provider.dart';

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
  } else if (currentState == "Break") {
    return Color.fromARGB(255, 43, 134, 74);
  } else {
    return Colors.orange;
  }
}

LinearGradient BCrenderColor(String currentState) {
  if (currentState == "Focus") {
    return const LinearGradient(
        colors: [Color.fromARGB(255, 7, 79, 151), Color(0xFF001F3F)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        tileMode: TileMode.clamp);
  } else if (currentState == "Break") {
    return const LinearGradient(
        colors: [
          Color.fromARGB(255, 42, 167, 75),
          Color.fromARGB(255, 72, 99, 79),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        tileMode: TileMode.decal);
  } else {
    return LinearGradient(
        colors: [
          Colors.yellow.shade400,
          Colors.deepOrange,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        tileMode: TileMode.decal);
  }
}

class sentences extends StatelessWidget {
  sentences({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context, listen: false);
    if (provider.currentState == "Focus") {
      return Text(
        'Stay Focused',
        style: textStyle(22, Colors.white, FontWeight.w700),
      );
    } else if (provider.currentState == "Break") {
      return Text(
        'Take a deep breath',
        style: textStyle(22, Colors.white, FontWeight.w700),
      );
    } else {
      return Text(
        'Realx and Recharge',
        style: textStyle(22, Colors.white, FontWeight.w700),
      );
    }
  }
}


// class sentence extends StatelessWidget {
//   sentence({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<TimerService>(context, listen: false);
//     bool randomS = provider.currentState == "Focus" ? true : false;
//     return Container(
//       child: randomS
//           ? Text(
//               'Stay focused',
//               style: textStyle(22, Colors.white, FontWeight.w700),
//             )
//           : Text(
//               'Take a deep breath',
//               style: textStyle(22, Colors.white, FontWeight.w700),
//             ),
//     );
//   }
// }