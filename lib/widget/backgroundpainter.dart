import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;

import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class BackgroundPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        CustomPaint(
          size: Size(double.infinity, 200),
          painter: BgPainter(),
        ),
      ],
    );
  }
}

class BgPainter extends CustomPainter{

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

    path.moveTo(0, size.height * 0.95);
    path.quadraticBezierTo(size.width * 0.15, size.height * 0.7,
        size.width * 0.3, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.4, size.height * 1,
        size.width * 0.5, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.6,
        size.width * 1, size.height * 0.75);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

