import 'package:flutter/material.dart';

class Inscricao extends StatefulWidget {
  Inscricao({Key key}) : super(key: key);

  @override
  _InscricaoState createState() => _InscricaoState();
}

class _InscricaoState extends State<Inscricao> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Text(
            "Inscrições",
            style: TextStyle(
              fontSize: 25
            ),
         )
       ),
    );
  }
}