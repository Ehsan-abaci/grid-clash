import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/game.dart';
import '../../domain/entities/player.dart';
part 'game_state.freezed.dart';

enum GameType {
  PlayerVsPlayer,
  PlayerVsBot,
  Online,
}

@freezed
class GameState with _$GameState {
  const factory GameState.initGame() = _InitGame;

  const factory GameState.gameInProgress({
    required Game game,
  }) = _InGame;

  const factory GameState.gameOver({
    required Game lastGame,
    Player? winner,
  }) = _GameOver;
}
