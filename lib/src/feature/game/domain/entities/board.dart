import 'package:connect_four/src/feature/game/domain/entities/move.dart';
import 'package:equatable/equatable.dart';

class Board extends Equatable {
  final int width = 7;
  final int height = 6;
  List<List<String?>> grid;

  Board() : grid = List.generate(6, (_) => List.generate(7, (_) => null));

  String? getCell(int row, int col) => grid[row][col];

  bool isColumnFull(int col) => grid[0][col] != null;

  bool makeMove(Move move) {
    for (int row = height - 1; row >= 0; row--) {
      if (grid[row][move.column] == null) {
        grid[row][move.column] = move.player.id;
        return true;
      }
    }
    return false;
  }

  // Undo a move (remove the top piece from a column)
  void undoMove(int col) {
    for (int row = 0; row < width; row++) {
      if (grid[row][col] != null) {
        grid[row][col] = null;
        break;
      }
    }
  }

  bool isBoardFull() {
    for (int col = 0; col < width; col++) {
      if (getCell(0, col) == null) {
        return false;
      }
    }
    return true;
  }

  bool checkWin(String player) {
    // Check horizontal wins
    for (int row = 0; row < height; row++) {
      for (int col = 0; col <= width - 4; col++) {
        if (getCell(row, col) == player &&
            getCell(row, col + 1) == player &&
            getCell(row, col + 2) == player &&
            getCell(row, col + 3) == player) {
          return true;
        }
      }
    }

    // Check vertical wins
    for (int col = 0; col < width; col++) {
      for (int row = 0; row <= height - 4; row++) {
        if (getCell(row, col) == player &&
            getCell(row + 1, col) == player &&
            getCell(row + 2, col) == player &&
            getCell(row + 3, col) == player) {
          return true;
        }
      }
    }

    // Check diagonal (bottom-left to top-right)
    for (int row = 0; row <= height - 4; row++) {
      for (int col = 0; col <= width - 4; col++) {
        if (getCell(row, col) == player &&
            getCell(row + 1, col + 1) == player &&
            getCell(row + 2, col + 2) == player &&
            getCell(row + 3, col + 3) == player) {
          return true;
        }
      }
    }

    // Check diagonal (top-left to bottom-right)
    for (int row = 3; row < height; row++) {
      for (int col = 0; col <= width - 4; col++) {
        if (getCell(row, col) == player &&
            getCell(row - 1, col + 1) == player &&
            getCell(row - 2, col + 2) == player &&
            getCell(row - 3, col + 3) == player) {
          return true;
        }
      }
    }

    return false;
  }

  @override
  List<Object?> get props => [grid];
}
