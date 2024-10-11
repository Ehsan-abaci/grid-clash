import 'dart:developer';
import 'dart:ui';
import 'package:connect_four/src/config/theme/color_manager.dart';
import 'package:connect_four/src/core/extension.dart';
import 'package:connect_four/src/feature/game/bloc/game/player_vs_player_bloc.dart';
import 'package:connect_four/src/feature/game/bloc/timer/timer_count_down_bloc.dart';
import 'package:connect_four/src/feature/game/domain/entities/game.dart';
import 'package:connect_four/src/feature/game/domain/entities/player.dart';
import 'package:connect_four/src/view/game/painters/timer_board_painter.dart';
import 'package:connect_four/src/view/game/widgets/board_empty_circle.dart';
import 'package:connect_four/src/view/game/widgets/board_full_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../feature/game/bloc/game/game_event.dart';
import '../../../feature/game/bloc/game/game_state.dart';
import '../../../feature/game/bloc/game/player_vs_bot_bloc.dart';

const columnMaxScale = 1.1;

class GameBoardView extends StatefulWidget {
  const GameBoardView({super.key});

  @override
  State<GameBoardView> createState() => _gameState();
}

class _gameState extends State<GameBoardView> {
  final GlobalKey widgetKey = GlobalKey();

  double indicatorWidth = 0;
  double offset = 0;
  int col = 0;
  bool showIndicator = false;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Positioned(
      bottom: h * .1,
      left: 0,
      right: 0,
      child: SizedBox(
        height: h * .54,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 8),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25),
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
                  color: Colors.grey.shade200,
                ),
                child: IgnorePointer(
                  ignoring: context.watch<GameBloc>().state.maybeWhen(
                            orElse: () => false,
                            gameInProgress: (game) =>
                                game.currentPlayer == game.player2,
                          ) &&
                      context.watch<GameBloc>() is PlayerVsBotBloc,
                  child: SizedBox(
                    height: h * .45,
                    width: h * .45,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        ColumnIndicator(
                          scaleX: columnMaxScale,
                          offset: offset,
                          indWidth: indicatorWidth,
                          isVisible: showIndicator,
                        ),
                        Positioned.fill(
                          child: Listener(
                            onPointerMove: _handlePointerMove,
                            child: GestureDetector(
                              onTapDown: _handleOnTapDown,
                              onTapUp: _handleOnTapUp,
                              onTapCancel: _handleLongPressEndOrCancel,
                              onLongPressStart: _handleLongPressStart,
                              onLongPressCancel: _handleLongPressEndOrCancel,
                              onLongPressEnd: (_) =>
                                  _handleLongPressEndOrCancel(),
                              onLongPressUp: _onLongPressUp,
                              child: GridView.count(
                                crossAxisSpacing: 0,
                                mainAxisSpacing: 0,
                                key: widgetKey,
                                crossAxisCount: 7,
                                padding: const EdgeInsets.all(7),
                                children: List.generate(
                                  42,
                                  (i) {
                                    return BlocBuilder<GameBloc, GameState>(
                                      builder: (context, state) {
                                        return state.maybeWhen(
                                          orElse: () =>
                                              const BoardEmptyCircle(),
                                          gameOver: (game, winner) =>
                                              _buildCircle(
                                            game: game,
                                            players: [
                                              game.player1,
                                              game.player2
                                            ],
                                            i: i,
                                          ),
                                          gameInProgress: (game) =>
                                              _buildCircle(
                                            game: game,
                                            players: [
                                              game.player1,
                                              game.player2
                                            ],
                                            i: i,
                                            showIndicator: showIndicator,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: BlocBuilder<GameBloc, GameState>(
                  builder: (context, state) {
                    return CustomPaint(
                      painter: TimerBoardPainter(
                          bgColor: state.maybeWhen(
                        orElse: () => ColorManager.red,
                        gameInProgress: (game) {
                          if (game.player1 == game.currentPlayer) {
                            return ColorManager.red;
                          } else {
                            return ColorManager.yellow;
                          }
                        },
                      )),
                      child: SizedBox(
                        width: h * .2,
                        height: h * .15,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 25),
                              Text(
                                state.maybeWhen(
                                  orElse: () => "GAME END",
                                  initGame: () => "START GAME",
                                  gameInProgress: (game) {
                                    if (game.player1 == game.currentPlayer) {
                                      return "PLAYER 1'S TURN";
                                    } else {
                                      return "PLAYER 2'S TURN";
                                    }
                                  },
                                ),
                                style: TextStyle(
                                  color: ColorManager.withe,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              BlocBuilder<TimerCountDownBloc,
                                  TimerCountDownState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    orElse: () => const SizedBox(),
                                    inProgressUserTurn: (duration) => Text(
                                      "${duration}s",
                                      style: TextStyle(
                                        color: ColorManager.withe,
                                        fontSize: 35,
                                        letterSpacing: 4,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircle({
    required Game game,
    required List<Player> players,
    required int i,
    bool showIndicator = false,
  }) {
    final circle = game.board.grid[(i - i % 7) ~/ 7][i % 7];
    final p1 = circle == players.first.id;

    if (circle == null) {
      return BoardEmptyCircle(
        scale: showIndicator && col == i % 7 ? columnMaxScale : 1,
        alignment: showIndicator && col == i % 7
            ? const Alignment(0.0, 5)
            : Alignment.center,
      );
    } else {
      return BoardFullCircle(
        color: p1 ? ColorManager.red : ColorManager.yellow,
        scale: showIndicator && col == i % 7 ? columnMaxScale : 1,
        alignment: showIndicator && col == i % 7
            ? const Alignment(0.0, 5)
            : Alignment.center,
      );
    }
  }

  void playTurn() {
    context.read<GameBloc>().add(GameEvent.makeMove(col: col));
  }

  _onLongPressUp() {
    playTurn();
  }

  _handleOnTapUp(TapUpDetails details) {
    playTurn();
    setState(() {
      showIndicator = false;
    });
  }

  _handleOnTapDown(TapDownDetails details) {
    final box = widgetKey.currentContext?.findRenderObject() as RenderBox?;
    final position = details.localPosition;
    setState(() {
      indicatorWidth = (box!.size.width) / 7;
      showIndicator = true;
      col = (position.dx / indicatorWidth).toInt();
      offset = _calculateOffsetForColumn(col, indicatorWidth);
    });
  }

  RenderBox? _getRenderBox() =>
      widgetKey.currentContext?.findRenderObject() as RenderBox?;

  _handlePointerMove(PointerMoveEvent event) {
    final RenderBox? box = _getRenderBox();
    if (box == null) return;

    final localPosition = event.localPosition;
    final boardWidth = box.size.width;

    final calculatedColumnWidth = boardWidth / 7;
    final newCol = (localPosition.dx ~/ calculatedColumnWidth).clamp(0, 6);

    if (newCol != col) {
      setState(() {
        col = newCol;
        offset = _calculateOffsetForColumn(col, calculatedColumnWidth);
      });
    }
  }

  double _calculateOffsetForColumn(int columnIndex, double columnWidth) {
    return (columnIndex) * columnWidth + 16 / 3 - (columnIndex * 6 / 3);
  }

  _handleLongPressStart(LongPressStartDetails details) {
    final box = _getRenderBox();
    if (box == null) return;
    final position = details.localPosition;
    setState(() {
      indicatorWidth = (box.size.width) / 7;
      showIndicator = true;
      col = (position.dx / indicatorWidth).toInt();
      offset = _calculateOffsetForColumn(col, indicatorWidth);
    });
  }

  _handleLongPressEndOrCancel() {
    setState(() {
      showIndicator = false;
    });
  }
}

class ColumnIndicator extends StatelessWidget {
  const ColumnIndicator({
    super.key,
    this.scaleX = 1.0,
    this.offset = 0,
    this.indWidth = 0,
    this.isVisible = false,
  });
  final double indWidth;
  final double scaleX;
  final double offset;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 200),
      curve: Curves.linearToEaseOut,
      left: offset,
      top: lerpDouble(300, -15, isVisible ? 1 : 0),
      bottom: 0,
      width: indWidth,
      child: AnimatedOpacity(
        opacity: isVisible ? 1 : 0,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 200),
        child: Transform.scale(
          scaleX: scaleX,
          child: BlocBuilder<GameBloc, GameState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Container(),
                gameInProgress: (game) {
                  final turn = game.currentPlayer;
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          turn == game.player1
                              ? ColorManager.red
                              : ColorManager.yellow,
                          ColorManager.withe,
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
