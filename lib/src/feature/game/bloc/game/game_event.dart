import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.freezed.dart';


@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.initGame() = _InitGameEvent;
  const factory GameEvent.playAgain() = _PlayAgain;
  const factory GameEvent.makeMove({int? col}) = _MakeMove;
  const factory GameEvent.resetGame() = _ResetGame;
}