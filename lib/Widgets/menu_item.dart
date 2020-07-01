import 'package:flutter/material.dart';
import 'package:fstudyjam2/Screens/home_screen.dart';
import 'package:fstudyjam2/Screens/login_form.dart';
import 'package:fstudyjam2/Screens/second_screen.dart';
import 'package:fstudyjam2/Screens/third_screen.dart';

class MyMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
            elevation: 5,
            child: ListTile(
              title: Text('Home Screen'),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(HomeScreen.routeName);
              },
            )),
        Card(
            elevation: 5,
            child: ListTile(
              title: Text('Second Screen'),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(SecondScreen.routeName);
              },
            )),
        Card(
            elevation: 5,
            child: ListTile(
              title: Text('Third Screen'),
              onTap: () {
                Navigator.of(context).pushNamed(ThirdScreen.routeName);
              },
            )),
        Card(
            elevation: 5,
            child: ListTile(
              title: Text('Login form'),
              onTap: () {
                Navigator.of(context).pushNamed(LoginForm.routName);
              },
            )),
      ],
    );
  }
}
