
import 'dart:math' show pi;

import 'package:flutter/material.dart';

class HappyFacePinter extends CustomPainter {
  bool me;
  HappyFacePinter({
    required this.me,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawArc(
      Rect.fromCircle(
          center:
              Offset(me ? size.width / 1.7 : size.width / 2.5, size.height / 2),
          radius: 8),
      0,
      pi,
      false,
      paint,
    );
    canvas.drawRect(
        Rect.fromLTWH(
            me ? size.width / 1.4 : size.width / 4, size.height / 2.3, .5, 2.5),
        paint);
    canvas.drawRect(
        Rect.fromLTWH(
            me ? size.width / 2 : size.width / 2.2, size.height / 2.3, .5, 2.5),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
