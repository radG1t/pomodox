import 'package:flutter/material.dart';

class TimeController extends StatefulWidget {
  const TimeController({super.key});

  @override
  State<TimeController> createState() => _TimeControllerState();
}

class _TimeControllerState extends State<TimeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      decoration:
          const BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
      child: IconButton(
          onPressed: () {},
          icon: const Center(
            child: Icon(
              Icons.pause,
              color: Colors.white,
              size: 50,
            ),
          )),
    );
  }
}
