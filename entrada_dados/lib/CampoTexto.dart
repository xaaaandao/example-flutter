import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  CampoTexto({Key key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados")
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              // Existe text, numbber, emailAdress, DATETIME
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor"
              ),
              // Habilita campo
              // enabled: false,
              
              // Quantidade máxima de dígitos
              maxLength: 2,
              maxLengthEnforced: true,
              
              style: TextStyle(
                fontSize: 25,
                color: Colors.green
              ),
              
              // Campos de senha, oculta informações
              // obscureText: true,

              // Retorna a string digitada pelo usuário
              /*
              onChanged: (String e){
                print("Valor digitado $e");
              },
              */
              // Somente quando o usuário é submetido
              onSubmitted: (String e){
                print("Valor digitado $e");
              },
              controller: _textEditingController,

            ),
          ),
          RaisedButton(
           child: Text("Salvar") ,
           color: Colors.lightGreen,
           onPressed: (){
             print("Valor digitado " + _textEditingController.text);
           },
          )
        ]
      )
    );
  }
}