import 'package:flutter/material.dart';
import 'package:fstudyjam2/Screens/home_screen.dart';
import 'package:fstudyjam2/Screens/login_form.dart';
import 'package:fstudyjam2/Screens/second_screen.dart';
import 'package:fstudyjam2/Screens/third_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          primaryColor: Colors.purple,
          //fontFamily: 'Notable',
          textTheme: TextTheme(
              subtitle: TextStyle(
            fontSize: 40,
          ))),
      // home: HomeScreen(),
      initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SecondScreen.routeName:(context)=>SecondScreen(),
        ThirdScreen.routeName:(context)=>ThirdScreen(),
        LoginForm.routName:(context)=>LoginForm(),
      },
    );
  }
}
