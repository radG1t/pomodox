import 'package:flutter/material.dart';
import 'package:pomodox/timerservice.dart';
import 'package:pomodox/utils.dart';
import 'package:pomodox/widgets/magicCubes.dart';
import 'package:pomodox/widgets/notebox.dart';
import 'package:pomodox/widgets/progresswidget.dart';
import 'package:pomodox/widgets/timecontroller.dart';
import 'package:pomodox/widgets/timeoptions.dart';
import 'package:provider/provider.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: rednderColor(provider.currenState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: rednderColor(provider.currenState),
        title: Text(
          'Pomodox',
          style: textStyle(24, Colors.white54, FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () =>
                  Provider.of<TimerService>(context, listen: false).reset(),
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
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 12),
            child: Container(
              alignment: Alignment.center,
              child: const Column(
                children: [
                  magicCubes(),
                  // TimerCard(),
                  SizedBox(
                    height: 22,
                  ),
                  TimeOpstions(),
                  SizedBox(
                    height: 40,
                  ),
                  TimeController(),
                  SizedBox(
                    height: 12,
                  ),
                  getRandomSentence(),
                  noteBox(),
                  SizedBox(
                    height: 40,
                  ),
                  ProgressWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
