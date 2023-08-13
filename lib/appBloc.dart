import 'package:blogapp/appEvents.dart';
import 'package:blogapp/appState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvents, AppStates> {
  // AppBloc(super.initialState);
  AppBloc() : super(InitState()) {
    on<Increment>((event, emit) {
      emit(AppStates(counter: state.counter+1));
    });


     on<Decrement>((event, emit) {
      emit(AppStates(counter: state.counter - 1));
    });
  }
}
