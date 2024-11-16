import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode?> {
  ThemeCubit() : super(null);

  void toggleTheme() {
    if (state == null) {
      var brightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;
      bool isDarkMode = brightness == Brightness.dark;
      emit(isDarkMode ? ThemeMode.light : ThemeMode.dark);
      return;
    }

    emit(state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
  }
}