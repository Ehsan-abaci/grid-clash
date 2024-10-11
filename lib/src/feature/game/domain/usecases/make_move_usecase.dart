import 'package:connect_four/src/core/usecase/use_case.dart';

import '../entities/game.dart';
import '../entities/move.dart';

class MakeMoveUsecase extends UseCase<Game, (Game, Move)> {

  @override
  Future<Game> call((Game, Move) param) async {
    final board = param.$1.board;

    // Check if the move is valid
    if (board.isColumnFull(param.$2.column)) {
      throw Exception('Invalid move: The column is full');
    }

    // Apply the player's move to the board
    param.$1.board.makeMove(param.$2);

    // Switch the turn to the other player
    param.$1.switchTurn();

    // Return the updated game state
    return param.$1;
  }
}
