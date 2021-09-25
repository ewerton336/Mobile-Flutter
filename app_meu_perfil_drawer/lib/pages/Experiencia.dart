import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [_texto('T2S Tecnologia'),
        _texto('Analista de Sistemas Full Stack\n'),
        _texto('Prefeitura de\n Praia Grande'),
        _texto('Agente Administrativo\n'),
      ],
    ));
  }





  _texto(String valor) {
    return Text(
      valor,
      style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
