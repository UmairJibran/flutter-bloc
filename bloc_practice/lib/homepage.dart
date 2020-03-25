import 'package:bloc_practice/bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Home Page',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      BlocProvider.of<NavigationBloc>(context).add(
                        NavigateToScreenOne(),
                      );
                    },
                    child: Text(
                      "Screen 1",
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      BlocProvider.of<NavigationBloc>(context).add(
                        NavigateToScreenTwo(),
                      );
                    },
                    child: Text(
                      "Screen 2",
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      BlocProvider.of<NavigationBloc>(context).add(
                        NavigateToScreenThree(),
                      );
                    },
                    child: Text(
                      "Screen 3",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
