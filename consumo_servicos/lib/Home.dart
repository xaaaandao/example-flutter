import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerCep = TextEditingController();
  String _resultado = "Resultado";

  // async porque demorar para responder a requisicao
  _recuperarCep() async {
    String cepDigitado = _controllerCep.text;
    // String cep = "01311300";
    String url = "https://viacep.com.br/ws/${cepDigitado}/json/";
    // String url = "https://viacep.com.br/ws/01311300/json/";

    http.Response response;

    // vai aguardar a execução dessa resposta, depois de conseguir a resposta salva
    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);

    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    print(response.statusCode);
    print(response.body);

    print("Resposta logradouro ${logradouro} complemento : ${complemento} bairro: ${bairro} localidade: ${localidade}");

    setState(() {
      _resultado = "${logradouro}, ${complemento}, ${bairro}, ${localidade}";
    });

    // json.encode(value)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviço web"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o cep: ex: 05428200"
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              ),
              controller: _controllerCep,
            ),
            RaisedButton(
              child: Text("Clique aqui"),
              onPressed: _recuperarCep,
            ),
            Text(_resultado),
          ],
        )
      )
    );
  }
}