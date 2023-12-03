// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:introduction_screen/introduction_screen.dart';


// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   // Key to track the state of the introduction screen
//   final introKey = GlobalKey<IntroductionScreenState>();

//   // Function to navigate to the main screen after onboarding
//   void _onIntroEnd(BuildContext context) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool('seenOnboarding', true);

//     // Navigate to the main screen
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(builder: (_) => YourMainScreen()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IntroductionScreen(
//       key: introKey,
//       pages: [
//         PageViewModel(
//           title: "Page 1 Title",
//           body: "Page 1 Body",
//           image: Image.asset("assets/page1.png"),
//         ),
//         PageViewModel(
//           title: "Page 2 Title",
//           body: "Page 2 Body",
//           image: Image.asset("assets/page2.png"),
//         ),
//         // Add more pages as needed
//       ],
//       onDone: () => _onIntroEnd(context),
//       onSkip: () => _onIntroEnd(context),
//       showSkipButton: true,
//       skip: const Text("Skip"),
//       next: const Icon(Icons.arrow_forward),
//       done: const Text("Done"),
//     );
//   }
// }

// /*
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   bool seenOnboarding = prefs.getBool('seenOnboarding') ?? false;

//   runApp(MyApp(seenOnboarding: seenOnboarding));
// }

// class MyApp extends StatelessWidget {
//   final bool seenOnboarding;

//   MyApp({required this.seenOnboarding});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: seenOnboarding ? YourMainScreen() : OnboardingScreen(),
//       // Add other MaterialApp configurations as needed
//     );
//   }
// }

// */ 