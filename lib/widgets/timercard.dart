import 'package:flutter/material.dart';
import 'package:pomodox/timerservice.dart';
import 'package:pomodox/utils.dart';
import 'package:provider/provider.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final secounds = provider.currentDuration % 60;
    return Column(
      children: [
        Text(
          provider.currenState,
          style: textStyle(35, Colors.white, FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 175,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ]),
              child: Center(
                child: Text(
                  (provider.currentDuration ~/ 60)
                      .toString(), //61 -> 61~/60    61%60
                  style: textStyle(
                      70, rednderColor(provider.currenState), FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              ':',
              style: textStyle(60, Colors.white70, FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 175,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ]),
              child: Center(
                child: Text(
                  secounds == 0
                      ? "${secounds.round()}0"
                      : (secounds % 60).round().toString(),
                  style: textStyle(
                      70, rednderColor(provider.currenState), FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
