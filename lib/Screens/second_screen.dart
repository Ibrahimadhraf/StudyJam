import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fstudyjam2/Widgets/menu.dart';

class SecondScreen extends StatefulWidget {
  static const String routeName = "secondScreen";

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0, -.40),
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Text(
                  'Get coaching',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        firstSection('You Have', 25.0, Colors.grey, 14.0),
                        firstSection('206', 42.0, Colors.black, 40.0),
                      ],
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    secondSection(),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                textTitle('My Coaches', Colors.green),
                textTitle('View Past Session', Colors.grey),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
         gridViewList(),
        ],
      ),
    );
  }

  Widget firstSection(
      String title, double paddingTop, Color colors, double fontSize) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, paddingTop, 5, 5),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: colors,
          fontSize: fontSize,
        ),
      ),
    );
  }

  Widget secondSection() {
    return Container(
      height: 50,
      width: 125,
      decoration: BoxDecoration(
        color: Colors.greenAccent[100].withOpacity(0.3),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          'By More',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
    );
  }

  Widget textTitle(String title, Color color) {
    return Text(
      title,
      style:
          TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 12.0),
    );
  }

  Widget gridViewList() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 2.0,
      mainAxisSpacing: 4.0,
      shrinkWrap: true,
      primary: false,
      children: <Widget>[
        _buildCard('Tom', 'Available', 1),
        _buildCard('Tom', 'Away', 3),
        _buildCard('Tom', 'Away', 4),
        _buildCard('Tom', 'Available', 5),
        _buildCard('Tom', 'Away', 6),
        _buildCard('Tom', 'Available', 7),
      ],
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 0.7,
        child: Column(

          children: <Widget>[
            SizedBox(
              height: 12.0,
            ),
   Stack(children: <Widget>[
     Container(
       height: 80.0,
       width: 80.0,
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(40.0),
           color: Colors.green,
           image: DecorationImage(
               image: NetworkImage(
                   'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
               )
           )
       ),
     ),
     Positioned(
       left: 50,
       top: 0,
       child:  Container(
        // margin: EdgeInsets.only(left: 40 ),
         height: 20,
         width: 20,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(30),
           color: status=='Away'?Colors.amber :Colors.green,
           border: Border.all(
             color: Colors.white ,
             style: BorderStyle.solid ,
             width: 2.0,
           ),
         ),
       ),
     )

   ],),

            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 15.0),
            Expanded(
              child: Container(
                width: 175.0,
                decoration: BoxDecoration(
                  color: status == 'Away' ? Colors.grey: Colors.green,
                  borderRadius: BorderRadius.only
                    (
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)
                  ),
                ),
                child: Center(
                  child: Text('Request',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Quicksand'
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        margin: cardIndex.isEven
            ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
            : EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 10.0),
      );

  }
}
