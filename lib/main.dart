import 'package:flutter/material.dart';
import 'package:pomodox/PomodoroScreen.dart';
import 'package:pomodox/timerservice.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child: const MyApp(),
  ));
}

//what tha
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: PomodoroScreen());
  }
}
