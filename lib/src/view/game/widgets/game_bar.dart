import 'package:connect_four/src/config/theme/color_manager.dart';
import 'package:connect_four/src/core/extension.dart';
import 'package:connect_four/src/feature/game/bloc/game/player_vs_bot_bloc.dart';
import 'package:connect_four/src/feature/game/bloc/game/player_vs_player_bloc.dart';
import 'package:connect_four/src/feature/game/domain/entities/player.dart';
import 'package:connect_four/src/view/game/widgets/game_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../feature/game/bloc/game/game_event.dart';
import 'board_full_circle.dart';

class GameBar extends StatelessWidget {
  const GameBar({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: h * .77,
      left: 0,
      right: 0,
      child: SizedBox(
        height: h * .15,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: _button('MENU', () {
                  Navigator.pop(context);
                }, w),
              ),
              Align(
                alignment: Alignment.center,
                child: _logo(w),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _button('RESTART', () {
                  context.read<GameBloc>().add(const GameEvent.resetGame());
                }, w),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo(double w) {
    return SizedBox(
      width: 50,
      height: 50,
      child: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.zero,
        children: List.generate(
          4,
          (i) => i % 3 == 0
              ? BoardFullCircle(
                  color: ColorManager.yellow,
                  hasShadow: true,
                )
              : BoardFullCircle(
                  color: ColorManager.red,
                  hasShadow: true,
                ),
        ),
      ),
    );
  }

  Widget _button(String text, VoidCallback onTap, double w) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: ColorManager.withe,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        minimumSize: Size(w * .07, 35),
        textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: onTap,
      child: Text(text),
    );
  }
}
