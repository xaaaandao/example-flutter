import 'package:flutter/material.dart';
import 'package:bate_ponto_frontend/view/Common.dart';
import 'package:bate_ponto_frontend/view/drawer/item/Item.dart';

AppBar getMyAppBar(){
  return AppBar(
    centerTitle: true,
    title: getMyText("Orbit", 36),
    backgroundColor: Colors.deepPurpleAccent,
  );
}

Drawer getMyDrawer(context){
    return new Drawer(
      child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        getMyDrawerHeader(),
        getItemWithoutSubmenu(context, "Home"),
        getItemMinhaConta(context, "Minha Conta"),
        getItemCadastros(context, "Cadastros"),
        getItemGerencial(context, "Gerencial"),
        getItemControleComercial(context, "Controle Comercial"),
        getItemWithoutSubmenu(context, "Sair"),
      ],
    ),
  );
}

DrawerHeader getMyDrawerHeader(){
  return new DrawerHeader(
    child: Image.asset("assets/images/logo.png"),
    decoration: BoxDecoration(
      color: Colors.deepPurpleAccent,
    ),
  );
}






