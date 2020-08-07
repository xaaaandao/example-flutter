import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
  )
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _recuperaBancoDeDados() async{
    final caminhoBancoDeDados = await getDatabasesPath();
    final localBancoDados = join(caminhoBancoDeDados, "banco.db");

    var retorno = await openDatabase(
      localBancoDados,
      version: 1,
      onCreate: (db, dbVersaoRecente){
        String sql = "CREATE TABLE usuarios (id INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR, idade INTEGER)";
        db.execute(sql);
      }
    );

    print("aberto " + retorno.isOpen.toString());
  }
  
  _salvar() async {
    Database bd = await this._recuperaBancoDeDados();

    Map<String, dynamic> dadosUsuario = {
          "nome": "Alexandre",
          "idade": 15
    };
    int id = await bd.insert("usuarios", dadosUsuario);
    print("Salvo: $id");

  }

  _listarUsuarios() async {
    Database bd = await this._recuperaBancoDeDados();

    // String sql = await bd.rawQuery("SELECT * FROM USUARIOS WHERE idade = 58");
    // String sql = await bd.rawQuery("SELECT * FROM USUARIOS WHERE idade >= 30 AND idade = 58");
    // String sql = await bd.rawQuery("SELECT * FROM USUARIOS WHERE idade BETWEEN 30 AND 50");
    // String sql = await bd.rawQuery("SELECT * FROM USUARIOS WHERE idade IN (18, 30)");
    // String filtro = "an";
    // String sql = await bd.rawQuery("SELECT * FROM USUARIOS WHERE LIKE '%" + filtro + "%'");
    // String sql = "SELECT * FROM USUARIOS WHERE 1=1 ORDER BY UPPER(nome) ASC";
    String sql = "SELECT * FROM USUARIOS WHERE 1=1 ORDER BY UPPER(nome) DESC";

    List usuarios = await bd.rawQuery(sql);

    // print("Usuario: " + usuarios.toString());

    for (var usuario in usuarios) {
      print("item id: " + usuario['id'].toString() +
            "nome: " + usuario['nome'] +
            "idade" + usuario['idade'].toString()); 
    } 
  }
  
  _listarUsuarioPeloId(int id) async {
    Database bd = await _recuperaBancoDeDados();

    List usuarios = await bd.query(
      "usuarios",
      columns: ["id", "nome", "idade"],
      where: "id = ?",
      whereArgs: [id]
    );

    for (var usuario in usuarios) {
      print("item id: " + usuario['id'].toString() +
            "nome: " + usuario['nome'] +
            "idade" + usuario['idade'].toString()); 
    } 
  }

  _excluirUsuario(int id) async {

    Database bd = await _recuperaBancoDeDados();

    bd.delete(
      "usuarios",
      where: "id = ?",
      whereArgs: [id]
    );
  }
  
  @override
  Widget build(BuildContext context) {
    _salvar();
    _listarUsuarios();
    _listarUsuarioPeloId(2);
    _excluirUsuario(2);
    return Scaffold();
  }
}