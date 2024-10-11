import 'dart:math' show Random;

import 'package:bloc/bloc.dart';
import 'package:connect_four/src/feature/game/bloc/game/player_vs_bot_bloc.dart';
import 'package:connect_four/src/feature/game/domain/entities/move.dart';
import 'package:connect_four/src/feature/game/domain/entities/player.dart';

import '../../domain/entities/game.dart';
import '../../domain/usecases/check_win_condition_usecase.dart';
import '../../domain/usecases/make_move_usecase.dart';
import '../../domain/usecases/start_game_usecase.dart';

import 'game_event.dart'; // Importing the event
import 'game_state.dart'; // Importing the state

class PlayerVsPlayerBloc extends GameBloc {
  final StartGameUsecase startGameUseCase;
  final MakeMoveUsecase makeMoveUseCase;
  final CheckWinConditionUsecase checkWinConditionUseCase;

  late Emitter<GameState> _emit;

  PlayerVsPlayerBloc(
    this.startGameUseCase,
    this.makeMoveUseCase,
    this.checkWinConditionUseCase,
  ) : super(const GameState.initGame()) {
    on<GameEvent>((event, emit) async{
      _emit = emit;
     await event.map(
        initGame: (event) => _initGame(),
        makeMove: (event) => _makeMove(event.col),
        playAgain: (event) => _playAgain(),
        resetGame: (event) => _resetGame(),
      );
    });
  }
  _resetGame() {
    _emit(const GameState.initGame());
  }

  Future<void> _initGame() async {
    Player p1 = Player(id: '1', name: 'Player 1');
    Player p2 = Player(id: '2', name: 'Player 2');
    final game = await startGameUseCase((p1, p2));
    _emit(GameState.gameInProgress(game: game));
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

    final game = await startGameUseCase((p1, p2));
    _emit(GameState.gameInProgress(game: game));
  }

  Future<void> _makeMove(int? col) async {
    final game = state.maybeWhen(
      orElse: () => null,
      gameInProgress: (game) => game,
    );

    while (col == null) {
      final rnd = Random().nextInt(7);
      if (!game!.board.isColumnFull(rnd)) {
        col = rnd;
      }
    }

    Game updatedGame = await makeMoveUseCase((
      game!,
      Move(player: game.currentPlayer, column: col),
    ));

    Player? winner = await checkWinConditionUseCase(updatedGame);

    if (winner != null) {
      _emit(GameState.gameOver(winner: winner, lastGame: updatedGame));
    } else if (game.board.isBoardFull()) {
      _emit(GameState.gameOver(winner: null, lastGame: updatedGame));
    } else {
      _emit(const GameState.initGame());
      _emit(GameState.gameInProgress(game: updatedGame));
    }
  }
}
