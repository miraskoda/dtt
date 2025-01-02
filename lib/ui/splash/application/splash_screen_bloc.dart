import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_bloc.freezed.dart';
part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc()
      : super(
          const SplashScreenState.splash(),
        ) {
    on<_Start>(_onStart);
  }

  Future<void> _onStart(_Start event, Emitter<SplashScreenState> emit) async {
    await Future.delayed(const Duration(seconds: 3));
    emit(const SplashScreenState.mainPage());
  }
}
