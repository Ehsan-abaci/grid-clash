import 'package:flutter/material.dart';

class BoardFullCircle extends StatelessWidget {
  final Color color;
  final bool hasShadow;
  final double scale;
  final Alignment alignment;
  const BoardFullCircle({
    super.key,
    required this.color,
    this.scale = 1,
    this.alignment = Alignment.center,
    this.hasShadow = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: scale,
      alignment: alignment,
      duration: const Duration(milliseconds: 300),
      child: Container(
          margin: const EdgeInsets.all(4),
          decoration: ShapeDecoration(
            color: color,
            shadows: [
              if (hasShadow)
                const BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 2),
                )
            ],
            shape: const CircleBorder(
              side: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
          )),
    );
  }
}
