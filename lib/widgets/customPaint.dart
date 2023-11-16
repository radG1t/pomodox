import 'package:flutter/material.dart';

class CubePainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CubePainterClass(),
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
    canvas.drawLine(const Offset(0, 0), const Offset(75, 0), redPaint);
    canvas.drawLine(const Offset(0, 0), const Offset(0, 75), redPaint);
    canvas.drawLine(const Offset(75, 75), const Offset(75, 0), redPaint);
    canvas.drawLine(const Offset(75, 75), const Offset(0, 75), redPaint);

    // Draw the second square in blue
    canvas.drawLine(const Offset(100, 0), const Offset(175, 0), bluePaint);
    canvas.drawLine(const Offset(100, 0), const Offset(100, 75), bluePaint);
    canvas.drawLine(const Offset(175, 75), const Offset(175, 0), bluePaint);
    canvas.drawLine(const Offset(175, 75), const Offset(100, 75), bluePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CubePainterClass extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final cubePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4;

    // Draw the cube
    // Front face
    canvas.drawLine(const Offset(50, 50), const Offset(150, 50), cubePaint);
    canvas.drawLine(const Offset(150, 50), const Offset(150, 150), cubePaint);
    canvas.drawLine(const Offset(50, 150), const Offset(150, 150), cubePaint);
    canvas.drawLine(const Offset(50, 50), const Offset(50, 150), cubePaint);

    // Back face
    canvas.drawLine(const Offset(75, 25), const Offset(175, 25), cubePaint);
    canvas.drawLine(const Offset(175, 25), const Offset(175, 125), cubePaint);
    canvas.drawLine(const Offset(75, 125), const Offset(175, 125), cubePaint);
    canvas.drawLine(const Offset(75, 25), const Offset(75, 125), cubePaint);

    // Connect front and back faces
    canvas.drawLine(const Offset(50, 50), const Offset(75, 25), cubePaint);
    canvas.drawLine(const Offset(150, 50), const Offset(175, 25), cubePaint);
    canvas.drawLine(const Offset(50, 150), const Offset(75, 125), cubePaint);
    canvas.drawLine(const Offset(150, 150), const Offset(175, 125), cubePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
