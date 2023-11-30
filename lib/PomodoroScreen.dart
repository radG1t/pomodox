import 'package:flutter/material.dart';
import 'package:pomodox/timerservice.dart';
import 'package:pomodox/utils.dart';
import 'package:pomodox/widgets/animation.dart';
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 25),
              child: Column(
                children: [
                  const TimerCard(),
                  // const timerBox(),
                  const SizedBox(
                    height: 22,
                  ),
                  // const TimeOpstions(),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () =>
                            Provider.of<TimerService>(context, listen: false)
                                .reset(),
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.white54,
                          size: 28,
                        ),
                      ),
                      const TimeController(),
                      IconButton(
                        onPressed: () =>
                            Provider.of<TimerService>(context, listen: false),
                        icon: const Icon(
                          Icons.skip_next_rounded,
                          color: Colors.white54,
                          size: 28,
                        ),
                      ),
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
                  //MoreOptions(),
                  const noteBox(),
                  const SizedBox(
                    height: 80,
                  ),
                  const TimeOpstions(),
                  const SizedBox(
                    height: 20,
                  ),
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
