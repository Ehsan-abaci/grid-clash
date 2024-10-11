import 'package:equatable/equatable.dart';

import 'board.dart';
import 'player.dart';

class Game extends Equatable {
  final Player player1;
  final Player player2; // In PlayerVsBot mode, player2 will be the bot
  Board board;
  Player currentPlayer; // Track the current player

  Game({
    required this.player1,
    required this.player2,
    required this.board,
    required this.currentPlayer,
  });

  void switchTurn() {
    currentPlayer = (currentPlayer == player1) ? player2 : player1;
  }

  bool isGameOver() {
    return board.checkWin(player1.id) ||
        board.checkWin(player2.id) ||
        board.isBoardFull();
  }

  Player? getWinner() {
    if (board.checkWin(player1.id)) {
      return player1;
    } else if (board.checkWin(player2.id)) {
      return player2;
    }
    return null;
  }

  @override
  List<Object?> get props => [currentPlayer, board];
}
