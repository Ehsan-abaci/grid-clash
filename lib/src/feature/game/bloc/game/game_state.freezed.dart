// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initGame,
    required TResult Function(Game game) gameInProgress,
    required TResult Function(Game lastGame, Player? winner) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initGame,
    TResult? Function(Game game)? gameInProgress,
    TResult? Function(Game lastGame, Player? winner)? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initGame,
    TResult Function(Game game)? gameInProgress,
    TResult Function(Game lastGame, Player? winner)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitGame value) initGame,
    required TResult Function(_InGame value) gameInProgress,
    required TResult Function(_GameOver value) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitGame value)? initGame,
    TResult? Function(_InGame value)? gameInProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitGame value)? initGame,
    TResult Function(_InGame value)? gameInProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitGameImplCopyWith<$Res> {
  factory _$$InitGameImplCopyWith(
          _$InitGameImpl value, $Res Function(_$InitGameImpl) then) =
      __$$InitGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitGameImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$InitGameImpl>
    implements _$$InitGameImplCopyWith<$Res> {
  __$$InitGameImplCopyWithImpl(
      _$InitGameImpl _value, $Res Function(_$InitGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitGameImpl implements _InitGame {
  const _$InitGameImpl();

  @override
  String toString() {
    return 'GameState.initGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initGame,
    required TResult Function(Game game) gameInProgress,
    required TResult Function(Game lastGame, Player? winner) gameOver,
  }) {
    return initGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initGame,
    TResult? Function(Game game)? gameInProgress,
    TResult? Function(Game lastGame, Player? winner)? gameOver,
  }) {
    return initGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initGame,
    TResult Function(Game game)? gameInProgress,
    TResult Function(Game lastGame, Player? winner)? gameOver,
    required TResult orElse(),
  }) {
    if (initGame != null) {
      return initGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitGame value) initGame,
    required TResult Function(_InGame value) gameInProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return initGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitGame value)? initGame,
    TResult? Function(_InGame value)? gameInProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return initGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitGame value)? initGame,
    TResult Function(_InGame value)? gameInProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (initGame != null) {
      return initGame(this);
    }
    return orElse();
  }
}

abstract class _InitGame implements GameState {
  const factory _InitGame() = _$InitGameImpl;
}

/// @nodoc
abstract class _$$InGameImplCopyWith<$Res> {
  factory _$$InGameImplCopyWith(
          _$InGameImpl value, $Res Function(_$InGameImpl) then) =
      __$$InGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Game game});
}

/// @nodoc
class __$$InGameImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$InGameImpl>
    implements _$$InGameImplCopyWith<$Res> {
  __$$InGameImplCopyWithImpl(
      _$InGameImpl _value, $Res Function(_$InGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$InGameImpl(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
    ));
  }
}

/// @nodoc

class _$InGameImpl implements _InGame {
  const _$InGameImpl({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'GameState.gameInProgress(game: $game)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InGameImpl &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InGameImplCopyWith<_$InGameImpl> get copyWith =>
      __$$InGameImplCopyWithImpl<_$InGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initGame,
    required TResult Function(Game game) gameInProgress,
    required TResult Function(Game lastGame, Player? winner) gameOver,
  }) {
    return gameInProgress(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initGame,
    TResult? Function(Game game)? gameInProgress,
    TResult? Function(Game lastGame, Player? winner)? gameOver,
  }) {
    return gameInProgress?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initGame,
    TResult Function(Game game)? gameInProgress,
    TResult Function(Game lastGame, Player? winner)? gameOver,
    required TResult orElse(),
  }) {
    if (gameInProgress != null) {
      return gameInProgress(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitGame value) initGame,
    required TResult Function(_InGame value) gameInProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return gameInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitGame value)? initGame,
    TResult? Function(_InGame value)? gameInProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return gameInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitGame value)? initGame,
    TResult Function(_InGame value)? gameInProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (gameInProgress != null) {
      return gameInProgress(this);
    }
    return orElse();
  }
}

abstract class _InGame implements GameState {
  const factory _InGame({required final Game game}) = _$InGameImpl;

  Game get game;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InGameImplCopyWith<_$InGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameOverImplCopyWith<$Res> {
  factory _$$GameOverImplCopyWith(
          _$GameOverImpl value, $Res Function(_$GameOverImpl) then) =
      __$$GameOverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Game lastGame, Player? winner});
}

/// @nodoc
class __$$GameOverImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameOverImpl>
    implements _$$GameOverImplCopyWith<$Res> {
  __$$GameOverImplCopyWithImpl(
      _$GameOverImpl _value, $Res Function(_$GameOverImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastGame = null,
    Object? winner = freezed,
  }) {
    return _then(_$GameOverImpl(
      lastGame: null == lastGame
          ? _value.lastGame
          : lastGame // ignore: cast_nullable_to_non_nullable
              as Game,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as Player?,
    ));
  }
}

/// @nodoc

class _$GameOverImpl implements _GameOver {
  const _$GameOverImpl({required this.lastGame, this.winner});

  @override
  final Game lastGame;
  @override
  final Player? winner;

  @override
  String toString() {
    return 'GameState.gameOver(lastGame: $lastGame, winner: $winner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameOverImpl &&
            (identical(other.lastGame, lastGame) ||
                other.lastGame == lastGame) &&
            (identical(other.winner, winner) || other.winner == winner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastGame, winner);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameOverImplCopyWith<_$GameOverImpl> get copyWith =>
      __$$GameOverImplCopyWithImpl<_$GameOverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initGame,
    required TResult Function(Game game) gameInProgress,
    required TResult Function(Game lastGame, Player? winner) gameOver,
  }) {
    return gameOver(lastGame, winner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initGame,
    TResult? Function(Game game)? gameInProgress,
    TResult? Function(Game lastGame, Player? winner)? gameOver,
  }) {
    return gameOver?.call(lastGame, winner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initGame,
    TResult Function(Game game)? gameInProgress,
    TResult Function(Game lastGame, Player? winner)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(lastGame, winner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitGame value) initGame,
    required TResult Function(_InGame value) gameInProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitGame value)? initGame,
    TResult? Function(_InGame value)? gameInProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return gameOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitGame value)? initGame,
    TResult Function(_InGame value)? gameInProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class _GameOver implements GameState {
  const factory _GameOver(
      {required final Game lastGame, final Player? winner}) = _$GameOverImpl;

  Game get lastGame;
  Player? get winner;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameOverImplCopyWith<_$GameOverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
