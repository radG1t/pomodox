import 'package:flutter/material.dart';
import 'package:pomodox/timerservice.dart';
import 'package:provider/provider.dart';

class TimeController extends StatefulWidget {
  const TimeController({super.key});

  @override
  State<TimeController> createState() => _TimeControllerState();
}

class _TimeControllerState extends State<TimeController> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Container(
        width: 85,
        height: 85,
        decoration:
            const BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
        child: IconButton(
          onPressed: () {
            provider.timerPlaying
                ? Provider.of<TimerService>(context, listen: false).pause()
                : Provider.of<TimerService>(context, listen: false).start();
          },
          icon: Center(
              child: provider.timerPlaying
                  ? const Icon(
                      Icons.pause_outlined,
                      color: Colors.white,
                      size: 50,
                    )
                  : const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 50,
                    )),
        ));
  }
}
