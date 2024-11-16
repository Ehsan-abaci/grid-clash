import 'dart:math';

import 'package:connect_four/src/feature/game/bloc/game/player_vs_player_bloc.dart';
import 'package:connect_four/src/feature/game/domain/usecases/check_win_condition_usecase.dart';
import 'package:connect_four/src/feature/game/domain/usecases/make_move_usecase.dart';
import 'package:connect_four/src/feature/game/domain/usecases/start_game_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/game.dart';
import '../../domain/entities/move.dart';
import '../../domain/entities/player.dart';
import '../../domain/usecases/make_move_bot_usecase.dart';

import 'game_event.dart'; // Importing the event
import 'game_state.dart'; // Importing the state

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc(super.initialState);
}

class PlayerVsBotBloc extends GameBloc {
  final CheckWinConditionUsecase checkWinConditionUsecase;
  final StartGameUsecase startGameUsecase;
  final MakeMoveBotUsecase makeMoveBotUsecase;
  final MakeMoveUsecase makeMoveHumanUsecase;

  late Emitter<GameState> _emit;
  PlayerVsBotBloc(
    this.checkWinConditionUsecase,
    this.makeMoveBotUsecase,
    this.startGameUsecase,
    this.makeMoveHumanUsecase,
  ) : super(const GameState.initGame()) {
    on<GameEvent>(
      (event, emit) async {
        _emit = emit;
        await event.map(
          initGame: (_) => _initGame(),
          makeMove: (value) => _makeMove(col: value.col),
          playAgain: (value) => _playAgain(),
          resetGame: (value) => _resetGame(),
        );
      },
    );
  }
  _resetGame() {
    _emit(const GameState.initGame());
  }

  Future<void> _playAgain() async {
    final (lastGame, winner) = state.maybeWhen(
      orElse: () => (null, null),
      gameOver: (lastGame, winner) => (lastGame, winner),
    );

    final p1 = lastGame!.player1.id == winner?.id
        ? lastGame.player1.copyWith(wins: lastGame.player1.wins + 1)
        : lastGame.player1;
    final p2 = lastGame.player2.id == winner?.id
        ? lastGame.player2.copyWith(wins: lastGame.player2.wins + 1)
        : lastGame.player2;

    final game = await startGameUsecase((p1, p2));
    _emit(GameState.gameInProgress(game: game));
  }

  Future<void> _initGame() async {
    Player p1 = Player(id: '1', name: 'Player 1');
    Player p2 = Player(id: '2', name: 'Bot');
    final game = await startGameUsecase((p1, p2));
    _emit(GameState.gameInProgress(game: game));
  }

  Future<void> _makeMove({int? col}) async {
    final game = state.maybeWhen(
      orElse: () => null,
      gameInProgress: (game) => game,
    );
    if (game == null) return;

    while (col == null) {
      final rnd = Random().nextInt(7);
      if (!game.board.isColumnFull(rnd)) {
        col = rnd;
      }
    }
    Game updatedGame = await makeMoveHumanUsecase((
      game,
      Move(player: game.currentPlayer, column: col),
    ));
    await _checkWinner(updatedGame, game);

    // await Future.delayed(const Duration(seconds: 1));

    updatedGame = await makeMoveBotUsecase(updatedGame);

    await _checkWinner(updatedGame, game);
  }

  Future<void> _checkWinner(Game updatedGame, Game game) async {
    Player? winner = await checkWinConditionUsecase(updatedGame);

    if (winner != null) {
      _emit(GameState.gameOver(winner: winner, lastGame: updatedGame));
      return;
    } else if (game.board.isBoardFull()) {
      _emit(GameState.gameOver(winner: null, lastGame: updatedGame));
      return;
    } else {
      _emit(const GameState.initGame());
      _emit(GameState.gameInProgress(game: updatedGame));
    }
  }
}
