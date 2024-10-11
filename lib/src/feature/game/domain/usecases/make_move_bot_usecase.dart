import 'package:connect_four/src/core/usecase/use_case.dart';
import 'package:connect_four/src/feature/game/domain/entities/board.dart';
import 'package:connect_four/src/feature/game/domain/entities/game.dart';
import 'package:connect_four/src/feature/game/domain/entities/move.dart';
class MakeMoveBotUsecase extends UseCase<Game, Game> {
  @override
  Future<Game> call(Game param) async {
    // Use Minimax to get the best move for the AI
    int bestMove = getBestMove(param);

    final move = Move(player: param.player2, column: bestMove);

    // Apply the move to the board
    param.board.makeMove(move);

    // Switch turns to the other player
    param.switchTurn();

    // Return the updated game state
    return param;
  }
}

// Evaluate the board state
int evaluateBoard(Game game) {
  if (game.board.checkWin(game.player2.id)) {
    return 1000; // AI (player2) win
  } else if (game.board.checkWin(game.player1.id)) {
    return -1000; // Player (player1) win
  }
  // Return 0 for non-terminal states (draws will be handled in the main logic)
  return 0;
}

// Get valid columns where a move can be made
List<int> getValidMoves(Board board) {
  List<int> validMoves = [];
  for (int col = 0; col < board.width; col++) {
    if (board.grid[0][col] == null) { // Top row being empty means the column is valid
      validMoves.add(col);
    }
  }
  return validMoves;
}

// Minimax algorithm with maxDepth
int minimax(Game game, int depth, bool isMaximizingPlayer) {
  int boardScore = evaluateBoard(game);

  // Base case: Terminal nodes (win, loss, draw) or depth reached
  if (boardScore == 1000 || boardScore == -1000 || game.board.isBoardFull() || depth < 0) {
    return boardScore;
  }

  // Maximizing player (AI)
  if (isMaximizingPlayer) {
    int bestScore = -10000;
    for (int col in getValidMoves(game.board)) {
      game.board.makeMove(Move(player: game.player2, column: col));
      int score = minimax(game, depth -1, false,);
      game.board.undoMove(col); // Undo move after evaluation
      bestScore = score > bestScore ? score : bestScore;
    }
    return bestScore;
  }
  // Minimizing player (Human)
  else {
    int bestScore = 10000;
    for (int col in getValidMoves(game.board)) {
      game.board.makeMove(Move(player: game.player1, column: col));
      int score = minimax(game, depth - 1, true);
      game.board.undoMove(col); // Undo move after evaluation
      bestScore = score < bestScore ? score : bestScore;
    }
    return bestScore;
  }
}

int maxDepth = 5;

// Get the best move for AI using Minimax with maxDepth
int getBestMove(Game game) {
  int bestScore = -10000;
  int bestMove = 0;

  for (int col in getValidMoves(game.board)) {
    game.board.makeMove(Move(player: game.player2, column: col));
    int score = minimax(game, maxDepth, false); // Start with depth 0
    game.board.undoMove(col); // Undo the move

    if (score > bestScore) {
      bestScore = score;
      bestMove = col;
    }
  }
  return bestMove;
}
