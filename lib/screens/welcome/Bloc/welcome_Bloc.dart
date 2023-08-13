import 'package:blogapp/screens/welcome/Bloc/welcome_events.dart';
import 'package:blogapp/screens/welcome/Bloc/welcome_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeBloc extends Bloc<WelcomeEvents, WelcomeState> {
  WelcomeBloc() : super(WelcomeState()) {
    on<WelcomeEvents>((event, emit) {
      emit(WelcomeState(page: state.page));
    });
  }
}
