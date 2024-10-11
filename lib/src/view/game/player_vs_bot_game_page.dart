import 'package:connect_four/src/feature/game/bloc/game/player_vs_bot_bloc.dart';
import 'package:connect_four/src/view/game/game_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/di.dart';

class PlayerVsBotGamePage extends StatelessWidget {
  const PlayerVsBotGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GamePage(
      gameBloc: sl<PlayerVsBotBloc>(),
    );
  }
}
