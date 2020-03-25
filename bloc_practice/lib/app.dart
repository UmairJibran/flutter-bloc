import 'package:bloc_practice/homepage.dart';
import 'package:bloc_practice/screens/screen_one.dart';
import 'package:bloc_practice/screens/screen_three.dart';
import 'package:bloc_practice/screens/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/navigation_bloc.dart';

class App extends StatelessWidget {
  // final navBloc = new NavigationBloc();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Practice',
      home: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (_, state) {
          print("State is : -> $state");
          if (state is HomeScreen || state is NavigationInitial) {
            return HomePage();
          } else if (state is ScreenOne) {
            return PageOne();
          } else if (state is ScreenTwo) {
            return PageTwo();
          } else if (state is ScreenThree) {
            return PageThree();
          } else {
            return Scaffold(
              body: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
