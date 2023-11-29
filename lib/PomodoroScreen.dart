import 'package:flutter/material.dart';
import 'package:pomodox/timerservice.dart';
import 'package:pomodox/utils.dart';
import 'package:pomodox/widgets/animation.dart';
import 'package:pomodox/widgets/magicCubes.dart';
import 'package:pomodox/widgets/moreOptions.dart';
import 'package:pomodox/widgets/notebox.dart';
import 'package:pomodox/widgets/progresswidget.dart';
import 'package:pomodox/widgets/randomS.dart';
import 'package:pomodox/widgets/timecontroller.dart';
import 'package:pomodox/widgets/timeoptions.dart';
import 'package:pomodox/widgets/timercard.dart';
import 'package:provider/provider.dart';

//          decoration:
//      BoxDecoration(gradient: BCrenderColor(provider.currenState)),
class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            //background
            decoration:
                BoxDecoration(gradient: BCrenderColor(provider.currentState)),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const TimerCard(),
                const magicCubes(),
                const SizedBox(
                  height: 22,
                ),
                const TimeOpstions(),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TimeController(),
                    IconButton(
                        onPressed: () =>
                            Provider.of<TimerService>(context, listen: false)
                                .reset(),
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.white54,
                          size: 24,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const getRandomSentence(),
                const SizedBox(
                  height: 40,
                ),
                animation(),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    MoreOptions(),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const noteBox(),
                const SizedBox(
                  height: 120,
                ),
                const ProgressWidget(),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
