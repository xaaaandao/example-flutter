import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  EntradaCheckBox({Key key}) : super(key: key);

  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {

  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do mundo"),

              // Diversos ícones              
              // secondary: Icon(Icons.add_box),
              
              activeColor: Colors.red,
              
              // Deixa marcado o title
              // selected: _estaSelecionado,
              
              value: _comidaBrasileira,
              onChanged: (bool resultado) {
                setState(() {
                  _comidaBrasileira = resultado;
                });
              }
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("A melhor comida do mundo"),

              // Diversos ícones              
              //secondary: Icon(Icons.add_box),
              
              activeColor: Colors.red,
              
              // Deixa marcado o title
              // selected: _estaSelecionado,
              
              value: _comidaMexicana,
              onChanged: (bool resultado) {
                setState(() {
                  _comidaMexicana = resultado;
                });
              }
            ),
            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                )
              ),
              onPressed: () {
                print(
                  "Comida Brasileira: " + _comidaBrasileira.toString() + "\n"
                  "Comida Mexicana: " + _comidaMexicana.toString()
                );
              }
            )
            

            /*
            Text("Comida Brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool value){
                print("Checkbox: " + value.toString());
                setState(() {
                  _estaSelecionado = value;
                });
              },
            ),
            */

          ],
        )
      ),
    );
  }
}