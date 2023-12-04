import 'package:flutter/material.dart';
import 'package:pomodox/PomodoroScreen.dart';
import 'package:pomodox/timerService.dart';
import 'package:pomodox/utils.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    Color navigationBarColor = provider.currentState == "Focus"
        ? BCrenderColor("Focus").colors[1]
        : BCrenderColor("Break").colors[1];
    Color statusBarColor = provider.currentState == "Focus"
        ? BCrenderColor("Focus").colors[0]
        : BCrenderColor("Break").colors[0];
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: navigationBarColor,
      statusBarColor: statusBarColor,
    ));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PomodoroScreen(),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:pomodox/widgets/onboardingScreen.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:pomodox/PomodoroScreen.dart';
// import 'package:pomodox/timerService.dart';
// import 'package:pomodox/utils.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter/services.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   bool seenOnboarding = prefs.getBool('seenOnboarding') ?? false;

//   runApp(seenOnboarding
//       ? ChangeNotifierProvider<TimerService>(
//           create: (_) => TimerService(),
//           child: const MyApp(),
//         )
//       : MaterialApp(
//           debugShowCheckedModeBanner: false,
//           home: OnboardingScreen(),
//         ));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<TimerService>(context);
//     Color navigationBarColor = provider.currentState == "Focus"
//         ? BCrenderColor("Focus").colors[1]
//         : BCrenderColor("Break").colors[1];
//     Color statusBarColor = provider.currentState == "Focus"
//         ? BCrenderColor("Focus").colors[0]
//         : BCrenderColor("Break").colors[0];

//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       systemNavigationBarColor: navigationBarColor,
//       statusBarColor: statusBarColor,
//     ));
//     return ChangeNotifierProvider<TimerService>(
//       create: (_) => TimerService(),
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: PomodoroScreen(),
//       ),
//     );
//   }
// }
