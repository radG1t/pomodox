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
/* 
Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: LinearGradient(
            colors: [Color(0xFFFF8200), Color(0xFFFF2600)],
            begin: Alignment(0.5, -1.0),
            end: Alignment(0.5, 1.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xC1F3F4F6),
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Button',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
 */ 