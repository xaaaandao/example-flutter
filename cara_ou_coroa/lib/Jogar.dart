import 'package:flutter/material.dart';
import 'dart:math';
import 'Resultado.dart';

class Jogar extends StatefulWidget {
  Jogar({Key key}) : super(key: key);

  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibirResultado(){

    var itens = ["cara", "coroa"];

    var numero = Random().nextInt(itens.length);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(itens[numero])
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffffcc80),
      // backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      // backgroundColor: Colors.green,
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png")
            )
          ],
        )
      ),
    );
  }
}