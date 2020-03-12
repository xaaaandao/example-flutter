import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  EntradaRadioButton({Key key}) : super(key: key);

  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            RadioListTile(
              title: Text("Masculino"),
              value: 1,
              groupValue: _escolhaUsuario,
              onChanged: (int escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              }
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: 2,
              groupValue: _escolhaUsuario,
              onChanged: (int escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
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
                print("Resultado: " + _escolhaUsuario.toString());
              }
            )

            /*
            Text("Masculino"),
            Radio(
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("resultado: " + escolha);
              }
            ),
            Text("Feminino"),
            Radio(
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("resultado: " + escolha);
              }
            ),
            */
          ],
        )
      ),
    );
  }
}