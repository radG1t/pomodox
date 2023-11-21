import 'package:flutter/material.dart';
import 'package:pomodox/utils.dart';

class MoreOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 650),
          curve: Curves.easeInOut,
        );
      },
      child: Row(
        children: [
          Text(
            'More Options down here',
            style: textStyle(14, Colors.white, FontWeight.w700),
          ),
          Container(
            height: 1.0,
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
          ),
        ],
      ),
    );
  }
}
