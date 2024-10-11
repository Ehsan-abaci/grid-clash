import 'package:connect_four/src/config/theme/color_manager.dart';
import 'package:connect_four/src/core/extension.dart';
import 'package:connect_four/src/view/game/widgets/player_emoji.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../feature/game/bloc/game/game_state.dart';
import '../../../feature/game/bloc/game/player_vs_bot_bloc.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Positioned(
      bottom: h * .66,
      left: 0,
      right: 0,
      child: SizedBox(
        height: h * .13,
        child: LayoutBuilder(
          builder: (context, c) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                _scoreBoardWidget(c, true),
                const SizedBox(width: 10),
                _scoreBoardWidget(c, false),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _scoreBoardWidget(BoxConstraints c, bool me) {
    return SizedBox(
      height: c.maxHeight * .8,
      width: c.maxWidth * .45 > 180 ? 180 : c.maxWidth * .45,
      child: Stack(
        children: [
          Positioned(
            right: me ? 0 : null,
            left: me ? null : 0,
            child: Container(
              height: c.maxHeight * .8,
              width: c.maxWidth * .43 > 165 ? 165 : c.maxWidth * .43,
              decoration: BoxDecoration(
                border: const BorderDirectional(
                  start: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                  end: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                  top: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 10),
                  )
                ],
                color: ColorManager.withe,
                borderRadius: BorderRadius.circular(20),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  textDirection: me ? TextDirection.ltr : TextDirection.rtl,
                  children: [
                    10.toWidth,
                    Text(
                      me ? "PLAYER 1" : "PLAYER 2",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    15.toWidth,
                    BlocBuilder<GameBloc, GameState>(
                      builder: (context, state) {
                        return Text(
                          state.maybeWhen(
                            orElse: () => '0',
                            gameOver: (lastGame, winner) => me
                                ? "${lastGame.player1.wins}"
                                : "${lastGame.player2.wins}",
                            gameInProgress: (game) => me
                                ? "${game.player1.wins}"
                                : "${game.player2.wins}",
                          ),
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: me ? null : 0,
            child: PlayerEmoji(
              me: me,
            ),
          )
        ],
      ),
    );
  }
}
