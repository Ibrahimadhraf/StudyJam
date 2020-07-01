import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fstudyjam2/Screens/second_screen.dart';
import 'package:fstudyjam2/Widgets/menu.dart';

class ThirdScreen extends StatefulWidget {
  static const String routeName = "thirdScree";

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  double animatedWidth = 0;
  AnimationController controller;
final controler=PageController(
initialPage: 1,
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('ThirdScreenTittle!'),
      ),
      body: Container(
        child: Wrap(
          children: <Widget>[
            SafeArea(
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('ThirdScreenTittle!'),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Center(
                            child: Text("yyyyyyyyyyyyyyyyyyyyy"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              color: Colors.purple,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: animatedWidth,
              //MediaQuery.of(context).size.height * .15,
              child: Center(
                child: Wrap(
                  direction: Axis.vertical,
                  children: <Widget>[
                    Text("yyyyyyyyyyyyyyyyyyyyy"),
                    Text("yyyyyyyyyyyyyyyyyyyyy"),
                    Opacity(
                      opacity: 0.25,
                      child: Text("yyyyyyyyyyyyyyyyyyyyy",),
                    ),
                    Text("yyyyyyyyyyyyyyyyyyyyy"),
                    Text("yyyyyyyyyyyyyyyyyyyyy"),
                    Text("yyyyyyyyyyyyyyyyyyyyy"),
                  ],
                ),
              ),
            ),
            PageView(
              controller: controler,
       children: <Widget>[
        SecondScreen(),
         
       ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          setState(() {
            animatedWidth = MediaQuery
                .of(context)
                .size
                .height * .15;
          });
        },
      ),
    );
  }
}