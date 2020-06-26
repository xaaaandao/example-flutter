import 'package:flutter/material.dart';
import 'package:bate_ponto_frontend/view/Common.dart';
import 'package:bate_ponto_frontend/view/Login/Login.dart';
import 'package:bate_ponto_frontend/view/drawer/item/subitem/Subitem.dart';

/* QUANDO É APENAS UM ITEM */
ListTile getItemWithoutSubmenu(context, String text){
  switch(text){
    case "Home":
      return getNavigateHome(context, "Home");
    case "Sair":
      return getNavigateSair(context, "Sair");
  }
}

ListTile getNavigateHome(context, String text){
  return new ListTile(
    title: getMyText(text, 28),
    onTap: () {
      /*
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login()
        )
      );
      */
    },
  );
}

ListTile getNavigateSair(context, String text){
  return new ListTile(
    title: getMyText(text, 28),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login()
        )
      );
    },
  );
}

/* MINHA CONTA */

ExpansionTile getItemMinhaConta(context, String menu){
   return new ExpansionTile(
      title: getMyText(menu, 28),
      children: <Widget>[
        selectRoute(context, "Alterar senha"),
      ],
  );
}

/* CADASTROS */

ExpansionTile getItemCadastros(context, String menu){
   return new ExpansionTile(
      title: getMyText(menu, 28),
      children: <Widget>[
        getMyPadding(context, "Funcionários"),
        getItemTabelasBasicas(context, "Tabelas Básicas"),
        getItemEmpreendimento(context, "Empreendimento"),
        getItemUnidadePrivativa(context, "Unidade Privativa"),
        getItemEmpresaParceira(context, "Empresa Privativa"),
      ],
  );
}

ExpansionTile getItemTabelasBasicas(context, String menu){
   return new ExpansionTile(
      title: getMyText(menu, 28),
      children: <Widget>[
        getMyPadding(context, "Classificação de Planta"),
        getMyPadding(context, "Cargo"),
        getPaddingCidade(context, "Cidade"),
        getMyPadding(context, "Ramo de Atividade"),
        getMyPadding(context, "Tipo de Documento"),
      ],
  );
}

ExpansionTile getItemEmpreendimento(context, String menu){
   return new ExpansionTile(
      title: getMyText(menu, 28),
      children: <Widget>[
        getMyPadding(context, "Empreendimento"),
        getMyPadding(context, "Condição de Pagamento"),
        getMyPadding(context, "Custo Adicional"),
        getMyPadding(context, "Status do Empreendimento"),
        getMyPadding(context, "Planta"),
      ],
  );
}

ExpansionTile getItemUnidadePrivativa(context, String menu){
   return new ExpansionTile(
      title: getMyText(menu, 28),
      children: <Widget>[
        getMyPadding(context, "Unidade Privativa"),
        getMyPadding(context, "Torre"),
        getMyPadding(context, "Andar"),
        getMyPadding(context, "Posição"),
        getMyPadding(context, "Orientação"),
        getMyPadding(context, "Status Unidade Privativa"),
        getMyPadding(context, "Planta Unidade Privativa"),
        getMyPadding(context, "Associação Planta Unidade Privativa"),
      ],
  );
}

ExpansionTile getItemEmpresaParceira(context, String menu){
   return new ExpansionTile(
      title: getMyText(menu, 28),
      children: <Widget>[
        getMyPadding(context, "Empresa Parceira"),
        getMyPadding(context, "Funcionário Empresa Parceira"),
      ],
  );
}

/* GERENCIAL */

ExpansionTile getItemGerencial(context, String menu){
   return new ExpansionTile(
      title: getMyText(menu, 28),
      children: <Widget>[
        getMyPadding(context, "Reservas de Unidades"),
      ],
  );
}

/* CONTROLE COMERCIAL */

ExpansionTile getItemControleComercial(context, String menu){
   return new ExpansionTile(
      title: getMyText(menu, 28),
      children: <Widget>[
        getMyPadding(context, "Meus funcionários"),
        getMyPadding(context, "Cliente"),
        getMyPadding(context, "Empreendimento"),
        getItemReservaUnidadePrivativa(context, "Reserva de Unidade Privativa"),
      ],
  );
}

ExpansionTile getItemReservaUnidadePrivativa(context, String menu){
   return new ExpansionTile(
      title: getMyText(menu, 28),
      children: <Widget>[
        getMyPadding(context, "Unidades privativas disponíveis"),
        getMyPadding(context, "Reserva e venda")
      ],
  );
}