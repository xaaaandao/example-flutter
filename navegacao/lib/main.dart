import 'package:flutter/material.dart';
import 'TelaPrincipal.dart';
import 'TelaSecundaria.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/secundaria" : (context) => TelaSecundaria()
      // Outro exemplo
      // "/detalhesFoto" : (context) => TelaSecundaria()
    },
    home: TelaPrincipal(),
  ));
}

