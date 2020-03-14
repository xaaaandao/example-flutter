import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FloatingActionbutton"
        )
      ),
      body: Text("Conteúdo"),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // floatingActionButton: FloatingActionButton(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 6,
        /*
        mini: true,
        child: Icon(Icons.add),
        onPressed: (){
          print("Resultado pressionado");
        }
        */
        icon: Icon(Icons.add_shopping_cart),
        label: Text("Adicionar"),
        /*
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(0)
        ),
        */
      ),
      bottomNavigationBar: BottomAppBar(
        // shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu),
            )
          ],
        ),
      ),
    );
  }
}