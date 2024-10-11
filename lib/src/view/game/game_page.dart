import 'dart:developer';

import 'package:connect_four/src/config/theme/color_manager.dart';
import 'package:connect_four/src/feature/game/bloc/game/player_vs_bot_bloc.dart';
import 'package:connect_four/src/feature/game/bloc/game/player_vs_player_bloc.dart';
import 'package:connect_four/src/feature/game/bloc/timer/timer_count_down_bloc.dart';
import 'package:connect_four/src/view/game/widgets/game_board.dart';
import 'package:connect_four/src/view/game/widgets/score_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/di.dart';
import '../../feature/game/bloc/game/game_event.dart';
import '../../feature/game/bloc/game/game_state.dart';
import '../../feature/game/domain/entities/player.dart';
import 'widgets/game_bar.dart';

class GamePage extends StatefulWidget {
  GamePage({super.key, required this.gameBloc});

  final GameBloc gameBloc;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  void initState() {
    context
        .read<TimerCountDownBloc>()
        .add(const TimerCountDownEvent.introCountDownStart());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return BlocProvider.value(
      value: widget.gameBloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<GameBloc, GameState>(
            listener: (context, state) {
              state.whenOrNull(
                initGame: () {
                  context
                      .read<TimerCountDownBloc>()
                      .add(const TimerCountDownEvent.introCountDownStart());
                },
                gameInProgress: (game) {
                  context
                      .read<TimerCountDownBloc>()
                      .add(const TimerCountDownEvent.userTurnStart());
                },
                gameOver: (game, winner) {
                  context
                      .read<TimerCountDownBloc>()
                      .add(const TimerCountDownEvent.resetUserTimeout());
                  showWinLoseDrawDialog(context, winner);
                },
              );
            },
          ),
        ],
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: ColorManager.lightPurple,
          body: Center(
            child: SizedBox(
              width: w > 500 ? 500 : w,
              child: IgnorePointer(
                ignoring: context.watch<TimerCountDownBloc>().state.maybeWhen(
                      initial: (_) => true,
                      completeUserTurn: () => true,
                      inProgressIntro: (_) => true,
                      orElse: () => false,
                    ),
                child: Stack(
                  children: [
                    _getDarkBackground(h),
                    const GameBar(),
                    const ScoreBoard(),
                    const GameBoardView(),
                    _getIntroTimer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showWinLoseDrawDialog(BuildContext context, Player? winner) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                  )),
              title: winner != null
                  ? Text('${winner.name.toUpperCase()} WON')
                  : const Text("DRAW"),
              actions: [
                FilledButton(
                  onPressed: () {
                    context
                        .read<TimerCountDownBloc>()
                        .add(const TimerCountDownEvent.introCountDownStart());
                    context
                        .read<GameBloc>()
                        .add(const GameEvent.playAgain());
                        log("close popup");
                    Navigator.pop(context);
                  },
                  child: const Text("PLAY AGAIN"),
                ),
              ],
            ));
  }

  BlocConsumer<TimerCountDownBloc, TimerCountDownState> _getIntroTimer() {
    return BlocConsumer<TimerCountDownBloc, TimerCountDownState>(
      builder: (context, state) {
        log(state.toString());
        return state.maybeWhen(
          completeIntro: () => const Align(),
          inProgressIntro: (duration) {
            return Positioned.fill(
              child: Material(
                color: Colors.black.withOpacity(.4),
                child: Align(
                  alignment: Alignment.center,
                  child: Card(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Text(
                        duration.toString(),
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  fontSize: 42,
                                  color: Colors.white,
                                ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          orElse: () => const Align(),
        );
      },
      listener: (context, state) {
        log(state.toString());
        state.whenOrNull(
          completeIntro: () {
            context.read<TimerCountDownBloc>().add(
                  const TimerCountDownEvent.userTurnStart(),
                );
            context.read<GameBloc>().add(const GameEvent.initGame());
          },
          completeUserTurn: () {
            context.read<GameBloc>().add(const GameEvent.makeMove());
            context
                .read<TimerCountDownBloc>()
                .add(const TimerCountDownEvent.resetUserTimeout());
          },
        );
      },
    );
  }

  Positioned _getDarkBackground(double h) {
    return Positioned.fill(
      top: h * .75,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        child: ColoredBox(
          color: ColorManager.darkPurple,
        ),
      ),
    );
  }
}
