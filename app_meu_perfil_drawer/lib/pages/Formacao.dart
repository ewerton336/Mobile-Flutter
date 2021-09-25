import 'package:flutter/material.dart';

class Formacao extends StatelessWidget {
  const Formacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [_texto('Gestão Empresarial (2018)'),
        _texto('Fatec Praia Grande\n'),
        _texto('MBA em Segurança \nda Informação (2021)'),
        _texto('Descomplica pós\n'),
        _texto('Análise e Desenvolvimento \nde Sistemas (Previsão 2022)'),
        _texto('Fatec Praia Grande')

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
