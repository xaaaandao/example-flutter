import 'package:flutter/material.dart';
import 'package:bate_ponto_frontend/view/Common.dart';
import 'package:bate_ponto_frontend/view/drawer/Drawer.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Center getInfoBody() {
    return new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          getMyText("Seja bem-vindo", 48),
          getMyText("FULANO", 42)
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getMyAppBar(),
      body: getInfoBody(),
      drawer: getMyDrawer(context),
      // floatingActionButton: getMyFloatingActionButton(context),
    );
  }
}