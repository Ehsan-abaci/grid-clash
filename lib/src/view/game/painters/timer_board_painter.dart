import 'dart:ui';

import 'package:connect_four/src/config/theme/color_manager.dart';
import 'package:flutter/material.dart';

class TimerBoardPainter extends CustomPainter {
  Color bgColor;

  TimerBoardPainter({
    required this.bgColor,
  });
  @override
  void paint(Canvas canvas, Size size) {
    const radius = 10.0;
    const padding = 3.0;

    Path path = Path();
    path
      ..moveTo(0, size.height - radius)
      ..lineTo(0, size.height * .4 + radius)
      ..arcToPoint(
        Offset(radius, size.height * .4 - radius),
        radius: const Radius.circular(radius * 2),
      )
      ..lineTo(size.width / 2 - radius, radius)
      ..arcToPoint(
        Offset((size.width / 2) + radius, radius),
        radius: const Radius.circular(radius * 2),
      )
      ..lineTo(size.width - radius, size.height * .4 - radius)
      ..arcToPoint(
        Offset(size.width, size.height * .4 + radius),
        radius: const Radius.circular(radius * 2),
      )
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(
        Offset(size.width - radius * 2, size.height + radius),
        radius: const Radius.circular(radius * 2),
      )
      ..lineTo(radius * 2, size.height + radius)
      ..arcToPoint(
        Offset(0, size.height - radius),
        radius: const Radius.circular(radius * 2),
      )
      ..close();
    Path path2 = Path();
    path2
      ..moveTo(padding, size.height - radius - (padding))
      ..lineTo(padding, size.height * .4 + radius - padding)
      ..arcToPoint(
        Offset(radius, size.height * .4 - radius + padding),
        radius: const Radius.circular(radius * 2),
      )
      ..lineTo(size.width / 2 - radius, radius + padding)
      ..arcToPoint(
        Offset((size.width / 2) + radius, radius + padding),
        radius: const Radius.circular(radius * 2),
      )
      ..lineTo(size.width - radius, size.height * .4 - radius + padding)
      ..arcToPoint(
        Offset(size.width - padding, size.height * .4 + radius - padding),
        radius: const Radius.circular(radius * 2),
      )
      ..lineTo(
        size.width - padding,
        size.height - radius - padding * 4,
      )
      ..arcToPoint(
        Offset(
          size.width - radius * 2 - padding,
          size.height + radius - padding * 4,
        ),
        radius: const Radius.circular(radius * 2),
      )
      ..lineTo(radius * 2 + padding, size.height + radius - padding * 4)
      ..arcToPoint(
        Offset(
          padding,
          size.height - radius - padding * 4,
        ),
        radius: const Radius.circular(radius * 2),
      )
      ..close();
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black;
    Paint paint2 = Paint()
      ..style = PaintingStyle.fill
      ..color = bgColor;
    canvas.drawPath(path, paint);
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
