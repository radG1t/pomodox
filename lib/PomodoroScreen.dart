import 'package:flutter/material.dart';
import 'package:pomodox/utils.dart';
import 'package:pomodox/widgets/timeoptions.dart';
import 'package:pomodox/widgets/timercard.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.redAccent,
        title: Text(
          'Pomodox',
          style: textStyle(24, Colors.white54, FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.refresh,
                color: Colors.white54,
                size: 24,
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const TimerCard(),
                  const SizedBox(
                    height: 22,
                  ),
                  TimeOpstions(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
