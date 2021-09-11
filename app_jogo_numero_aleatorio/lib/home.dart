import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String InfoResultado = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      backgroundColor: Colors.white,
    );
  }

  _appBar() {
    return AppBar(
      title: Text("Jogo do número aleatório"),
      centerTitle: true,
      backgroundColor: Colors.greenAccent,
    );
  }

  _body() {
    return SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _imagemNumeroAleatorio(),
              _textoNumeroAleatorio(),
              _botaoGerarNumeroAleatorio(),
              _resultado(),

            ]));
  }


  _imagemNumeroAleatorio() {
    return Center(
     child: Image.asset('images/ponto-interrogacao.jpg',
      height: 150,
      width: 150,
     )
    );
  }

  _textoNumeroAleatorio() {
    return Text(
      'Pense em um número de 0 a 10 e clique em descobrir.',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 35.0),
    );
  }


  _botaoGerarNumeroAleatorio() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 35.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _gerarNumeroAleatorio,
          child: Text("Descobrir",
              style: TextStyle(color: Colors.white, fontSize: 35.0)),
          color: Colors.blueAccent,
        ),
      ),
    );
  }

  _resultado() {
    return Text(
      InfoResultado,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 35.0),
    );
  }


  void _gerarNumeroAleatorio() {
    setState(() {
      int numero = new Random().nextInt(10);
      InfoResultado = numero.toString();
    });
  }
}