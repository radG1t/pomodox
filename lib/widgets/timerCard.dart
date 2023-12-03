import 'package:flutter/material.dart';
import 'package:pomodox/timerService.dart';
import 'package:pomodox/utils.dart';
import 'package:provider/provider.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final secounds = provider.currentDuration % 60;
    final minutes = provider.currentDuration;
    return Column(
      children: [
        Text(
          provider.currentState,
          style: textStyle(35, Colors.white, FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          // width: MediaQuery.of(context).size.width / 2.5,
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white60, width: 1.5),
            borderRadius: BorderRadius.circular(350),
            color: const Color.fromRGBO(255, 255, 255, 0.498),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    minutes <= 600
                        ? "0${minutes ~/ 60}"
                        : (minutes ~/ 60).toString(),
                    style: textStyle(70, OBJrednderColor(provider.currentState),
                        FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    ':',
                    style: textStyle(65, Colors.white, FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    // check it later
                    secounds == 0
                        ? "${secounds.round()}0"
                        : (secounds % 60).round().toString(),

                    style: textStyle(70, OBJrednderColor(provider.currentState),
                        FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // sec num
                  Text(
                    'Min',
                    style: textStyle(12, Colors.grey.shade200, FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Sec',
                    style: textStyle(12, Colors.grey.shade200, FontWeight.w300),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
