import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  TelaEmpresa({Key key}) : super(key: key);

  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sobre a empresa",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange
                      )
                    )
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas urna urna, convallis at lobortis nec, blandit sed arcu. Morbi non metus at est tempus sagittis at in nulla. Morbi nulla sem, suscipit vitae imperdiet vitae, egestas id enim. Proin fringilla egestas dignissim. Nullam porttitor scelerisque sem, a hendrerit augue efficitur at. Praesent auctor, orci ut lobortis viverra, dui lorem sagittis eros, blandit ornare odio sem vitae risus. Nam neque ante, laoreet quis pretium eu, varius vitae ante. Donec in lacus eu tortor porta pulvinar et sed nibh. Nunc porttitor luctus eros eget pulvinar. Nulla nec nibh vitae turpis dictum dignissim quis eu est. Phasellus rhoncus ut augue vel bibendum. Duis elit tellus, pulvinar nec metus id, tincidunt rutrum ex. Mauris tincidunt libero a ligula tempor condimentum. Donec pulvinar pretium eros, ut consectetur quam sodales at."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas urna urna, convallis at lobortis nec, blandit sed arcu. Morbi non metus at est tempus sagittis at in nulla. Morbi nulla sem, suscipit vitae imperdiet vitae, egestas id enim. Proin fringilla egestas dignissim. Nullam porttitor scelerisque sem, a hendrerit augue efficitur at. Praesent auctor, orci ut lobortis viverra, dui lorem sagittis eros, blandit ornare odio sem vitae risus. Nam neque ante, laoreet quis pretium eu, varius vitae ante. Donec in lacus eu tortor porta pulvinar et sed nibh. Nunc porttitor luctus eros eget pulvinar. Nulla nec nibh vitae turpis dictum dignissim quis eu est. Phasellus rhoncus ut augue vel bibendum. Duis elit tellus, pulvinar nec metus id, tincidunt rutrum ex. Mauris tincidunt libero a ligula tempor condimentum. Donec pulvinar pretium eros, ut consectetur quam sodales at."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas urna urna, convallis at lobortis nec, blandit sed arcu. Morbi non metus at est tempus sagittis at in nulla. Morbi nulla sem, suscipit vitae imperdiet vitae, egestas id enim. Proin fringilla egestas dignissim. Nullam porttitor scelerisque sem, a hendrerit augue efficitur at. Praesent auctor, orci ut lobortis viverra, dui lorem sagittis eros, blandit ornare odio sem vitae risus. Nam neque ante, laoreet quis pretium eu, varius vitae ante. Donec in lacus eu tortor porta pulvinar et sed nibh. Nunc porttitor luctus eros eget pulvinar. Nulla nec nibh vitae turpis dictum dignissim quis eu est. Phasellus rhoncus ut augue vel bibendum. Duis elit tellus, pulvinar nec metus id, tincidunt rutrum ex. Mauris tincidunt libero a ligula tempor condimentum. Donec pulvinar pretium eros, ut consectetur quam sodales at."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas urna urna, convallis at lobortis nec, blandit sed arcu. Morbi non metus at est tempus sagittis at in nulla. Morbi nulla sem, suscipit vitae imperdiet vitae, egestas id enim. Proin fringilla egestas dignissim. Nullam porttitor scelerisque sem, a hendrerit augue efficitur at. Praesent auctor, orci ut lobortis viverra, dui lorem sagittis eros, blandit ornare odio sem vitae risus. Nam neque ante, laoreet quis pretium eu, varius vitae ante. Donec in lacus eu tortor porta pulvinar et sed nibh. Nunc porttitor luctus eros eget pulvinar. Nulla nec nibh vitae turpis dictum dignissim quis eu est. Phasellus rhoncus ut augue vel bibendum. Duis elit tellus, pulvinar nec metus id, tincidunt rutrum ex. Mauris tincidunt libero a ligula tempor condimentum. Donec pulvinar pretium eros, ut consectetur quam sodales at."
                )
              )
            ]
          )
        )
      )
    );
  }
}