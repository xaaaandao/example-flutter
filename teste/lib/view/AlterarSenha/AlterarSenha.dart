import 'package:bate_ponto_frontend/view/AlterarSenha/FormAlterarSenha.dart';
import 'package:flutter/material.dart';
import 'package:bate_ponto_frontend/view/Common.dart';

class AlterarSenha extends StatefulWidget {
  String date;
  AlterarSenha(this.date, {Key key}) : super(key: key);

  @override
  _AlterarSenhaState createState() => _AlterarSenhaState();
}

AppBar getMyAppBar2(){
  return AppBar(
    title: getMyText("Alterar a senha", 36),
    backgroundColor: Colors.deepPurpleAccent,
    actions: <Widget>[
    ],
  );
}


class _AlterarSenhaState extends State<AlterarSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getMyAppBar2(),
      body: FormAlterarSenha(),
    );
  }
}
