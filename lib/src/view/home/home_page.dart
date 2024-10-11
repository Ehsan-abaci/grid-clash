import 'package:connect_four/src/config/theme/color_manager.dart';
import 'package:connect_four/src/core/extension.dart';
import 'package:connect_four/src/view/game/player_vs_player_game_page.dart';
import 'package:connect_four/src/view/game/widgets/score_board.dart';
import 'package:connect_four/src/view/home/widgets/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:text_3d/text_3d.dart';

import '../game/player_vs_bot_game_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorManager.lightPurple,
              ColorManager.darkPurple,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            20.toHeight,
            ThreeDText(
              text: "GRID CLASH",
              depth: 13,
              angle: 0,
              textStyle: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 90,
                letterSpacing: 5,
                color: ColorManager.red,
              ),
              style: ThreeDStyle.inset,
            ),
            (h * .1).toInt().toHeight,
            SizedBox(
              height: h * .1,
              child: MenuButton(
                text: 'PLAYER VS PLAYER',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlayerVsPlayerGamePage(),
                  ),
                ),
              ),
            ),
            50.toHeight,
            SizedBox(
              height: h * .1,
              child: MenuButton(
                text: 'PLAYER VS BOT',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlayerVsBotGamePage(),
                  ),
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
