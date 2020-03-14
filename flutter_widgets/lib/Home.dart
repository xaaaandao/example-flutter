import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _lista = ["Ronaldo", "brilha", "muito", "no", "TIMÃO"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _lista.length,
              itemBuilder: (context, index) {

                final item = _lista[index];

                return Dismissible(
                  background: Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        )
                      ],
                    )
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.delete,
                          color: Colors.white,
                        )
                      ],
                    )
                  ),
                  // direction: DismissDirection.endToStart,
                  onDismissed: (direction){
                    // print(direction);
                    if (direction == DismissDirection.endToStart){
                      
                    } else if (direction == DismissDirection.startToEnd){

                    }
                    setState(() {
                      _lista.removeAt(index);
                    });
                  },
                  key: Key( item ),
                  child: ListTile(
                    title: Text(item),
                  )
                );
              },
            ),
          )
        ],
      )
    );
  }
}