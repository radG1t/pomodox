import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pomodox/timerservice.dart';
import 'package:provider/provider.dart';

class animation extends StatelessWidget {
  animation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    String animationName = provider.currentState == "Focus" ? "work" : "rest";
    bool animationRepeat = provider.currentState == "Focus" ? false : true;
    double animationHeight = provider.currentState == "Focus" ? 30 : 0;
    return Column(
      children: [
        SizedBox(
          height: animationHeight,
        ),
        Lottie.asset(
          'assets/$animationName.json',
          width: 300,
          height: 300,
          fit: BoxFit.fill,
          repeat: animationRepeat,
        ),
        SizedBox(
          height: animationHeight,
        ),
      ],
    );
  }
}
