import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  EntradaSwitch({Key key}) : super(key: key);

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;
  bool _escolhaConfiguracao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            SwitchListTile(
              title: Text("Deseja receber notificações?"),
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                print("Resultado: " + valor.toString());
                setState(() {
                  _escolhaUsuario = valor;
                });
              }
            ),
            SwitchListTile(
              title: Text("Carregar imagens automaticamente?"),
              value: _escolhaConfiguracao,
              onChanged: (bool valor) {
                print("Resultado: " + valor.toString());
                setState(() {
                  _escolhaConfiguracao = valor;
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
                if (_escolhaUsuario)
                  print("escolha: ativar notificações");
                else
                  print("escolha: NÃO ativar notificações");
                // print("Resultado: " + _escolhaUsuario.toString());
              }
            )

            /*
            Switch(
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                print("Resultado: " + valor.toString());
                setState(() {
                  _escolhaUsuario = valor;
                });
              }
            ),
            Text("Receber notificações?")
            */

          ],
        )
      ),
    );
  }
}