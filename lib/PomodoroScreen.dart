import 'package:flutter/material.dart';
import 'package:pomodox/timerservice.dart';
import 'package:pomodox/utils.dart';
import 'package:pomodox/widgets/animation.dart';
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
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 25),
              child: Column(
                children: [
                  const TimerCard(),
                  // const timerBox(),

                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        children: [
                          TimeController(),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        // selectTime = 300;
                        onPressed: () {},
                        icon: const Icon(
                          Icons.skip_next_rounded,
                          color: Colors.white60,
                          size: 28,
                        ),
                      ),
                    ],
                  ),

                  const getRandomSentence(),
                  animation(),
                  //MoreOptions(),
                  const noteBox(),
                  const SizedBox(
                    height: 80,
                  ),

                  const TimeOpstions(),
                  const SizedBox(
                    height: 40,
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
