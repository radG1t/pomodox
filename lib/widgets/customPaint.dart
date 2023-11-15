import 'package:flutter/material.dart';

class SquarePainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: Cube3D(),
    );
  }
}

class Cube3D extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final redPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4;

    final bluePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 4;

    // Draw the first square in red
    canvas.drawLine(Offset(0, 0), Offset(75, 0), redPaint);
    canvas.drawLine(Offset(0, 0), Offset(0, 75), redPaint);
    canvas.drawLine(Offset(75, 75), Offset(75, 0), redPaint);
    canvas.drawLine(Offset(75, 75), Offset(0, 75), redPaint);

    // Draw the second square in blue
    canvas.drawLine(Offset(100, 0), Offset(175, 0), bluePaint);
    canvas.drawLine(Offset(100, 0), Offset(100, 75), bluePaint);
    canvas.drawLine(Offset(175, 75), Offset(175, 0), bluePaint);
    canvas.drawLine(Offset(175, 75), Offset(100, 75), bluePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
