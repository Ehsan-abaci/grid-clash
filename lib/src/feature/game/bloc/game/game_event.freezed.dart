// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initGame,
    required TResult Function() playAgain,
    required TResult Function(int? col) makeMove,
    required TResult Function() resetGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initGame,
    TResult? Function()? playAgain,
    TResult? Function(int? col)? makeMove,
    TResult? Function()? resetGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initGame,
    TResult Function()? playAgain,
    TResult Function(int? col)? makeMove,
    TResult Function()? resetGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitGameEvent value) initGame,
    required TResult Function(_PlayAgain value) playAgain,
    required TResult Function(_MakeMove value) makeMove,
    required TResult Function(_ResetGame value) resetGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitGameEvent value)? initGame,
    TResult? Function(_PlayAgain value)? playAgain,
    TResult? Function(_MakeMove value)? makeMove,
    TResult? Function(_ResetGame value)? resetGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitGameEvent value)? initGame,
    TResult Function(_PlayAgain value)? playAgain,
    TResult Function(_MakeMove value)? makeMove,
    TResult Function(_ResetGame value)? resetGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitGameEventImplCopyWith<$Res> {
  factory _$$InitGameEventImplCopyWith(
          _$InitGameEventImpl value, $Res Function(_$InitGameEventImpl) then) =
      __$$InitGameEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitGameEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$InitGameEventImpl>
    implements _$$InitGameEventImplCopyWith<$Res> {
  __$$InitGameEventImplCopyWithImpl(
      _$InitGameEventImpl _value, $Res Function(_$InitGameEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitGameEventImpl implements _InitGameEvent {
  const _$InitGameEventImpl();

  @override
  String toString() {
    return 'GameEvent.initGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitGameEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initGame,
    required TResult Function() playAgain,
    required TResult Function(int? col) makeMove,
    required TResult Function() resetGame,
  }) {
    return initGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initGame,
    TResult? Function()? playAgain,
    TResult? Function(int? col)? makeMove,
    TResult? Function()? resetGame,
  }) {
    return initGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initGame,
    TResult Function()? playAgain,
    TResult Function(int? col)? makeMove,
    TResult Function()? resetGame,
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
    required TResult Function(_InitGameEvent value) initGame,
    required TResult Function(_PlayAgain value) playAgain,
    required TResult Function(_MakeMove value) makeMove,
    required TResult Function(_ResetGame value) resetGame,
  }) {
    return initGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitGameEvent value)? initGame,
    TResult? Function(_PlayAgain value)? playAgain,
    TResult? Function(_MakeMove value)? makeMove,
    TResult? Function(_ResetGame value)? resetGame,
  }) {
    return initGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitGameEvent value)? initGame,
    TResult Function(_PlayAgain value)? playAgain,
    TResult Function(_MakeMove value)? makeMove,
    TResult Function(_ResetGame value)? resetGame,
    required TResult orElse(),
  }) {
    if (initGame != null) {
      return initGame(this);
    }
    return orElse();
  }
}

abstract class _InitGameEvent implements GameEvent {
  const factory _InitGameEvent() = _$InitGameEventImpl;
}

/// @nodoc
abstract class _$$PlayAgainImplCopyWith<$Res> {
  factory _$$PlayAgainImplCopyWith(
          _$PlayAgainImpl value, $Res Function(_$PlayAgainImpl) then) =
      __$$PlayAgainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayAgainImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$PlayAgainImpl>
    implements _$$PlayAgainImplCopyWith<$Res> {
  __$$PlayAgainImplCopyWithImpl(
      _$PlayAgainImpl _value, $Res Function(_$PlayAgainImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlayAgainImpl implements _PlayAgain {
  const _$PlayAgainImpl();

  @override
  String toString() {
    return 'GameEvent.playAgain()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayAgainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initGame,
    required TResult Function() playAgain,
    required TResult Function(int? col) makeMove,
    required TResult Function() resetGame,
  }) {
    return playAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initGame,
    TResult? Function()? playAgain,
    TResult? Function(int? col)? makeMove,
    TResult? Function()? resetGame,
  }) {
    return playAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initGame,
    TResult Function()? playAgain,
    TResult Function(int? col)? makeMove,
    TResult Function()? resetGame,
    required TResult orElse(),
  }) {
    if (playAgain != null) {
      return playAgain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitGameEvent value) initGame,
    required TResult Function(_PlayAgain value) playAgain,
    required TResult Function(_MakeMove value) makeMove,
    required TResult Function(_ResetGame value) resetGame,
  }) {
    return playAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitGameEvent value)? initGame,
    TResult? Function(_PlayAgain value)? playAgain,
    TResult? Function(_MakeMove value)? makeMove,
    TResult? Function(_ResetGame value)? resetGame,
  }) {
    return playAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitGameEvent value)? initGame,
    TResult Function(_PlayAgain value)? playAgain,
    TResult Function(_MakeMove value)? makeMove,
    TResult Function(_ResetGame value)? resetGame,
    required TResult orElse(),
  }) {
    if (playAgain != null) {
      return playAgain(this);
    }
    return orElse();
  }
}

abstract class _PlayAgain implements GameEvent {
  const factory _PlayAgain() = _$PlayAgainImpl;
}

/// @nodoc
abstract class _$$MakeMoveImplCopyWith<$Res> {
  factory _$$MakeMoveImplCopyWith(
          _$MakeMoveImpl value, $Res Function(_$MakeMoveImpl) then) =
      __$$MakeMoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? col});
}

/// @nodoc
class __$$MakeMoveImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$MakeMoveImpl>
    implements _$$MakeMoveImplCopyWith<$Res> {
  __$$MakeMoveImplCopyWithImpl(
      _$MakeMoveImpl _value, $Res Function(_$MakeMoveImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? col = freezed,
  }) {
    return _then(_$MakeMoveImpl(
      col: freezed == col
          ? _value.col
          : col // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$MakeMoveImpl implements _MakeMove {
  const _$MakeMoveImpl({this.col});

  @override
  final int? col;

  @override
  String toString() {
    return 'GameEvent.makeMove(col: $col)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeMoveImpl &&
            (identical(other.col, col) || other.col == col));
  }

  @override
  int get hashCode => Object.hash(runtimeType, col);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeMoveImplCopyWith<_$MakeMoveImpl> get copyWith =>
      __$$MakeMoveImplCopyWithImpl<_$MakeMoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initGame,
    required TResult Function() playAgain,
    required TResult Function(int? col) makeMove,
    required TResult Function() resetGame,
  }) {
    return makeMove(col);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initGame,
    TResult? Function()? playAgain,
    TResult? Function(int? col)? makeMove,
    TResult? Function()? resetGame,
  }) {
    return makeMove?.call(col);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initGame,
    TResult Function()? playAgain,
    TResult Function(int? col)? makeMove,
    TResult Function()? resetGame,
    required TResult orElse(),
  }) {
    if (makeMove != null) {
      return makeMove(col);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitGameEvent value) initGame,
    required TResult Function(_PlayAgain value) playAgain,
    required TResult Function(_MakeMove value) makeMove,
    required TResult Function(_ResetGame value) resetGame,
  }) {
    return makeMove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitGameEvent value)? initGame,
    TResult? Function(_PlayAgain value)? playAgain,
    TResult? Function(_MakeMove value)? makeMove,
    TResult? Function(_ResetGame value)? resetGame,
  }) {
    return makeMove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitGameEvent value)? initGame,
    TResult Function(_PlayAgain value)? playAgain,
    TResult Function(_MakeMove value)? makeMove,
    TResult Function(_ResetGame value)? resetGame,
    required TResult orElse(),
  }) {
    if (makeMove != null) {
      return makeMove(this);
    }
    return orElse();
  }
}

abstract class _MakeMove implements GameEvent {
  const factory _MakeMove({final int? col}) = _$MakeMoveImpl;

  int? get col;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakeMoveImplCopyWith<_$MakeMoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetGameImplCopyWith<$Res> {
  factory _$$ResetGameImplCopyWith(
          _$ResetGameImpl value, $Res Function(_$ResetGameImpl) then) =
      __$$ResetGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ResetGameImpl>
    implements _$$ResetGameImplCopyWith<$Res> {
  __$$ResetGameImplCopyWithImpl(
      _$ResetGameImpl _value, $Res Function(_$ResetGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetGameImpl implements _ResetGame {
  const _$ResetGameImpl();

  @override
  String toString() {
    return 'GameEvent.resetGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initGame,
    required TResult Function() playAgain,
    required TResult Function(int? col) makeMove,
    required TResult Function() resetGame,
  }) {
    return resetGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initGame,
    TResult? Function()? playAgain,
    TResult? Function(int? col)? makeMove,
    TResult? Function()? resetGame,
  }) {
    return resetGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initGame,
    TResult Function()? playAgain,
    TResult Function(int? col)? makeMove,
    TResult Function()? resetGame,
    required TResult orElse(),
  }) {
    if (resetGame != null) {
      return resetGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitGameEvent value) initGame,
    required TResult Function(_PlayAgain value) playAgain,
    required TResult Function(_MakeMove value) makeMove,
    required TResult Function(_ResetGame value) resetGame,
  }) {
    return resetGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitGameEvent value)? initGame,
    TResult? Function(_PlayAgain value)? playAgain,
    TResult? Function(_MakeMove value)? makeMove,
    TResult? Function(_ResetGame value)? resetGame,
  }) {
    return resetGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitGameEvent value)? initGame,
    TResult Function(_PlayAgain value)? playAgain,
    TResult Function(_MakeMove value)? makeMove,
    TResult Function(_ResetGame value)? resetGame,
    required TResult orElse(),
  }) {
    if (resetGame != null) {
      return resetGame(this);
    }
    return orElse();
  }
}

abstract class _ResetGame implements GameEvent {
  const factory _ResetGame() = _$ResetGameImpl;
}
