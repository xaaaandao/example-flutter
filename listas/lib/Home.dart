import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens(){
    _itens = [];
    for(int i = 0; i < 5; i++){
      Map<String, dynamic> item = Map();
      item["titulo"] = "Título ${i} Lorem ipsum dolor sit amet.";
      item["descricao"] = "Descrição ${i} Lorem ipsum dolor sit amet.";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice) {
            // print("a ${indice}");
            // Map<String, dynamic> item = _itens;
            return ListTile(
              onTap: (){
                // print("Clique com onTap");
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text( _itens[indice]["titulo"],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange
                        )
                      ),
                      titlePadding: EdgeInsets.all(20),
                      /*
                      titleTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.orange
                      ),
                      */
                      content: Text(_itens[indice]["descricao"]),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: (){
                            print("Selecionado sim");
                            Navigator.pop(context);
                          },
                          child: Text("Sim")
                        ),
                        FlatButton(
                          onPressed: (){
                            print("Selecionado não");
                            Navigator.pop(context);
                          },
                          child: Text("Não")
                        ),
                      ],
                      // backgroundColor: Colors.red,
                      // contentPadding: EdgeInsets.all(20),
                    );
                  }
                );
              },
              /*
              onLongPress: (){
                print("Clique com onLongPress");
              },
              */
              title: Text(_itens[indice]["titulo"]),
              subtitle: Text(_itens[indice]["descricao"]),
            );
          },
        ),
      )
    );
  }
}