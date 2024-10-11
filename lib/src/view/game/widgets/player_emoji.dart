// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:connect_four/src/view/game/painters/happy_face_painter.dart';
import 'package:flutter/material.dart';

import 'package:connect_four/src/config/theme/color_manager.dart';

class PlayerEmoji extends StatelessWidget {
  PlayerEmoji({super.key, required this.me});
  bool me;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: ShapeDecoration(
        shadows: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 4),
          )
        ],
        color: me ? ColorManager.red : ColorManager.yellow,
        shape: const CircleBorder(
          side: BorderSide(color: Colors.black, width: 2),
        ),
      ),
      child: CustomPaint(
        painter: HappyFacePinter(
          me: me,
        ),
      ),
    );
  }
}
