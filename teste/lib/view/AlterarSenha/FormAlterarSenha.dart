import 'package:flutter/material.dart';

class FormAlterarSenha extends StatefulWidget {
  @override
  FormAlterarSenhaState createState() {
    return FormAlterarSenhaState();
  }
}

class FormAlterarSenhaState extends State<FormAlterarSenha> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          getTextFormField(Icon(Icons.work), 'Empresa', false),
          getTextFormField(Icon(Icons.work), 'Empresa Parceira', false),
          getTextFormField(Icon(Icons.person), 'Nome', false),
          getTextFormField(Icon(Icons.account_circle), 'Usuário', false),
          getTextFormField(Icon(Icons.vpn_key), 'Senha atual *', true),
          getTextFormField(Icon(Icons.vpn_key), 'Nova senha *', true),
          getTextFormField(Icon(Icons.vpn_key), 'Confirmação de senha *', true),
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
      ),
    );
  }
}

TextFormField getTextFormField(Icon i, String label, bool enabled){
  return new TextFormField(
    decoration: InputDecoration(
      icon: i,
      labelText: label,
    ),
    /* Os dois seguintes funcionam como type=pasword */
    autofocus: false,
    obscureText: true,
    enabled: enabled,
    onSaved: (String value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
    },
      validator: (String value) {
        return value.contains('@') ? 'Do not use the @ char.' : null;
      },
  );
}