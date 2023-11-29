// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

// class animation extends StatelessWidget {
//   const animation({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Lottie.asset('assets/a0.json');
//   }
// }
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class animation extends StatelessWidget {
  const animation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/a0.json',
      width: 200,
      height: 200,
      fit: BoxFit.fill,
    );
  }
}
