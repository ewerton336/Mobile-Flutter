import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController usuarioController = TextEditingController();
  String info_github = '';
  String link_foto_github = '';

  _recuperarCep() async {
    String url = 'https://api.github.com/users/${usuarioController.text}';

    print(url);

    http.Response response = await http.get(Uri.parse(url));



      Map<String, dynamic> retorno = json.decode(response.body);

    if (retorno['id'] == null)
    {
      info_github = 'Dados não encontrados';
      link_foto_github = '';
    }
    else{
      link_foto_github = retorno ['avatar_url'];
      String id = retorno['id'].toString();
      String nome = retorno['name'];
      String repositorios = retorno['public_repos'].toString();
      String criadoEm = retorno['created_at'].toString();
      String seguidores = retorno['followers'].toString();
      String seguindo = retorno['following'].toString();
      info_github =
      '\n ID: $id \n Nome: $nome \n Repositórios: $repositorios \n Criado em: $criadoEm \n Seguidores: $seguidores \n Seguindo: $seguindo';
    }

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consulta de perfil do Github"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Digite o usuário do Github",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
              controller: usuarioController,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: _recuperarCep,
                  child: Text("Obter perfil",
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  color: Colors.blue,
                ),
              ),
            ),
            Image.network(link_foto_github == '' ? 'https://cdn-icons-png.flaticon.com/512/25/25231.png' : link_foto_github, width: 150, height: 150,),
            Text(info_github,
                style: TextStyle(color: Colors.black, fontSize: 20.0)),
          ],
        ),
      ),
    );
  }
}
