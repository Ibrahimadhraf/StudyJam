import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  static const String routName = 'loginForm';

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .2,
              //color: Colors.green,
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 70, 0, 5),
                child: ListView(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            titleText('Hello'),
                            titleText('There'),
                            //SizedBox(width: 30,),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40, left: 5),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(height: 15.0,)
        ],
      ),
    );
  }

  Widget titleText(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
    );
  }
}
