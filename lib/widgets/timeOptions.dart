import 'package:flutter/material.dart';
import 'package:pomodox/timerService.dart';
import 'package:pomodox/utils.dart';
import 'package:provider/provider.dart';

class TimeOpstions extends StatelessWidget {
  const TimeOpstions({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "change time :",
          style: textStyle(12, Colors.white54, FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
            controller: ScrollController(
                initialScrollOffset: 240), //change it later *******
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: selectableTimes.map((time) {
                return InkWell(
                  onTap: () => provider.selectedTime(double.parse(time)),
                  child:
                      //      int.parse(time) == provider.selectTime ?
                      Container(
                    // the Selected Container should have bigger size.
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    width: 60, // default : 70
                    height: 45, //default : 55
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
                              ? textStyle(
                                  30,
                                  OBJrednderColor(provider.currentState),
                                  FontWeight.w700)
                              : textStyle(22, Colors.white, FontWeight.w400)),
                    ),
                  ),
                );
              }).toList(),
            )),
      ],
    );
  }
}
