part of 'navigation_bloc.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => null;
}

class AppStarted extends NavigationEvent {}

class NavigateToScreenOne extends NavigationEvent {}

class NavigateToScreenTwo extends NavigationEvent {}

class NavigateToScreenThree extends NavigationEvent {}

class NavigateToHome extends NavigationEvent {}
