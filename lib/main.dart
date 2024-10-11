import 'package:connect_four/src/feature/game/bloc/game/player_vs_bot_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app/my_app.dart';
import 'src/config/theme/theme_cubit.dart';
import 'src/core/di/di.dart';
import 'src/feature/game/bloc/game/player_vs_player_bloc.dart';
import 'src/feature/game/bloc/timer/timer_count_down_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDI();
  runApp(const Provider(child: MyApp()));
}

class Provider extends StatelessWidget {
  final Widget child;
  const Provider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: child,
    );
  }
}
