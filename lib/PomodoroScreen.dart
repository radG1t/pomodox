import 'package:flutter/material.dart';
import 'package:pomodox/timerservice.dart';
import 'package:pomodox/utils.dart';
import 'package:pomodox/widgets/customPaint.dart';
import 'package:pomodox/widgets/magicCubes.dart';
import 'package:pomodox/widgets/notebox.dart';
import 'package:pomodox/widgets/progresswidget.dart';
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
        body: SingleChildScrollView(
          child: Container(
            decoration:
                BoxDecoration(gradient: BCrenderColor(provider.currenState)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 50, 15, 20),
              child: Column(
                children: [
                  magicCubes(),
                  magicCubes(),

                  //timercards(),
                  SizedBox(
                    height: 22,
                  ),
                  TimeOpstions(),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TimeController(),
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
                  SizedBox(
                    height: 20,
                  ),
                  getRandomSentence(),
                  SizedBox(
                    height: 40,
                  ),
                  //  CubePainter(),
                  SizedBox(
                    height: 40, //value : 240 for cube
                  ),
                  noteBox(),
                  SizedBox(
                    height: 120,
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
