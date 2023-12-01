import 'package:flutter/material.dart';
import 'package:pomodox/widgets/timerCard.dart';

class timerBox extends StatelessWidget {
  const timerBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        RotatingContainer(),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white60, width: 1.5),
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromRGBO(255, 255, 255, 0.498),
          ),
          width: MediaQuery.of(context).size.width / 1.3,
          height: 260.0,
          child: TimerCard(),
        ),
      ],
    );
  }
}

class RotatingContainer extends StatefulWidget {
  @override
  _RotatingContainerState createState() => _RotatingContainerState();
}

class _RotatingContainerState extends State<RotatingContainer> {
  double rotation = 0.0;
  bool forward = true;

  @override
  void initState() {
    super.initState();
  }

  void toggleRotationDirection() {
    setState(() {
      forward = !forward;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 4),
      tween: Tween<double>(
        begin: forward ? 0 : -2 * 3.14159265359,
        end: forward ? 2 * 3.14159265359 : 0,
      ),
      builder: (BuildContext context, double value, Widget? child) {
        return Transform.rotate(
          angle: value,
          child: child,
        );
      },
      onEnd: () {
        toggleRotationDirection();
      },
      child: Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF1afbf0),
              Color(0xFFda00ff),
            ],
            begin: Alignment(0, -1),
            end: Alignment(1, 1),
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
