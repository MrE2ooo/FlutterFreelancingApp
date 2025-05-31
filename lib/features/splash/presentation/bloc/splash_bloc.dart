import 'dart:async';

import 'package:bloc/bloc.dart';



part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<StartSplashTimer>(_onStartSplashTimer);
  }

  Future<void> _onStartSplashTimer(
    StartSplashTimer event,
    Emitter<SplashState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 2));
    emit(SplashTimerCompleted());
  }
}