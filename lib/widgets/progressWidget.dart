import 'package:flutter/material.dart';
import 'package:pomodox/timerService.dart';
import 'package:pomodox/utils.dart';
import 'package:provider/provider.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${provider.rounds}/4",
              style: textStyle(18, const Color.fromARGB(255, 226, 226, 226),
                  FontWeight.bold),
            ),
            Text(
              '${provider.goal}/12',
              style: textStyle(18, const Color.fromARGB(255, 226, 226, 226),
                  FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Round',
              style: textStyle(16, const Color.fromARGB(255, 226, 226, 226),
                  FontWeight.w400),
            ),
            Text(
              'Goal   ',
              style: textStyle(16, const Color.fromARGB(255, 226, 226, 226),
                  FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
