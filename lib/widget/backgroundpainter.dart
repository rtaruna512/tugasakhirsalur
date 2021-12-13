import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;

class BackgroundPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        CustomPaint(
          size: Size(double.infinity, 180),
          painter: BgPainter(),
        ),
      ],
    );
  }
}

class BgPainter extends CustomPainter{
  Color salur1 = const Color(0xff014753);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..shader = ui.Gradient.linear(
          Offset(100, 100),
          Offset(300, 300),
          <Color>[
            gradientGdark,
            gradientGLight,
          ]);

    var path = Path();

    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
        size.width * 1.0, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

