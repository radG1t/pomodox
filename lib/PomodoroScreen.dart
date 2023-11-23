import 'package:flutter/material.dart';
import 'package:pomodox/timerservice.dart';
import 'package:pomodox/utils.dart';
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
                BoxDecoration(gradient: BCrenderColor(provider.currenState)),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const Column(
                  children: [
                    TimerCard(),
                    magicCubes(),
                    SizedBox(
                      height: 22,
                    ),
                    TimeOpstions(),
                    SizedBox(
                      height: 40,
                    ),
                  ],
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
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const getRandomSentence(),
                    const SizedBox(
                      height: 40,
                    ),
                    /* CubePainter(),
                   SizedBox(
                        height: 40, //value : 240 for cube
                      ),
                     */
                    Row(
                      children: [
                        MoreOptions(),
                      ],
                    ),
                    const SizedBox(
                      height: 40, //value : 240 for cube
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
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
