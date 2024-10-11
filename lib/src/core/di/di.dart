import 'package:connect_four/src/feature/game/domain/repo/count_down_timer_repo.dart';
import 'package:connect_four/src/feature/game/domain/usecases/check_win_condition_usecase.dart';
import 'package:connect_four/src/feature/game/domain/usecases/make_move_usecase.dart';
import 'package:connect_four/src/feature/game/domain/usecases/start_game_usecase.dart';
import 'package:get_it/get_it.dart';

import '../../feature/game/bloc/game/player_vs_bot_bloc.dart';
import '../../feature/game/bloc/game/player_vs_player_bloc.dart';
import '../../feature/game/bloc/timer/timer_count_down_bloc.dart';
import '../../feature/game/data/repo_impl/count_down_timer_impl.dart';
import '../../feature/game/domain/usecases/make_move_bot_usecase.dart';

final sl = GetIt.instance;

Future<void> setupDI() async {
  sl.registerLazySingleton(() => StartGameUsecase());
  sl.registerLazySingleton(() => CheckWinConditionUsecase());
  sl.registerLazySingleton(() => MakeMoveUsecase());
  sl.registerLazySingleton(() => MakeMoveBotUsecase());
  sl.registerLazySingleton<CountDownTimerRepo>(() => CountDownTimerImpl());
  sl.registerLazySingleton(() => PlayerVsPlayerBloc(sl(), sl(), sl()));
  sl.registerLazySingleton(() => PlayerVsBotBloc(sl(), sl(), sl(), sl()));
}

Future<void> initGamePage() async {
  sl.reset(dispose: false);
  setupDI();
}
