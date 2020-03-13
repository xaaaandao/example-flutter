import 'package:flutter/material.dart';
import 'package:youtube/telas/Inicio.dart';
import 'package:youtube/telas/EmAlta.dart';
import 'package:youtube/telas/Inscricao.dart';
import 'package:youtube/telas/Biblioteca.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  List<Widget> telas = [
    Inicio(),
    EmAlta(),
    Inscricao(),
    Biblioteca()
  ];

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
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text("Início"),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            title: Text("Em alta"),
            icon: Icon(Icons.whatshot)
          ),
          BottomNavigationBarItem(
            title: Text("Inscrições"),
            icon: Icon(Icons.subscriptions)
          ),
          BottomNavigationBarItem(
            title: Text("Biblioteca"),
            icon: Icon(Icons.folder)
          ),
        ]
      ),
    );
  }
}