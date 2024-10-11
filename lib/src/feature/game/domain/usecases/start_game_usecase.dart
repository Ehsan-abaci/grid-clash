import 'package:connect_four/src/core/usecase/use_case.dart';
import 'package:connect_four/src/feature/game/domain/entities/game.dart';
import 'package:connect_four/src/feature/game/domain/entities/player.dart';

import '../entities/board.dart';

class StartGameUsecase extends UseCase<Game, (Player, Player)> {
  @override
  Future<Game> call((Player, Player) param) async {
    // Create a new 6x7 board for Connect Four
    final board = Board();

    // Initialize the game with player1 going first
    final game = Game(
      player1: param.$1,
      player2: param.$2,
      board: board,
      currentPlayer: param.$1, // Set player1 to start the game
    );

    // Return the initialized game
    return game;
  }
}
