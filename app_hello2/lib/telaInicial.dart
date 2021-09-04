import 'package:flutter/material.dart';

telaInicial() {
  return Scaffold(
    appBar: AppBar(
      title: Text("Bem vindo, inferno."),
    ),
    body: Container(
      color: Colors.white,
      child:  Center(
        child: Text('Puta merda qq ta acontecendo',
          style: TextStyle(
            fontSize: 25,
            color: Colors.green
          ),
        )

    ),
    ),
    drawer: Container(
      color: Colors.green,
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
    ),
  );
}

