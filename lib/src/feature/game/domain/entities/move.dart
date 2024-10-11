import 'player.dart';

/// Represents a move in the game
class Move {
  final Player player;
  final int column;
  Move({
    required this.player,
    required this.column,
  });
}
