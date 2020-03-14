import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _listTarefas = [];
  
  _salvarArquivo() async{
    // final diretorio = await getApplicationDocumentsDirectory();
    // print(diretorio.path);
    // var arquivo = File("${diretorio.path}/dados.json");
    var arquivo = File("~/dados.json");

    Map<String, dynamic> tarefa = Map();
    tarefa["titulo"] = "Ir ao mercado";
    tarefa["realizada"] = false;
    _listTarefas.add(tarefa);

    String dados = json.encode(_listTarefas);
    arquivo.writeAsStringSync(dados);
  }

  @override
  Widget build(BuildContext context) {
    _salvarArquivo();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lista de tarefas",
        ),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Adicionar Tarefa"),
                content: TextField(
                  decoration: InputDecoration(
                    labelText: "Digite sua tarefa"
                  ),
                  onChanged: (text) {
                    
                  }, 
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Cancelar"),
                    onPressed: () => Navigator.pop(context),
                  ),
                  FlatButton(
                    child: Text("Salvar"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            }
          );
        }
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _listTarefas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_listTarefas[index]),
                );
              },
            ),
          )
        ],
      )
    );
  }
}