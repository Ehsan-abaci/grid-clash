import 'package:connect_four/src/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/game/bloc/game/player_vs_player_bloc.dart';
import '../../feature/game/bloc/timer/timer_count_down_bloc.dart';
import 'game_page.dart';

class PlayerVsPlayerGamePage extends StatelessWidget {
  const PlayerVsPlayerGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    initGamePage();
    return BlocProvider(
      create: (context) => TimerCountDownBloc(sl()),
      child: GamePage(
        gameBloc: sl<PlayerVsPlayerBloc>(),
      ),
    );
  }
}
