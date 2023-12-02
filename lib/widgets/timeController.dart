import 'package:flutter/material.dart';
import 'package:pomodox/timerService.dart';
import 'package:provider/provider.dart';

class TimeControllers extends StatefulWidget {
  const TimeControllers({super.key});

  @override
  State<TimeControllers> createState() => _TimeControllersState();
}

class _TimeControllersState extends State<TimeControllers> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () =>
              Provider.of<TimerService>(context, listen: false).reset(),
          icon: const Icon(
            Icons.refresh,
            color: Colors.white54,
            size: 28,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Container(
              width: 85,
              height: 85,
              decoration: const BoxDecoration(
                  color: Colors.black26, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {
                  provider.timerPlaying
                      ? Provider.of<TimerService>(context, listen: false)
                          .pause()
                      : Provider.of<TimerService>(context, listen: false)
                          .start();
                },
                icon: Center(
                    child: provider.timerPlaying
                        ? const Icon(
                            Icons.pause_outlined,
                            color: Colors.white,
                            size: 50,
                          )
                        : const Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                            size: 50,
                          )),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {
            Provider.of<TimerService>(context, listen: false).currentDuration =
                0;
          },
          icon: const Icon(
            Icons.skip_next_rounded,
            color: Colors.white60,
            size: 28,
          ),
        ),
      ],
    );
  }
}
