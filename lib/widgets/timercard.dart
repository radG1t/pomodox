// import 'package:flutter/material.dart';
// import 'package:pomodox/timerservice.dart';
// import 'package:pomodox/utils.dart';
// import 'package:provider/provider.dart';

// class TimerCard extends StatelessWidget {
//   const TimerCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<TimerService>(context);
//     final secounds = provider.currentDuration % 60;
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Text(
//           provider.currentState,
//           style: textStyle(35, Colors.white, FontWeight.w600),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               //min
//               width: MediaQuery.of(context).size.width / 3.2,
//               height: 165,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 4,
//                       blurRadius: 4,
//                       offset: const Offset(0, 2),
//                     ),
//                   ]),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     (provider.currentDuration ~/ 60)
//                         .toString(), //61 -> 61~/60    61%60
//                     style: textStyle(70, OBJrednderColor(provider.currentState),
//                         FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 25,
//                   ),
//                   Text(
//                     'Min',
//                     style: textStyle(12, Colors.grey, FontWeight.w300),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               width: 10,
//             ),
//             Text(
//               ':',
//               style: textStyle(65, Colors.white70, FontWeight.bold),
//             ),
//             const SizedBox(
//               width: 10,
//             ),
//             Container(
//               //sec
//               width: MediaQuery.of(context).size.width / 3.2,
//               height: 165,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 4,
//                       blurRadius: 4,
//                       offset: Offset(0, 2),
//                     ),
//                   ]),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     secounds == 0
//                         ? "${secounds.round()}0"
//                         : (secounds % 60).round().toString(),
//                     style: textStyle(70, OBJrednderColor(provider.currentState),
//                         FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 25,
//                   ),
//                   Text(
//                     'Sec',
//                     style: textStyle(12, Colors.grey, FontWeight.w300),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

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
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      height: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white60, width: 1.5),
          borderRadius: BorderRadius.circular(250),
          color: const Color.fromRGBO(255, 255, 255, 0.498),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            provider.currentState,
            style: textStyle(35, Colors.white, FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        (provider.currentDuration ~/ 60)
                            .toString(), //61 -> 61~/60    61%60
                        style: textStyle(
                            70,
                            OBJrednderColor(provider.currentState),
                            FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Min',
                        style: textStyle(
                            12, Colors.grey.shade200, FontWeight.w300),
                      ),
                    ],
                  ),
                  Text(
                    ':',
                    style: textStyle(65, Colors.white, FontWeight.bold),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        secounds == 0
                            ? "${secounds.round()}0"
                            : (secounds % 60).round().toString(),
                        style: textStyle(
                            70,
                            OBJrednderColor(provider.currentState),
                            FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Sec',
                        style: textStyle(
                            12, Colors.grey.shade200, FontWeight.w300),
                      ),
                    ],
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
          )
        ],
      ),
    );
  }
}
