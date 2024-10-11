import 'package:flutter/material.dart';

import '../../../config/theme/color_manager.dart';

class BoardEmptyCircle extends StatelessWidget {
  final double scale;
  final Alignment alignment;
  const BoardEmptyCircle({
    super.key,
    this.scale = 1,
    this.alignment = Alignment.center,
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
          shadows: const [
            BoxShadow(
              color: Colors.black,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, -2),
            )
          ],
          color: ColorManager.lightPurple,
          shape: const CircleBorder(
              side: BorderSide(
            color: Colors.black,
            width: 2,
          )),
        ),
      ),
    );
  }
}
