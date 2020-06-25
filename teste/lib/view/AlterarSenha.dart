import 'package:flutter/material.dart';
import 'package:bate_ponto_frontend/view/Common.dart';
import 'package:bate_ponto_frontend/view/drawer/Drawer.dart';

class AlterarSenha extends StatefulWidget {
  String date;
  AlterarSenha(this.date, {Key key}) : super(key: key);

  @override
  _AlterarSenhaState createState() => _AlterarSenhaState();
}

AppBar getMyAppBar2(){
  return AppBar(
    title: getMyText("Alterar a senha", 36),
    backgroundColor: Colors.deepPurpleAccent,
    actions: <Widget>[
    ],
  );
}


class _AlterarSenhaState extends State<AlterarSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getMyAppBar2(),
      body: MyCustomForm(),
      floatingActionButton: getMyFloatingActionButton(context),
    );
  }

  FloatingActionButton getMyFloatingActionButton(context){
    return new FloatingActionButton(
      onPressed: () => { },
      child: Icon(Icons.add),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  /**
   * campos:
   * empresa, empresa parceira
   * nome, usuário
   * senha atual
   * nova senha
   * confirmacao senha
   *  TextFormField( validator: (value) { if (value.isEmpty) { return 'Please enter some text'; } return null; }, ),
   */
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'What do people call you?',
              labelText: 'Empresa *',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.contains('@') ? 'Do not use the @ char.' : null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'What do people call you?',
              labelText: 'Senha atual *',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.contains('@') ? 'Do not use the @ char.' : null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'What do people call you?',
              labelText: 'Nova senha *',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.contains('@') ? 'Do not use the @ char.' : null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'What do people call you?',
              labelText: 'Confirmação de senah atual *',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.contains('@') ? 'Do not use the @ char.' : null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}