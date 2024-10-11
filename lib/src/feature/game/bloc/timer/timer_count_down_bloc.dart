import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/repo/count_down_timer_repo.dart';

part 'timer_count_down_event.dart';
part 'timer_count_down_state.dart';
part 'timer_count_down_bloc.freezed.dart';

class TimerCountDownBloc
    extends Bloc<TimerCountDownEvent, TimerCountDownState> {
  final CountDownTimerRepo _countDownTimerRepo;
  static const int _introDuration = 3;
  static const int userTurnDuration = 15;

  StreamSubscription<int>? _tickerSubscription;
  late Emitter<TimerCountDownState> _emit;
  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  TimerCountDownBloc(this._countDownTimerRepo)
      : super(const TimerCountDownState.initial(_introDuration)) {
    on<TimerCountDownEvent>((event, emit) {
      _emit = emit;
      event.map(
        introCountDownStart: onIntroCountDownStart,
        introTicked: onIntroTicked,
        userTurnStart: onUserTurnStart,
        userTurnTicked: onUserTurnTicked,
        resetUserTimeout: onResetUserTimeout,
      );
    });
  }
  onIntroCountDownStart(_) {
    // _emit(const TimerCountDownState.initial(_introDuration));
    _tickerSubscription?.cancel();
    _tickerSubscription =
        _countDownTimerRepo.tick(ticks: _introDuration).listen((duration) {
      log(duration.toString());
      add(TimerCountDownEvent.introTicked(duration: duration));
    });
  }

  onIntroTicked(_IntroTicked val) {
    _emit(
      val.duration > 0
          ? TimerCountDownState.inProgressIntro(val.duration)
          : const TimerCountDownState.completeIntro(),
    );
  }

  onUserTurnStart(_) {
    _tickerSubscription?.cancel();
    _tickerSubscription = _countDownTimerRepo
        .tick(ticks: userTurnDuration)
        .listen((duration) =>
            add(TimerCountDownEvent.userTurnTicked(duration: duration)));
  }

  onUserTurnTicked(_UserCountDownTickedEvent val) {
    _emit(
      val.duration > 0
          ? TimerCountDownState.inProgressUserTurn(val.duration)
          : const TimerCountDownState.completeUserTurn(),
    );
  }

  onResetUserTimeout(_) {
    _tickerSubscription?.cancel();
  }
}
