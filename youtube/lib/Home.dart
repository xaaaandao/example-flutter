import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.videocam
            ),
            onPressed: (){
              print("ação: videocam");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search
            ),
            onPressed: (){
              print("ação: search");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle
            ),
            onPressed: (){
              print("ação: account_circle");
            },
          ),
        ],
      ),
      body: Container(

      ),
    );
  }
}