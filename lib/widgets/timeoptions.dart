import 'package:flutter/material.dart';
import 'package:pomodox/timerservice.dart';
import 'package:pomodox/utils.dart';
import 'package:provider/provider.dart';

class TimeOpstions extends StatelessWidget {
  const TimeOpstions({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return SingleChildScrollView(
        controller: ScrollController(initialScrollOffset: 165),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: selectableTimes.map((time) {
            return InkWell(
              onTap: () => provider.selectedTime(double.parse(time)),
              child: Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                width: 70,
                height: 55, //selected container with diffrent decoration
                decoration: int.parse(time) == provider.selectTime
                    ? BoxDecoration(
                        /*  border: Border.all(
                      width: 3,
                      color: Colors.white30,
                    ),
                    */
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      )
                    : BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.white30,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                child: Center(
                  child: Text((int.parse(time) ~/ 60).toString(),
                      style: int.parse(time) == provider.selectTime
                          ? textStyle(22, rednderColor(provider.currenState),
                              FontWeight.w700)
                          : textStyle(22, Colors.white, FontWeight.w700)),
                ),
              ),
            );
          }).toList(),
        ));
  }
}
