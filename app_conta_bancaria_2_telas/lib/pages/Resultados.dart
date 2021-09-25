import 'package:flutter/material.dart';

class Resultados extends StatelessWidget {
  String nome;
  double idade;
  String sexo;
  String escolaridade;
  double limite;
  String nacionalidade;

  Resultados(
      {required this.nome,
      required this.idade,
      required this.sexo,
      required this.escolaridade,
      required this.limite,
      required this.nacionalidade});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      _texto('Nome: $nome'),
      _texto('Idade: $idade.toString()'),
      _texto('Sexo: $sexo'),
      _texto('Escolaridade: $escolaridade'),
      _texto('Limite Desejado: $limite'),
      _texto('Nacionalidade: $nacionalidade'),
      RaisedButton(
        child: Text('Voltar'),
        onPressed: () => _onClickVoltar(context),
      )
    ]));
  }

  _texto(String valor) {
    return Text(
      valor,
      style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context);
  }
}
