import 'package:flutter/material.dart';
import 'package:bate_ponto_frontend/view/Common.dart';

class Cidade extends StatefulWidget {
  // String date;
  Cidade({Key key}) : super(key: key);

  @override
  _CidadeState createState() => _CidadeState();
}

AppBar getMyAppBar2(){
  return AppBar(
    title: getMyText("Alterar a senha", 36),
    backgroundColor: Colors.deepPurpleAccent,
    actions: <Widget>[
    ],
  );
}


class _CidadeState extends State<Cidade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getMyAppBar2(),
      /*
      body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
        */
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
//          defaultColumnWidth:
//              FixedColumnWidth(MediaQuery.of(context).size.width / 3),
          border: TableBorder.all(
              color: Colors.black26, width: 1, style: BorderStyle.none),
          children: [
            TableRow(children: [
              TableCell(child: Center(child: Text('Title'))),
              TableCell(
                child: Center(child: Text('Title')),
              ),
              TableCell(child: Center(child: Text('Title'))),
              TableCell(child: Center(child: Text('Title'))),
            ]),
            TableRow(children: [
              TableCell(
                child: Center(child: Text('Value')),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('Value')),
              ),
              TableCell(
                  child: Center(
                      child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ValueaaValueaaValueaaValueaaValueaaValueaaValueaa',
                  style: TextStyle(color: Colors.yellow),
                ),
              ))),
              TableCell(
                child: Center(child: Text('Value')),
                verticalAlignment: TableCellVerticalAlignment.top,
              ),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('Value'))),
              TableCell(
                child: Center(child: Text('Value')),
              ),
              TableCell(child: Center(child: Text('Value'))),
              TableCell(child: Center(child: Text('Value'))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('Value'))),
              TableCell(
                child: Center(child: Text('Value')),
              ),
              TableCell(child: Center(child: Text('Value'))),
              TableCell(child: Center(child: Text('Value'))),
            ])
          ],
        ),
      ),        
    );
  }
}
