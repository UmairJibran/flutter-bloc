import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  @override
  NavigationState get initialState => NavigationInitial();

  @override
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    if (event is NavigateToScreenOne) {
      print("Navigate To Screen One");
      yield ScreenOne();
    } else if (event is NavigateToScreenTwo) {
      print("Navigate To Screen Two");
      yield ScreenTwo();
    } else if (event is NavigateToScreenThree) {
      print("Navigate To Screen Three");
      yield ScreenThree();
    } else if (event is AppStarted || event is NavigateToHome) {
      print("Navigate To Home Screen");
      yield HomeScreen();
    }
  }
}
