import 'package:flutter/material.dart';

import 'menu_item.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text('Test'),
                accountName: Text('Test'),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('asset/images/test.jpg'),
                ),
                //Image.asset('asset/images/test.jpg'),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.white,
              ),
              MyMenuItem(),
            ],
          )),
    );
  }
}
