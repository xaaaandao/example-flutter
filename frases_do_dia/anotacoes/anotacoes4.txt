import 'package:flutter/material.dart';

void main(){
  runApp (MaterialApp(
    // debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    // Container serve para colocar outros widgets nele
    home: Container(
      // color: Colors.white,
      
      // espaçamento interno
      // padding: EdgeInsets.only(top: 40),
      
      // espaçamento externo
      // margin: EdgeInsets.only(top: 50, left: 50),
      margin: EdgeInsets.all(0),
      
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white)
      ),
      
      // child é filho só pode definir um único item
      // children pode ser vários items
      child: Image.asset(
        "images/mesa.jpg",
        fit: BoxFit.contain
      ),
    ),
  ));
}

