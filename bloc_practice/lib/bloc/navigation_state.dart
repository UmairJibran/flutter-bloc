part of 'navigation_bloc.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();

  @override
  List<Object> get props => [];
}

class NavigationInitial extends NavigationState {}

class ScreenOne extends NavigationState {}

class ScreenTwo extends NavigationState {}

class ScreenThree extends NavigationState {}

class HomeScreen extends NavigationState {}
