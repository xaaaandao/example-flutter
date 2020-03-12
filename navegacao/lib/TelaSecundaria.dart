import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String valor;

  TelaSecundaria({this.valor, Key key}) : super(key: key);

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundária"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text("Segunda tela!!!!!!!!!!!!! valor passado: ${widget.valor}"),
            RaisedButton(
              child: Text("Ir para a primeira tela"),
              padding: EdgeInsets.all(15),
              onPressed: (){
                /*
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaSecundaria(valor: "Ronaldo")
                  )
                );
                */
                Navigator.pushNamed(context, "/");
              },
            )
          ],
        )
      )
    );
  }
}