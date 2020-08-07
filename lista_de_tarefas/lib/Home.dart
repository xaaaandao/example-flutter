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

  Map <String, dynamic> _ultimoRemovido = Map();
  TextEditingController _controllerTarefa = TextEditingController();
  List _listTarefas = [];
  
  _salvarArquivo() async{
    // final diretorio = await getApplicationDocumentsDirectory();
    // print(diretorio.path);
    // var arquivo = File("${diretorio.path}/dados.json");
    var arquivo = await _getFile();

    String dados = json.encode(_listTarefas);
    arquivo.writeAsString(dados);
  }

  Future<File> _getFile() async{
    return File("~/dados.json");
  }

  _lerArquivo() async{
    // var arquivo = _getFile();
    try {
      final arquivo = await _getFile();
      return arquivo.readAsString();
    } catch (e) {
      return null;
    }
  }

  _salvarTarefa(){
    String textoDigitado = _controllerTarefa.text;

    Map<String, dynamic> tarefa = Map();
    tarefa["titulo"] = textoDigitado;
    tarefa["realizada"] = false;
    setState(() {
      _listTarefas.add(tarefa);  
    });
    _controllerTarefa.text = "";
    _salvarArquivo();
  }

  @override
  void initState() {
    super.initState();
    _lerArquivo().then((dados){
      setState(() {
        _listTarefas = json.decode(dados);
      });
    });
  }

  Widget criarItemlista(context, index){

    // final item = _listTarefas[index]["titulo"];

    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      direction: DismissDirection.endToStart,
      onDismissed: (direction){

        _ultimoRemovido = _listTarefas[index];

        _listTarefas.removeAt(index);
        _salvarArquivo();

        /* Aparece a mensagem lá embaixo */
        final SnackBar = SnackBar(
          backgroundColor: Colors.green,
          duration: Duration(seconds: 5),
          content: Text("Tarefa removida!!"),
          action: SnackBarAction(
            label: "Desfazer",
            onPressed: (){
              setState(() {
                _listTarefas.insert(index, _ultimoRemovido);
              });
              _salvarArquivo();
            },
          ),
        );

        Scaffold.of(context).showSnackCar(snackbar);

      },
      background: Container(
        color: Colors.red,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white
            )
          ],
        )
      ),
      child: CheckboxListTile(
        title: Text(_listTarefas[index]['titulo']),
        value: _listTarefas[index]["realizada"],
        onChanged: (valor) {
          setState(() {
            _listTarefas[index]["realizada"] = valor;
          });
          _salvarArquivo();
          }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    print("itens" + DateTime.now().millisecondsSinceEpoch.toString());
    // _salvarArquivo();
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
                  controller: _controllerTarefa,
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
                      _salvarTarefa();
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
              itemBuilder: criarItemlista,
                /*
                return ListTile(
                  title: Text(_listTarefas[index]['titulo']),
                );
                */
                /*
                return CheckboxListTile(
                  title: Text(_listTarefas[index]['titulo']),
                  value: _listTarefas[index]["realizada"],
                  onChanged: (valor) {
                    setState(() {
                      _listTarefas[index]["realizada"] = valor;
                    });
                    _salvarArquivo();
                  }
                );
                */
              // },
            ),
          )
        ],
      )
    );
  }


}