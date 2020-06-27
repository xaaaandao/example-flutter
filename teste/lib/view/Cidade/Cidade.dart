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
    centerTitle: true,
    title: getMyText("Cidade", 36),
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
      floatingActionButton: getMyFloatingActionButton(context),
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

  FloatingActionButton getMyFloatingActionButton(context){
    return new FloatingActionButton(
      onPressed: () => {},
      child: Icon(Icons.add),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
