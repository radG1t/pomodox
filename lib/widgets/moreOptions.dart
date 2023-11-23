import 'package:flutter/material.dart';
import 'package:pomodox/utils.dart';

/*
class MoreOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GestureDetector(
        onTap: () {
          Scrollable.ensureVisible(
            context,
            duration: const Duration(milliseconds: 650),
            curve: Curves.easeInOut,
          );
        },
        child: Expanded(
          child: Row(
            children: [
              Text(
                'More Options down here',
                style: textStyle(14, Colors.white, FontWeight.w700),
              ),
              Container(
                height: 3.0,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

class MoreOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 590),
          curve: Curves.easeInOut,
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'More Options',
            style: textStyle(14, Colors.white, FontWeight.w700),
          ),
          Container(
            width: MediaQuery.of(context).size.width < 500
                ? 350.0
                : 500.0, //*****/
            height: 0.9,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
