import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fstudyjam2/Widgets/menu.dart';
import 'package:fstudyjam2/models/photo.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  static const String routeName = "/homeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> myList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('HmeScreenTittle!'),
      ),
      body: Center(
        child: myList.length > 0
            ? Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ListView.builder(
                  itemCount: myList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildMyList(myList[index]);
                    //Image.network(myList[index]);
                  },
                ),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _addPhoto();
        },
      ),
    );
  }

  Widget _buildMyList(String image) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 10,
      ),
      child: Card(
        child: Image.network(image),
      ),
    );
  }

  _addPhoto()async {
    final num=Random().nextInt(1000);
   final respnse=
   await http.get('https://jsonplaceholder.typicode.com/photos/$num');
   print(respnse.body);
     final parseResponse=jsonDecode(respnse.body);

     final photo=Photo.fromJson(parseResponse);
     setState(() {
       myList.add(photo.url);
     });

     print(myList);



  }
}
