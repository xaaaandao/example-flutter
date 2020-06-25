import 'package:flutter/material.dart';
import 'package:bate_ponto_frontend/view/AlterarSenha.dart';
import 'package:bate_ponto_frontend/view/Common.dart';

Padding selectRoute(context, String text){
  switch(text){
    case "Alterar senha":
      return getPaddingAlterarSenha(context, "Alterar senha");
  }
}

Padding getPaddingAlterarSenha(context, String text){
  return new Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () { 
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlterarSenha('date')
          )
        );
        // print('bbbbbbbbbbbbbbbbbbb');
      },
      child: getMyText(text, 28),
    )
  );
}


Padding getMyPadding(context, String text){
  return new Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () { 
        /*Navigator.push(
          context,
          MaterialPageRoute(
            // builder: (context) => Ponto('date')
          )
        );*/
      },
      child: getMyText(text, 28),
    )
  );
}