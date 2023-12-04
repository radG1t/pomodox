import 'package:flutter/material.dart';
import 'package:pomodox/timerService.dart';
import 'package:pomodox/utils.dart';
import 'package:pomodox/widgets/animation.dart';
import 'package:pomodox/widgets/noteBox.dart';
import 'package:pomodox/widgets/progressWidget.dart';
import 'package:pomodox/widgets/timeController.dart';
import 'package:pomodox/widgets/timeOptions.dart';
import 'package:pomodox/widgets/timerCard.dart';
import 'package:provider/provider.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
              decoration: BoxDecoration(
                  gradient: BCrenderColor(provider.currentState))),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 25),
              child: Column(
                children: [
                  const TimerCard(),
                  const SizedBox(height: 30),
                  const TimeControllers(),
                  sentences(),
                  animation(),
                  const noteBox(),
                  const SizedBox(height: 80),
                  const TimeOpstions(),
                  const SizedBox(height: 40),
                  const ProgressWidget(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
