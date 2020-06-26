import 'package:flutter/material.dart';
import 'package:bate_ponto_frontend/view/AlterarSenha/FormAlterarSenha.dart';
import 'package:bate_ponto_frontend/view/Common.dart';

class Login extends StatefulWidget {
  // String date;
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

AppBar getMyAppBar2(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: getMyText("Faça o Login", 36),
    backgroundColor: Colors.deepPurpleAccent,
    automaticallyImplyLeading: false,
  );
}


class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getMyAppBar2(context),
      body: Column(
        children: [
          getTextFormField(Icon(Icons.account_circle), 'Usuário', true),
          getTextFormField(Icon(Icons.vpn_key), 'Senha atual *', true),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Enviar')));
                }
              },
              child: Text('Enviar'),
            ),
          ),
        ],
      )    
    );
  }

}
