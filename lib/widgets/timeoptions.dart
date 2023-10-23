import 'package:flutter/material.dart';
import 'package:pomodox/utils.dart';

class TimeOpstions extends StatelessWidget {
  const TimeOpstions({super.key});

  final int selectedTime = 1500;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: ScrollController(initialScrollOffset: 165),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: selectableTimes.map((time) {
            return Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              width: 70,
              height: 55, //selected container with diffrent decoration
              decoration: int.parse(time) == selectedTime
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
                    style: int.parse(time) == selectedTime
                        ? textStyle(22, Colors.red, FontWeight.w700)
                        : textStyle(22, Colors.white, FontWeight.w700)),
              ),
            );
          }).toList(),
        ));
  }
}
