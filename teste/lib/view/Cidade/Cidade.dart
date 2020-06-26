import 'package:flutter/material.dart';
import 'package:bate_ponto_frontend/view/Common.dart';

class Cidade extends StatefulWidget {
  // String date;
  Cidade({Key key}) : super(key: key);

  @override
  _CidadeState createState() => _CidadeState();
}

AppBar getMyAppBar2(){
  return AppBar(
    title: getMyText("Alterar a senha", 36),
    backgroundColor: Colors.deepPurpleAccent,
    actions: <Widget>[
    ],
  );
}


class _CidadeState extends State<Cidade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getMyAppBar2(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          border: TableBorder.all(
          color: Colors.black26, width: 1, style: BorderStyle.solid),
          children: [
            defineCabecalhoLinha(),
            defineValorLinha("valorUm", "valorDois"),
            defineValorLinha("valorTres", "valorQuatro"),
          ],
        ),
      ),        
    );
  }

  TableRow defineCabecalhoLinha(){
    return new TableRow(
                children: [
                  defineCelulaTabela("Cidade"),
                  defineCelulaTabela("UF"),
                  defineCelulaTabela("Editar/Remover")
                ]
              );
  }

  TableRow defineValorLinha(valorUm, valorDois){
    return new TableRow(
                children: [
                  defineCelulaTabela(valorUm),
                  defineCelulaTabela(valorDois),
                  defineCelulaEditaRemover()
                ],
              );
  }
/*
  Icon(
                        Icons.edit,
                        color: Colors.green,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.restore_from_trash,
                        color: Colors.red,
                        size: 30.0,
                      ),
*/
  TableCell defineCelulaEditaRemover(){
    return new TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                  children: <Widget>[
                    Icon(
                      Icons.edit,
                      color: Colors.green,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.restore_from_trash,
                      color: Colors.red,
                      size: 30.0,
                    ),
                  ],
                )
              );
  }

  TableCell defineCelulaTabela(text){
    return new TableCell(
                child: Center(
                  child: getMyText(text, 20)
                ),
                verticalAlignment: TableCellVerticalAlignment.middle,
              );
  }
}
